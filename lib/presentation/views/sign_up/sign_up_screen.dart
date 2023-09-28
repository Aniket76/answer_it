import 'package:answer_it/common/injection.dart';
import 'package:answer_it/presentation/views/sign_up/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  var cubit = getIt<SignUpCubit>();

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
            SizedBox(
              width: double.infinity,
              height: 60,
              child: ElevatedButton(
                onPressed: () {
                  // Navigator.of(context).pushNamed(MobileRoutes.signInRoute);
                  cubit.createAccount();
                },
                style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ))),
                child: const Text("Create Account"),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
