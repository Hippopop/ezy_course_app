import 'dart:developer';
import 'dart:math' as math;

import 'package:ezy_course_app/src/constants/design/border_radius.dart';
import 'package:ezy_course_app/src/constants/design/paddings.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/post_repository_impl.dart';
import 'package:ezy_course_app/src/services/app_theme/app_theme.dart';
import 'package:ezy_course_app/src/utilities/extensions/size_utilities.dart';
import 'package:ezy_course_app/src/utilities/overlays/loading_overlay.dart';
import 'package:ezy_course_app/src/utilities/scaffold_utils/snackbar_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class CreatePostScreen extends StatefulWidget {
  static const route = "/create_post";
  const CreatePostScreen({super.key});

  @override
  State<CreatePostScreen> createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  late final TextEditingController _controller = TextEditingController();
  late final FocusNode _focus = FocusNode();
  @override
  void dispose() {
    _focus.dispose();
    _controller.dispose();
    super.dispose();
  }

  int? currentGrad;

  _createPost(BuildContext context, WidgetRef ref) async {
    if (_controller.text.isEmpty) return;
    final controller = OverlayLoader.instance;
    controller.show(context: context, text: "Loading...");
    final repo = ref.read(postRepositoryProvider);
    try {
      final res = await repo.createPost(
        post: _controller.text,
        gradientIndex: currentGrad,
      );
      controller.hide();
      if (res.isSuccess) {
        if (context.mounted) {
          context.pop(true);
          showToastSuccess("Your post created successfully!");
        } else {
          showToastError(res.error!, "Post Creation Failed!");
        }
      } else {}
    } catch (e, s) {
      log("## Create Post Error ##", error: e, stackTrace: s);
      controller.hide();
      showToastError(e.toString(), "Post Creation Failed!");
    } finally {
      controller.hide();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: horizontal18,
          child: Column(
            children: [
              12.height,
              Consumer(
                builder: (_, ref, child) {
                  return ActionButtonRow(
                    onCreate: () => _createPost(context, ref),
                  );
                },
              ),
              12.height,
              PostTextField(focus: _focus, controller: _controller),
              12.height,
              GradientBoxSelectionWidget(
                onSelect: (value) {
                  setState(() {
                    currentGrad = value == currentGrad ? null : value;
                  });
                },
                selectedIndex: currentGrad,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class GradientBoxSelectionWidget extends StatefulWidget {
  const GradientBoxSelectionWidget({
    super.key,
    required this.onSelect,
    required this.selectedIndex,
  });
  final int? selectedIndex;
  final ValueChanged<int> onSelect;

  static List<LinearGradient> $gradientList = const [
    LinearGradient(
      begin: Alignment(-1.0, 0.0),
      end: Alignment(1.0, 0.0),
      transform: GradientRotation(90),
      colors: [
        Color(0xFFFFFFFF),
        Color(0xFFFFFFFF),
      ],
    ),
    LinearGradient(
      begin: Alignment(-1.0, 0.0),
      end: Alignment(1.0, 0.0),
      transform: GradientRotation(90),
      colors: [
        Color(0xFFff00ea),
        Color(0xFFff7300),
      ],
    ),
    LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      transform: GradientRotation(-135),
      colors: [
        Color.fromRGBO(72, 229, 169, 1),
        Color.fromRGBO(143, 199, 173, 1),
      ],
    ),
    LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color.fromRGBO(116, 167, 126, 1),
        Color.fromRGBO(24, 175, 78, 1),
      ],
    ),
    LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFff7f11),
        Color(0xFFff7f11),
      ],
    ),
    LinearGradient(
      begin: Alignment(-1.0, 0.0),
      end: Alignment(1.0, 0.0),
      transform: GradientRotation(90),
      colors: [
        Color(0xFF00ffe1),
        Color(0xFFe9ff42),
      ],
    )
  ];

  @override
  State<GradientBoxSelectionWidget> createState() =>
      _GradientBoxSelectionWidgetState();
}

