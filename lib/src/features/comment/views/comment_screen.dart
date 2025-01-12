import 'package:ezy_course_app/src/constants/assets/assets.dart';
import 'package:ezy_course_app/src/constants/design/border_radius.dart';
import 'package:ezy_course_app/src/constants/design/paddings.dart';
import 'package:ezy_course_app/src/constants/server/api_config.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/models/post_comment_response/post_comment_model.dart';
import 'package:ezy_course_app/src/features/comment/controllers/post_comment_controller.dart';
import 'package:ezy_course_app/src/features/news_feed/controllers/single_post_controller.dart';
import 'package:ezy_course_app/src/features/news_feed/views/widgets/reaction_button.dart';
import 'package:ezy_course_app/src/features/news_feed/views/widgets/stacked_icons.dart';
import 'package:ezy_course_app/src/services/app_theme/app_theme.dart';
import 'package:ezy_course_app/src/utilities/extensions/date_time_extensions.dart';
import 'package:ezy_course_app/src/utilities/extensions/size_utilities.dart';
import 'package:ezy_course_app/src/utilities/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readmore/readmore.dart';

class PostCommentPopUpScreen extends ConsumerWidget {
  static const route = "/comment";
  const PostCommentPopUpScreen({
    super.key,
    required this.feedId,
  });

