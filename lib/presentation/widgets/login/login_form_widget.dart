import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moco_app/core/theme/app_colors.dart';
import 'package:moco_app/core/theme/app_text_styles.dart';
import 'package:moco_app/presentation/blocs/login/login_bloc.dart';
import 'package:moco_app/presentation/blocs/login/login_event.dart';

class LoginForm extends StatelessWidget {
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const LoginForm({
    required this.emailController,
    required this.passwordController,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colors = theme.colorScheme;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Text(
            'Welcome To MOCO',
            style: AppTextStyles.bold.copyWith(
              fontSize: 20,
              color: colors.onSurface,
            ),
          ),
        ),
        Center(
          child: Text(
            'Login with your existing account',
            style: AppTextStyles.regular.copyWith(fontSize: 11),
          ),
        ),
        const SizedBox(height: 10),

        // MOCO ID Field
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            labelText: 'MOCO ID(Mobile number)',
            labelStyle: AppTextStyles.medium.copyWith(
              fontSize: 12,
              color: colors.onSurface.withOpacity(0.6),
            ),
            hintText: 'Enter your MOCO ID(Mobile number)',
            hintStyle: AppTextStyles.regular.copyWith(
              fontSize: 14,
              color: colors.onSurface.withOpacity(0.6),
            ),
            prefixIcon: Icon(
              Icons.person,
              color: colors.onSurface.withOpacity(0.6),
            ),
            filled: true,
            fillColor: colors.surface,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: AppColors.primaryBorder, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: AppColors.primaryBorder, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: colors.primary, width: 2),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 16,
            ),
          ),
        ),
        const SizedBox(height: 14),
        // Password Field
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
            labelText: 'MOCO PIN',
            labelStyle: AppTextStyles.medium.copyWith(
              fontSize: 12, // Consistent text size
              color: colors.onSurface.withOpacity(0.6),
            ),
            hintText: 'MOCO PIN',
            hintStyle: AppTextStyles.regular.copyWith(
              fontSize: 14, // Consistent text size
              color: colors.onSurface.withOpacity(0.6),
            ),
            prefixIcon: Icon(
              Icons.key,
              color: colors.onSurface.withOpacity(0.6),
            ),
            filled: true,
            fillColor: colors.surface,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: Colors.black, width: 2),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: AppColors.primaryBorder, width: 2),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide(color: colors.primary, width: 2),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 16,
              horizontal: 16,
            ),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 14),

        // Forgot Pin Button
        Container(
          alignment: Alignment.centerRight,
          child: Text(
            'Forgot MOCO PIN?',
            style: AppTextStyles.bold.copyWith(fontSize: 12),
          ),
        ),

        const SizedBox(height: 14),

        // Login Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
              backgroundColor: colors.secondary.withValues(alpha: 1),
            ),
            onPressed: () {
              context.read<LoginBloc>().add(
                LoginButtonPressed(
                  id: emailController.text,
                  mpin: passwordController.text,
                  // platform: 'android',
                  // pushToken:
                  //     'erSBsrPKSuSbazOD8BkRoe:APA91bEygGD3xElnRimDvJKZgeXtzT8TLMAWpNhL3vnf8-Db0bNLNxlJpWpq7iRKApLamllUr7bY9kriO0ARh1-lPEV8x_Nh3vkbwjf2ZliOhEhOHB3IcGQ',
                  // model: 'sdk_gphone64_arm64',
                ),
              );
            },
            child: Text(
              'Login',
              style: AppTextStyles.bold.copyWith(
                fontSize: 14,
                color: colors.onPrimary,
              ),
            ),
          ),
        ),
        const SizedBox(height: 14),

        Center(
          child: RichText(
            text: TextSpan(
              style: AppTextStyles.regular.copyWith(fontSize: 11),
              children: [
                TextSpan(
                  text: 'New to MOCO? ',
                  style: TextStyle(color: AppColors.primary),
                ),
                TextSpan(
                  text: 'Sign up',
                  style: AppTextStyles.bold.copyWith(
                    color: AppColors.primaryLight,
                  ),
                  recognizer:
                      TapGestureRecognizer()
                        ..onTap = () {
                          debugPrint('Sign up tapped!');
                        },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
