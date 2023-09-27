import 'package:answer_it/common/injection.dart';
import 'package:answer_it/presentation/views/sign_up/cubit/sign_up_cubit.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  var cubit = getIt<SignUpCubit>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ]),
        ),
      ),
    );
  }
}
