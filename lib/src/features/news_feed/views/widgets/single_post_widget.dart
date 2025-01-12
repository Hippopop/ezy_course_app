import 'package:ezy_course_app/src/constants/assets/assets.dart';
import 'package:ezy_course_app/src/constants/design/border_radius.dart';
import 'package:ezy_course_app/src/constants/design/paddings.dart';
import 'package:ezy_course_app/src/constants/server/api_config.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/models/post_data/post_data.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/models/post_data/user.dart';
import 'package:ezy_course_app/src/features/news_feed/controllers/single_post_controller.dart';
import 'package:ezy_course_app/src/services/app_theme/app_theme.dart';
import 'package:ezy_course_app/src/utilities/extensions/date_time_extensions.dart';
import 'package:ezy_course_app/src/utilities/extensions/size_utilities.dart';
import 'package:ezy_course_app/src/features/news_feed/views/widgets/reaction_button.dart';
import 'package:ezy_course_app/src/utilities/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_linkify/flutter_linkify.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'stacked_icons.dart';

class SinglePostWidget extends ConsumerWidget {
  const SinglePostWidget({super.key, required this.post});
  final PostData post;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(singlePostStateProvider(post.id!));
    return Padding(
      padding: horizontal18 + vertical8,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          PostUserSection(
            user: state.user,
            createdAt: state.createdAt,
            moreClick: () {},
          ),
          const Divider(),
          if (post.feedTxt != null) ...[
            4.height,
            Linkify(
              text: post.feedTxt!,
              linkStyle: TextStyle(color: context.color.secondaryAccent),
            ),
            8.height,
          ],
          if (post.pic != null &&
              post.pic != APIConfig.placeholderImageLink) ...[
            8.height,
            Image.network(post.pic!),
            8.height,
          ],
          8.height,
          PostActivityRowWidget(state: state),
          12.height,
          PostInteractionRow(
            state: state,
            onCommentLick: () {},
            reactionChangeCallback: (current, newReaction) {
              final notifier = ref.read(
                singlePostStateProvider(post.id!).notifier,
              );
              notifier.triggerReaction(newReaction);
            },
          ),
          8.height,
        ],
      ),
    );
  }
}

class PostInteractionRow extends StatelessWidget {
  const PostInteractionRow({
    super.key,
    required this.state,
    required this.onCommentLick,
    required this.reactionChangeCallback,
  });

  final PostData state;
  final VoidCallback onCommentLick;
  final ReactionChangeCallback reactionChangeCallback;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              ReactionButton(
                currentReaction: state.like?.toReaction,
                defaultWidget: Padding(
                  padding: horizontal4 + vertical4,
                  child: Row(
                    children: [
                      SvgIcon(
                        IconAssets.thumbsUp,
                        size: 18,
                        color: context.color.secondaryAccent,
                      ),
                      8.width,
                      Text(
                        "Like",
                        style: context.textTheme.bodySmall?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: context.color.secondaryAccent,
                        ),
                      )
                    ],
                  ),
                ),
                onReactionChanged: reactionChangeCallback,
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              InkWell(
                borderRadius: brA4,
                onTap: onCommentLick,
                child: Padding(
                  padding: horizontal4 + vertical4,
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const SvgIcon(
                        IconAssets.comment,
                        size: 18,
                      ),
                      8.width,
                      Text(
                        "Comment",
                        style: context.textTheme.bodySmall?.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: context.color.opposite,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PostActivityRowWidget extends StatelessWidget {
  const PostActivityRowWidget({
    super.key,
    required this.state,
  });

  final PostData state;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              StackedIcons(
                itemsDimension: 19,
                shiftPercentage: 0.25,
                items: (state.likeType ?? [])
                    .map(
                      (e) => DecoratedBox(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: context.color.theme,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(1),
                          child: ReactionIcon(
                            reaction: e.reactionType.reaction ?? Reaction.like,
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
                  final currentLikeCount = state.likeCount ?? 0;
                  String text = "$currentLikeCount Other";
                  final hasMe = state.like?.toReaction != null;
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
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: horizontal4 + vertical4,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const SvgIcon(
                      IconAssets.commentOutline,
                      size: 16,
                    ),
                    8.width,
                    Text(
                      "${state.commentCount ?? 0} Comment",
                      style: context.textTheme.bodySmall?.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: context.color.opposite,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class PostUserSection extends StatelessWidget {
  const PostUserSection({
    super.key,
    this.user,
    this.createdAt,
    this.moreClick,
  });
  final User? user;
  final DateTime? createdAt;
  final VoidCallback? moreClick;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: vertical6,
      child: AspectRatio(
        aspectRatio: 390 / 35,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              foregroundImage: (user?.profilePic != null &&
                      user?.profilePic != APIConfig.placeholderImageLink)
                  ? NetworkImage(user!.profilePic!)
                  : const AssetImage(ImageAssets.user),
              backgroundImage: const AssetImage(ImageAssets.user),
            ),
            12.width,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    user?.fullName ?? "?.?.?",
                    style: context.textTheme.bodyMedium,
                  ),
                  Text(
                    _getMessageText(createdAt),
                    style: context.textTheme.bodySmall?.copyWith(
                      color: context.color.primaryText,
                    ),
                  )
                ],
              ),
            ),
            IconButton(
              onPressed: moreClick,
              icon: const Icon(Icons.more_vert),
            ),
          ],
        ),
      ),
    );
  }

  String _getMessageText(DateTime? lastActivity) {
    if (lastActivity == null) return "";
    final text = DateTime.now().difference(lastActivity).adaptiveDurationString;
    return text == "Just now" ? text : "$text ago";
  }
}