class _GradientBoxSelectionWidgetState
    extends State<GradientBoxSelectionWidget> {
  bool _isOpen = true;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          padding: emptyInset,
          visualDensity: VisualDensity.compact,
          onPressed: () {
            setState(() {
              _isOpen = !_isOpen;
            });
          },
          icon: const Card(
            margin: emptyInset,
            child: SizedBox.square(
              dimension: 26,
              child: Icon(
                size: 20,
                Icons.arrow_forward_ios_rounded,
              ),
            ),
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 26,
            child: LayoutBuilder(builder: (context, constraints) {
              return Stack(
                children: [
                  if (widget.selectedIndex != null)
                    AnimatedPositioned(
                      left: (_isOpen) ? widget.selectedIndex! * 34 : 0,
                      duration: Durations.medium3,
                      child: Padding(
                        padding: horizontal4,
                        child: Visibility(
                          visible: !_isOpen,
                          child: SingleGradBoxCard(
                            isSelected: true,
                            gradientsColor: GradientBoxSelectionWidget
                                .$gradientList[widget.selectedIndex!],
                          ),
                        ),
                      ),
                    ),
                  AnimatedSize(
                    duration: Durations.medium3,
                    child: SizedBox(
                      width: _isOpen ? constraints.maxWidth : 0,
                      child: ListView.builder(
                        shrinkWrap: true,
                        padding: emptyInset,
                        scrollDirection: Axis.horizontal,
                        itemCount:
                            GradientBoxSelectionWidget.$gradientList.length,
                        itemBuilder: (context, index) => Padding(
                          padding: horizontal4,
                          child: InkWell(
                            onTap: () => widget.onSelect(index),
                            child: SingleGradBoxCard(
                              isSelected: widget.selectedIndex == index,
                              gradientsColor: GradientBoxSelectionWidget
                                  .$gradientList[index],
                            ),
                          ),
                        )
                        /* AnimationConfiguration.staggeredList(
                          position: index,
                          duration: Durations.medium4,
                          child: SlideAnimation(
                            horizontalOffset: (8 + (5 * index)).toDouble(),
                            child: Padding(
                              padding: horizontal4,
                              child: FadeInAnimation(
                                child: InkWell(
                                  onTap: () => widget.onSelect(index),
                                  child: SingleGradBoxCard(
                                    isSelected: widget.selectedIndex == index,
                                    gradientsColor: GradientBoxSelectionWidget
                                        .$gradientList[index],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ) */
                        ,
                      ),
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ],
    );
  }
}

class SingleGradBoxCard extends StatelessWidget {
  const SingleGradBoxCard({
    super.key,
    this.size = 26,
    this.isSelected = false,
    required this.gradientsColor,
  });
  final double size;
  final bool isSelected;
  final LinearGradient gradientsColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: emptyInset,
      clipBehavior: Clip.hardEdge,
      child: DecoratedBox(
        decoration: BoxDecoration(
          gradient: gradientsColor,
        ),
        child: SizedBox.square(
          dimension: size,
          child: isSelected
              ? Transform.rotate(
                  angle: math.pi / 6,
                  child: const Icon(
                    size: 20,
                    Icons.push_pin_outlined,
                  ),
                )
              : null,
        ),
      ),
    );
  }
}

class PostTextField extends StatelessWidget {
  const PostTextField(
      {super.key, required this.controller, required this.focus});

  final FocusNode focus;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 10,
      focusNode: focus,
      controller: controller,
      decoration: InputDecoration(
        fillColor: context.color.theme,
        hintText: "What's on your mind?",
        contentPadding: vertical16 + horizontal12,
        border: OutlineInputBorder(
          borderRadius: brA12,
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: brA12,
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: brA12,
          borderSide: BorderSide(color: Colors.grey.shade300),
        ),
      ),
    );
  }
}

class ActionButtonRow extends StatelessWidget {
  const ActionButtonRow({
    super.key,
    required this.onCreate,
  });

  final VoidCallback onCreate;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          onPressed: () => context.pop(),
          child: Text(
            "Cancel",
            style: context.textTheme.bodyMedium?.copyWith(
              color: Colors.grey.shade700,
            ),
          ),
        ),
        Expanded(
          child: Center(
            child: Text(
              "Create Post",
              style: context.textTheme.bodyMedium,
            ),
          ),
        ),
        TextButton(
          onPressed: onCreate,
          child: Text(
            "Create",
            style: context.textTheme.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
              color: context.color.secondaryAccent,
            ),
          ),
        ),
      ],
    );
  }
}