  final int feedId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final postState = ref.watch(singlePostStateProvider(feedId));
    final commentState = ref.watch(postCommentProvider(feedId));
    return Align(
      alignment: Alignment.bottomCenter,
      child: Material(
        color: context.color.theme,
        borderRadius: const BorderRadius.only(topLeft: r12, topRight: r12),
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.sizeOf(context).height * 0.8),
          child: SizedBox.expand(
            child: Padding(
              padding: EdgeInsets.only(
                bottom: MediaQuery.viewInsetsOf(context).bottom,
              ),
              child: SafeArea(
                top: false,
                bottom: true,
                child: Column(
                  children: [
                    Padding(
                      padding: horizontal18 + vertical18,
                      child: Row(
                        children: [
                          StackedIcons(
                            itemsDimension: 19,
                            shiftPercentage: 0.25,
                            items: (postState.likeType ?? [])
                                .map(
                                  (e) => DecoratedBox(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: context.color.theme,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1),
                                      child: ReactionIcon(
                                        reaction: e.reactionType.reaction ??
                                            Reaction.like,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                          4.width,
                          Text(
                            () {
                              final currentLikeCount = postState.likeCount ?? 0;

                              String text = "$currentLikeCount Likes";
                              if (currentLikeCount != 0) {
                                text = "$currentLikeCount Others";
                              }
                              final hasMe = postState.like?.toReaction != null;
                              if (hasMe) {
                                text = "You and ${currentLikeCount - 1} other";
                              }
                              if (hasMe && currentLikeCount == 1) text = "You";
                              return text;
                            }(),
                            style: context.textTheme.bodySmall?.copyWith(
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                              color: context.color.opposite,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: commentState.when(
                        data: (data) {
                          return ListView.builder(
                            padding: horizontal18,
                            itemCount: data.length,
                            itemBuilder: (context, index) {
                              final item = data[index];
                              return SingleCommentWidget(comment: item);
                            },
                          );
                        },
                        error: (e, s) => Center(
                          child: Text(e.toString()),
                        ),
                        loading: () => const Center(
                          child: CircularProgressIndicator.adaptive(),
                        ),
                      ),
                    ),
                    Padding(
                      padding: (horizontal18 + vertical12),
                      child: WriteCommentWidget(feedId: feedId),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class WriteCommentWidget extends ConsumerStatefulWidget {
  const WriteCommentWidget({super.key, required this.feedId});

  final int feedId;

  @override
  ConsumerState<WriteCommentWidget> createState() => _WriteCommentWidgetState();
}

class _WriteCommentWidgetState extends ConsumerState<WriteCommentWidget> {
  late final _focus = FocusNode();
  late final _controller = TextEditingController();

  @override
  void dispose() {
    _focus.dispose();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final commentState = ref.watch(postCommentProvider(widget.feedId));
    final post = ref.watch(singlePostStateProvider(widget.feedId));
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(50)),
      child: DecoratedBox(
        decoration: const BoxDecoration(
          color: Color(0xfff2f2f2),
        ),
        child: SizedBox(
          height: 60,
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox.square(
                  dimension: 44,
                  child: Image.asset(ImageAssets.userCircular),
                ),
              ),
              Expanded(
                child: TextField(
                  focusNode: _focus,
                  controller: _controller,
                  decoration: const InputDecoration(
                    contentPadding: horizontal12,
                    hintText: "Write a Comment",
                  ),
                ),
              ),
              SizedBox(
                width: 60,
                child: DecoratedBox(
                  decoration: const BoxDecoration(
                    color: Color(0xff004852),
                  ),
                  child: SizedBox.expand(
                    child: Center(
                      child: (commentState.isLoading)
                          ? SizedBox.square(
                              dimension: 28,
                              child: CircularProgressIndicator.adaptive(
                                backgroundColor: context.color.accent,
                              ),
                            )
                          : IconButton(
                              onPressed: () async {
                                final notifier = ref.read(
                                    postCommentProvider(widget.feedId)
                                        .notifier);
                                final res = await notifier.postComment(
                                  _controller.text,
                                  widget.feedId,
                                  post.userId!,
                                );
                                if (res) {
                                  _controller.clear();
                                }
                              },
                              icon: SvgIcon(
                                IconAssets.sent,
                                color: context.color.accent,
                              ),
                            ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SingleCommentWidget extends StatelessWidget {
  const SingleCommentWidget({
    super.key,
    required this.comment,
  });

  final PostCommentModel comment;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: vertical6,
      child: Column(
        children: [
          Row(
            children: [
              SizedBox.square(
                dimension: 54,
                child: CircleAvatar(
                  foregroundImage: (comment.user?.profilePic != null &&
                          comment.user?.profilePic !=
                              APIConfig.placeholderImageLink)
                      ? NetworkImage(comment.user!.profilePic!)
                      : const AssetImage(ImageAssets.user),
                  backgroundImage: const AssetImage(ImageAssets.user),
                ),
              ),
              18.width,
              Expanded(
                child: Column(
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                        borderRadius: brA12,
                        color: context.color.secondaryText,
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding: all12,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    comment.user?.fullName ?? "",
                                    maxLines: 1,
                                    softWrap: true,
                                    style:
                                        context.textTheme.bodyMedium?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  6.height,
                                  ReadMoreText(
                                    comment.commentTxt ?? "",
                                    trimExpandedText: " show less",
                                    colorClickableText:
                                        context.color.secondaryAccent,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.more_horiz),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      children: [
                        18.width,
                        Text(_getCommentTimeText(comment.createdAt)),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: context.textTheme.bodyMedium,
                            foregroundColor: (comment.commentlike != null)
                                ? context.color.secondaryAccent
                                : null,
                          ),
                          onPressed: () {},
                          child: const Text("Like"),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                            textStyle: context.textTheme.bodyMedium,
                          ),
                          onPressed: () {},
                          child: const Text("Reply"),
                        ),
                        const Spacer(),
                        if ((comment.likeCount ?? 0) != 0) ...[
                          Text(
                            "${comment.likeCount ?? 0}",
                            style: context.textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          2.width,
                          StackedIcons(
                            itemsDimension: 17,
                            shiftPercentage: 0.25,
                            items: (comment.reactionTypes ?? [])
                                .take(3)
                                .map(
                                  (e) => DecoratedBox(
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: context.color.theme,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(1),
                                      child: ReactionIcon(
                                        reaction: e.reactionType.reaction ??
                                            Reaction.like,
                                        size: 16,
                                      ),
                                    ),
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  String _getCommentTimeText(DateTime? lastActivity) {
    if (lastActivity == null) return "";
    final text =
        DateTime.now().difference(lastActivity).adaptiveDurationStringShort;
    return text == "Just now" ? text : text;
  }
}
