import 'package:ezy_course_app/src/constants/design/paddings.dart';
import 'package:ezy_course_app/src/services/app_theme/app_theme.dart';
import 'package:ezy_course_app/src/utilities/extensions/size_utilities.dart';
import 'package:flutter/material.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: horizontal18,
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: all12.copyWith(bottom: 0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              12.height,
              Text(
                "Logout",
                style: context.textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
              12.height,
              const Padding(
                padding: horizontal20,
                child: Text(
                  "Are you sure, you want to log out?",
                  textAlign: TextAlign.center,
                ),
              ),
              18.height,
              const Divider(
                thickness: 1,
                height: 1,
              ),
              IntrinsicHeight(
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          8.height,
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: Text(
                              "Yes",
                              style: TextStyle(
                                color: context.color.secondaryAccent,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          8.height,
                        ],
                      ),
                    ),
                    const VerticalDivider(thickness: 1),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          8.height,
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: const Text(
                              "No",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          8.height,
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
