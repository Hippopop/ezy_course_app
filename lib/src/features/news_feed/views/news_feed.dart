import 'dart:async';

import 'package:ezy_course_app/src/constants/assets/assets.dart';
import 'package:ezy_course_app/src/constants/design/border_radius.dart';
import 'package:ezy_course_app/src/constants/design/paddings.dart';
import 'package:ezy_course_app/src/features/create_post/views/create_post_screen.dart';
import 'package:ezy_course_app/src/features/news_feed/controllers/post_feed_controller.dart';
import 'package:ezy_course_app/src/features/news_feed/views/widgets/logout_confirmation.dart';
import 'package:ezy_course_app/src/services/app_theme/app_theme.dart';
import 'package:ezy_course_app/src/services/authentication/authentication_service.dart';
import 'package:ezy_course_app/src/utilities/extensions/size_utilities.dart';
import 'package:ezy_course_app/src/utilities/widgets/svg_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

import 'widgets/single_post_widget.dart';

class NewsFeedScreen extends ConsumerStatefulWidget {
  static const route = "/news_feed";
  const NewsFeedScreen({super.key});

  @override
  ConsumerState<NewsFeedScreen> createState() => _NewsFeedScreenState();
}

class _NewsFeedScreenState extends ConsumerState<NewsFeedScreen> {
  Timer? _bouncer;
  late final _scrollController = ScrollController();
  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_onScrollListener);
  }

  void _onScrollListener() {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    const delta = 200.0;
    if (maxScroll - currentScroll <= delta) {
      if (!(_bouncer?.isActive ?? false)) {
        _bouncer = Timer.periodic(
          const Duration(milliseconds: 800),
          (timer) => timer.cancel(),
        );
        ref.read(postFeedStateProvider.notifier).loadMoreData();
      }
    }
  }

  @override
  void dispose() {
    _scrollController.removeListener(_onScrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(postFeedStateProvider);
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(),
      appBar: AppBar(
        titleSpacing: 8,
        leading: Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Center(
            child:
                SvgIcon(IconAssets.menu, size: 32, color: context.color.theme),
          ),
        ),
        title: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Python Developer Community'),
            4.height,
            Text(
              '#General',
              style: context.textTheme.bodySmall?.copyWith(
                color: context.color.theme.withOpacity(0.7),
              ),
            ),
          ],
        ),
      ),
      body: RefreshIndicator.adaptive(
        onRefresh: () async => ref.invalidate(postFeedStateProvider),
        child: CustomScrollView(
          controller: _scrollController,
          slivers: [
            SliverPadding(
              padding: horizontal18 + vertical20,
              sliver: SliverToBoxAdapter(
                child: InkWell(
                  borderRadius: brA8,
                  onTap: () async {
                    final res =
                        await context.push(CreatePostScreen.route) as bool?;
                    if (res ?? false) {
                      ref.invalidate(postFeedStateProvider);
                    }
                  },
                  child: const IgnorePointer(
                    ignoring: true,
                    child: _WritePostCard(),
                  ),
                ),
              ),
            ),
            ...state.when<List<Widget>>(
              data: (data) {
                return [
                  SliverList.builder(
                    itemCount: data.dataList.length,
                    itemBuilder: (context, index) {
                      return SinglePostWidget(post: data.dataList[index]);
                    },
                  ),
                  // if (data.isLoading)
                  SliverToBoxAdapter(
                    child: SizedBox(
                      height: 120,
                      width: double.infinity,
                      child: Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox.square(
                              dimension: 40,
                              child: CircularProgressIndicator.adaptive(),
                            ),
                            24.width,
                            const Text("Loading More Posts..."),
                          ],
                        ),
                      ),
                    ),
                  ),
                ];
              },
              error: (e, s) => [
                SliverFillRemaining(
                  child: Center(
                    child: Text(
                      e.toString(),
                    ),
                  ),
                ),
              ],
              loading: () => [
                const SliverFillRemaining(
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _WritePostCard extends StatelessWidget {
  const _WritePostCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: brA8,
        side: BorderSide(
          color: context.color.primary.withOpacity(0.2),
        ),
      ),
      margin: emptyInset,
      child: AspectRatio(
        aspectRatio: 390 / 84,
        child: Padding(
          padding: all12,
          child: Row(
            children: [
              ClipRRect(
                borderRadius: brA8,
                child: Image.asset(ImageAssets.user),
              ),
              Expanded(
                child: Center(
                  child: Text(
                    "Write something here...",
                    style: context.textTheme.bodyLarge
                        ?.copyWith(color: context.color.text.withOpacity(0.5)),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text("Post"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      return BottomNavigationBar(
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: context.color.primary,
        unselectedItemColor: context.color.primary,
        onTap: (value) async {
          if (value == 1) {
            final res = await showDialog<bool>(
              context: context,
              builder: (context) => const ConfirmationDialog(),
            );
            if (res ?? false) {
              final authNotifier = ref.read(authStateProvider.notifier);
              await authNotifier.logout();
            }
          }
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Community',
            icon: Padding(
              padding: vertical4,
              child: SvgIcon(IconAssets.community),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Logout',
            icon: Padding(
              padding: vertical4,
              child: SvgIcon(IconAssets.logout),
            ),
          ),
        ],
      );
    });
  }
}
