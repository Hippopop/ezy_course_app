import 'package:ezy_course_app/src/constants/assets/assets.dart';
import 'package:ezy_course_app/src/constants/design/border_radius.dart';
import 'package:ezy_course_app/src/constants/design/paddings.dart';
import 'package:ezy_course_app/src/features/authentication/controller/authentication_controller.dart';
import 'package:ezy_course_app/src/services/app_theme/app_theme.dart';
import 'package:ezy_course_app/src/utilities/extensions/size_utilities.dart';
import 'package:ezy_course_app/src/utilities/scaffold_utils/snackbar_util.dart';
import 'package:ezy_course_app/src/utilities/tools/form_validator_helper.dart';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late final _formKey = GlobalKey<FormState>();
  late final FocusNode _emailFocusNode = FocusNode();
  late final FocusNode _passwordFocusNode = FocusNode();
  late final TextEditingController _emailController = TextEditingController();
  late final TextEditingController _passwordController =
      TextEditingController();
  bool _isObscured = true;
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          children: [
            const Positioned.fill(
              child: _LoginScreenBg(),
            ),
            Column(
              children: [
                const Expanded(
                  flex: 5,
                  child: _TopLogoSection(),
                ),
                Expanded(
                  flex: 5,
                  child: _LoginFormBg(
                    child: SafeArea(
                      top: false,
                      bottom: true,
                      child: Padding(
                        padding: horizontal18,
                        child: Center(
                          child: Consumer(builder: (context, ref, child) {
                            final state = ref.watch(loginStateProvider);
                            ref.listen(loginStateProvider, (prev, state) {
                              state.when(
                                data: (data) {
                                  if (data == null) return;
                                  _emailController.text = data.email;
                                  _passwordController.text = data.password;
                                },
                                error: (e, s) {
                                  showToastError(
                                      e.toString(), "Authorization Error!");
                                },
                                loading: () {},
                              );
                            });

                            return SingleChildScrollView(
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    18.height,
                                    Center(
                                      child: Text(
                                        "Sign In",
                                        style: context.textTheme.headlineMedium
                                            ?.copyWith(
                                          color: context.color.theme,
                                        ),
                                      ),
                                    ),
                                    20.height,
                                    _LoginFormField(
                                      title: "Email",
                                      hintText: "Enter your email",
                                      validators: [isRequired, isEmail],
                                      focusNode: _emailFocusNode,
                                      controller: _emailController,
                                    ),
                                    19.height,
                                    _LoginFormField(
                                      isObscured: _isObscured,
                                      title: "Password",
                                      hintText: "Enter your password",
                                      focusNode: _passwordFocusNode,
                                      controller: _passwordController,
                                      validators: [isRequired, tooShort6],
                                      trailingIcon: IconButton(
                                        onPressed: () {
                                          setState(() {
                                            _isObscured = !_isObscured;
                                          });
                                        },
                                        icon: Icon(
                                          _isObscured
                                              ? Icons.visibility
                                              : Icons.visibility_off,
                                          color: context.color.secondaryText,
                                        ),
                                      ),
                                    ),
                                    8.height,
                                    _RememberMe(
                                      state: _rememberMe,
                                      onChanged: (value) {
                                        setState(() {
                                          _rememberMe = value ?? false;
                                        });
                                      },
                                    ),
                                    16.height,
                                    FilledButton(
                                      onPressed: () {
                                        if (!state.isLoading &&
                                            (_formKey.currentState
                                                    ?.validate() ??
                                                false)) {
                                          final notifier = ref.read(
                                              loginStateProvider.notifier);
                                          notifier.login(
                                            _emailController.text,
                                            _passwordController.text,
                                            _rememberMe,
                                          );
                                        }
                                      },
                                      child: switch (state) {
                                        AsyncLoading() => const SizedBox.square(
                                            dimension: 18,
                                            child: CircularProgressIndicator
                                                .adaptive(),
                                          ),
                                        _ => Text(
                                            "Login",
                                            style: context.textTheme.bodyLarge
                                                ?.copyWith(
                                              color: context.color.primary,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                      },
                                    ),
                                    8.height,
                                  ],
                                ),
                              ),
                            );
                          }),
                        ),
                      ),
                    ),
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

class _RememberMe extends StatelessWidget {
  const _RememberMe({
    super.key,
    required this.state,
    required this.onChanged,
  });

  final bool state;
  final ValueChanged<bool?>? onChanged;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: context.theme.copyWith(
        checkboxTheme: CheckboxThemeData(
          checkColor: WidgetStatePropertyAll(
            context.color.opposite,
          ),
          side: BorderSide(
            color: context.color.secondaryText,
            width: 2,
          ),
        ),
        listTileTheme: const ListTileThemeData(
          horizontalTitleGap: 0,
        ),
      ),
      child: CheckboxListTile(
        value: state,
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(
          "Remember me",
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.color.theme,
          ),
        ),
        contentPadding: emptyPadding,
        visualDensity: VisualDensity.compact,
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        checkboxShape: RoundedRectangleBorder(
          borderRadius: brA4,
          side: BorderSide(
            color: context.color.theme,
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}

class _LoginFormField extends StatelessWidget {
  const _LoginFormField({
    super.key,
    this.focusNode,
    this.controller,
    this.validators,
    this.trailingIcon,
    this.isObscured = false,
    required this.title,
    required this.hintText,
  });

  final String title;
  final String hintText;
  final bool isObscured;
  final Widget? trailingIcon;
  final FocusNode? focusNode;
  final TextEditingController? controller;
  final List<Validation>? validators;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: context.textTheme.bodyMedium?.copyWith(
            color: context.color.secondaryText,
          ),
        ),
        8.height,
        TextFormField(
          obscureText: isObscured,
          focusNode: focusNode,
          controller: controller,
          cursorColor: context.color.theme,
          validator: FieldValidator.validate(name: title, validators ?? []),
          style: context.textTheme.bodyLarge?.copyWith(
            color: context.color.theme,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: context.textTheme.bodyLarge?.copyWith(
              color: context.color.secondaryText,
            ),
            suffixIcon: trailingIcon,
          ),
        ),
      ],
    );
  }
}

class _LoginFormBg extends StatelessWidget {
  const _LoginFormBg({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox.expand(
      child: Container(
        decoration: BoxDecoration(
          color: context.color.secondaryBackground.withOpacity(0.1),
          border: Border(
            top: BorderSide(
              width: 4,
              color: context.color.primaryAccent,
            ),
          ),
          borderRadius: const BorderRadius.only(
            topLeft: r20,
            topRight: r20,
          ),
        ),
        child: child,
      ),
    );
  }
}

class _TopLogoSection extends StatelessWidget {
  const _TopLogoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(ImageAssets.bubbleBg),
        ),
      ),
      child: SizedBox.expand(
        child: Center(
          child: AspectRatio(
            aspectRatio: 342 / 132,
            child: Image.asset(
              ImageAssets.logo,
            ),
          ),
        ),
      ),
    );
  }
}

class _LoginScreenBg extends StatelessWidget {
  const _LoginScreenBg({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // return Image.asset(ImageAssets.loginBg, fit: BoxFit.cover);
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            context.color.primary,
            context.color.background,
            context.color.primary,
          ],
        ),
      ),
    );
  }
}
