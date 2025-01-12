import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:ezy_course_app/src/constants/assets/assets.dart';
import 'package:ezy_course_app/src/constants/design/border_radius.dart';
import 'package:ezy_course_app/src/constants/design/paddings.dart';
import 'package:ezy_course_app/src/services/app_theme/app_theme.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';

enum Reaction { like, love, care, haha, sad, wow, angry }

extension APISync on Reaction? {
  String? get api => this?.name.toUpperCase();
}

extension APPSync on String? {
  Reaction? get reaction => Reaction.values
      .firstWhereOrNull((e) => e.name.toUpperCase() == this?.toUpperCase());
}

typedef ReactionChangeCallback = void Function(
  Reaction? current,
  Reaction newReaction,
);

class ReactionButton extends StatefulWidget {
  const ReactionButton({
    super.key,
    this.currentReaction,
    this.onReactionChanged,
    required this.defaultWidget,
  });
  final Widget defaultWidget;
  final Reaction? currentReaction;
  final ReactionChangeCallback? onReactionChanged;

  @override
  State<ReactionButton> createState() => _ReactionButtonState();
}

class _ReactionButtonState extends State<ReactionButton> {
  Future<Reaction?> showCustomDialogue(
      double left, double top, double width) async {
    return showDialog<Reaction?>(
      context: context,
      useSafeArea: false,
      useRootNavigator: true,
      builder: (context) => Material(
        type: MaterialType.transparency,
        child: Stack(
          children: [
            Positioned(
              left: left,
              top: top,
              child: ReactionRowWidget(
                current: widget.currentReaction,
                onSelect: (item) => Navigator.of(context).pop(item),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget reaction;

    if (widget.currentReaction != null) {
      reaction = IconButton(
        padding: emptyInset,
        visualDensity: VisualDensity.compact,
        icon: ReactionIcon(reaction: widget.currentReaction!),
        onPressed: () => widget.onReactionChanged
            ?.call(widget.currentReaction, Reaction.like),
      );
    } else {
      reaction = InkWell(
        onTap: () => widget.onReactionChanged
            ?.call(widget.currentReaction, Reaction.like),
        borderRadius: brA4,
        child: widget.defaultWidget,
      );
    }

    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onLongPressStart: (details) async {
        final screenWidth = MediaQuery.of(context).size.width;
        double left = details.globalPosition.dx - 20;
        double top = details.globalPosition.dy - 60;
        if (left > (screenWidth * 0.2)) {
          left = screenWidth * 0.2;
        }
        double width = screenWidth - left;
        final item = await showCustomDialogue(left, top, width);
        if (item != null) {
          widget.onReactionChanged?.call(widget.currentReaction, item);
        }
      },
      child: reaction,
    );
  }
}

class ReactionRowWidget extends StatelessWidget {
  const ReactionRowWidget({
    super.key,
    this.current,
    required this.onSelect,
  });

  final Reaction? current;
  final ValueChanged<Reaction> onSelect;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: const StadiumBorder(),
      child: SizedBox(
        height: 48,
        child: ListView.builder(
          shrinkWrap: true,
          padding: horizontal4 + vertical6,
          scrollDirection: Axis.horizontal,
          itemCount: Reaction.values.length,
          itemBuilder: (BuildContext context, int index) {
            final double offset = 10 + index * 5;
            final option = Reaction.values[index];
            Widget button = IconButton(
              onPressed: () => onSelect(option),
              icon: ReactionIcon(
                size: 32,
                reaction: option,
              ),
            );
            if (option == current) {
              button = DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.color.opposite.withOpacity(0.1),
                ),
                child: button,
              );
            }
            return AnimationConfiguration.staggeredList(
              position: index,
              duration: Durations.short3,
              child: SlideAnimation(
                verticalOffset: offset,
                child: FadeInAnimation(child: button),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ReactionIcon extends StatelessWidget {
  const ReactionIcon({
    super.key,
    this.size = 24,
    required this.reaction,
  });
  final double size;
  final Reaction reaction;

  @override
  Widget build(BuildContext context) {
    String path = switch (reaction) {
      Reaction.like => IconAssets.like,
      Reaction.love => IconAssets.love,
      Reaction.care => IconAssets.care,
      Reaction.haha => IconAssets.haha,
      Reaction.sad => IconAssets.sad,
      Reaction.wow => IconAssets.wow,
      Reaction.angry => IconAssets.angry,
    };
    return SizedBox.square(
      dimension: size,
      child: FittedBox(
        fit: BoxFit.cover,
        child: Image.asset(
          path,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
