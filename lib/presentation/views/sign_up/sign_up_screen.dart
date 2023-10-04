import 'package:answer_it/common/injection.dart';
import 'package:answer_it/presentation/manager/route_manager.dart';
import 'package:answer_it/presentation/views/sign_up/cubit/sign_up_cubit.dart';
import 'package:answer_it/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cubit = getIt<SignUpCubit>();

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
              controller: cubit.nameController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter Name',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
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
            TextField(
              controller: cubit.dobController,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter DOB',
              ),
              keyboardType: TextInputType.datetime,
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              onTap: () async {
                var isLoggedIn = await cubit.createAccount();
                if (isLoggedIn) {
                  Navigator.of(context).pushNamedAndRemoveUntil(
                      MobileRoutes.homeRoute, (Route<dynamic> route) => false);
                } else {
                  debugPrint('Something went wrong');
                }
              },
              buttonText: 'Create Account',
              buttonColor: Colors.blueAccent.shade100,
            )
          ]),
        ),
      ),
    );
  }
}
