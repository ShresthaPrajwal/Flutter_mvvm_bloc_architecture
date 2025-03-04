import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: const Text(
            'Welcome To MOCO',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 28, 45, 73),
            ),
          ),
        ),
        const SizedBox(height: 20),
        // Email Field
        TextField(
          controller: emailController,
          decoration: InputDecoration(
            labelText: 'Email',
            labelStyle: const TextStyle(color: Colors.grey),
            hintText: 'Enter your email',
            hintStyle: const TextStyle(color: Colors.grey),
            prefixIcon: const Icon(Icons.email, color: Colors.grey),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 28, 45, 73),
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 16,
            ),
          ),
        ),
        const SizedBox(height: 16),
        // Password Field
        TextField(
          controller: passwordController,
          decoration: InputDecoration(
            labelText: 'Password',
            labelStyle: const TextStyle(color: Colors.grey),
            hintText: 'Enter your password',
            hintStyle: const TextStyle(color: Colors.grey),
            prefixIcon: const Icon(Icons.lock, color: Colors.grey),
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: BorderSide.none,
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(
                color: Color.fromARGB(255, 28, 45, 73),
                width: 2,
              ),
            ),
            contentPadding: const EdgeInsets.symmetric(
              vertical: 20,
              horizontal: 16,
            ),
          ),
          obscureText: true,
        ),
        const SizedBox(height: 24),
        // Login Button
        SizedBox(
          width: double.infinity,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(vertical: 20),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              elevation: 5,
              shadowColor: const Color.fromARGB(
                255,
                28,
                45,
                73,
              ).withValues(alpha: 0.3),
              backgroundColor: const Color.fromARGB(255, 28, 45, 73),
            ),
            onPressed: () {
              context.read<LoginBloc>().add(
                LoginButtonPressed(
                  id: emailController.text,
                  mpin: passwordController.text,
                  platform: 'android',
                  pushToken:
                      'erSBsrPKSuSbazOD8BkRoe:APA91bEygGD3xElnRimDvJKZgeXtzT8TLMAWpNhL3vnf8-Db0bNLNxlJpWpq7iRKApLamllUr7bY9kriO0ARh1-lPEV8x_Nh3vkbwjf2ZliOhEhOHB3IcGQ',
                  model: 'sdk_gphone64_arm64',
                ),
              );
            },
            child: const Text(
              'Login',
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
