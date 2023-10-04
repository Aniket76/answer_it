import 'package:answer_it/common/injection.dart';
import 'package:answer_it/presentation/manager/route_manager.dart';
import 'package:answer_it/presentation/views/sign_in/cubit/sign_in_cubit.dart';
import 'package:answer_it/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final cubit = getIt<SignInCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            TextField(
              controller: cubit.emailController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Email',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              controller: cubit.passwordController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Password',
              ),
              keyboardType: TextInputType.visiblePassword,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              onTap: () async {
                var isLoggedIn = await cubit.signInUser();
                if (isLoggedIn) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      MobileRoutes.homeRoute, (Route<dynamic> route) => false);
                } else {
                  debugPrint('Something went wrong');
                }
              },
              buttonText: 'Sign In',
              buttonColor: Colors.blueAccent.shade100,
            )
          ]),
        ),
      ),
    );
  }
}
