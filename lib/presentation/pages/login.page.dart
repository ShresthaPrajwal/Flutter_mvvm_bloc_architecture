import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moco_app/presentation/blocs/login/login_bloc.dart';
import 'package:moco_app/presentation/blocs/login/login_state.dart';
import 'package:moco_app/presentation/widgets/background/background_widget.dart';
import 'package:moco_app/presentation/widgets/login/login_form_widget.dart';

class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:
          false, 
      body: Stack(
        children: [
          const BackgroundWidget(),
          Column(
            children: [
              const SizedBox(height: 50),
              Image.asset(
                'assets/images/moco_750.png',
                height: 160,
                width: 160,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: BlocConsumer<LoginBloc, LoginState>(
                          listener: (context, state) {
                            if (state is LoginFailure) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: Text(state.error),
                                  backgroundColor: Colors.redAccent,
                                ),
                              );
                            }
                          },
                          builder: (context, state) {
                            if (state is LoginLoading) {
                              return const Center(
                                child: CircularProgressIndicator(),
                              );
                            }
                            if (state is LoginSuccess) {
                              return SuccessWidget(user: state.user);
                            }
                            return LoginForm(
                              emailController: _emailController,
                              passwordController: _passwordController,
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class SuccessWidget extends StatelessWidget {
  final dynamic user;

  const SuccessWidget({required this.user, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Icon(Icons.check_circle, color: Colors.green, size: 50),
        const SizedBox(height: 10),
        const Text(
          'Login Successful!',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text('User ID: ${user.id}'),
        Text('User Name: ${user.name}'),
        Text('User Email: ${user.email}'),
      ],
    );
  }
}
