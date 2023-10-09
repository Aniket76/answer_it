import 'package:answer_it/common/injection.dart';
import 'package:answer_it/presentation/manager/route_manager.dart';
import 'package:answer_it/presentation/views/sign_up/cubit/sign_up_cubit.dart';
import 'package:answer_it/presentation/widgets/custom_button.dart';
import 'package:answer_it/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final cubit = getIt<SignUpCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return cubit;
      },
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sign Up'),
          centerTitle: true,
        ),
        body: SafeArea(
          child:
              BlocBuilder<SignUpCubit, SignUpState>(builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(children: [
                CustomTextField(
                  controller: cubit.nameController,
                  labelText: 'Name',
                  hintText: 'Enter Name',
                  errorText: state.nameError,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  controller: cubit.emailController,
                  labelText: 'Email',
                  hintText: 'Enter Email',
                  errorText: state.emailError,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  controller: cubit.passwordController,
                  labelText: 'Password',
                  hintText: 'Enter Password',
                  errorText: state.passwordError,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextField(
                  controller: cubit.dobController,
                  labelText: 'DOB',
                  hintText: 'Enter DOB',
                  errorText: state.dobError,
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomButton(
                  onTap: () async {
                    var isLoggedIn = await cubit.createAccount();
                    if (isLoggedIn) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          MobileRoutes.homeRoute,
                          (Route<dynamic> route) => false);
                    } else {
                      debugPrint('Something went wrong');
                    }
                  },
                  buttonText: 'Create Account',
                  buttonColor: Colors.blueAccent.shade100,
                )
              ]),
            );
          }),
        ),
      ),
    );
  }
}
