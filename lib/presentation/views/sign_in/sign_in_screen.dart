import 'package:answer_it/common/injection/injection.dart';
import 'package:answer_it/presentation/manager/color_manager.dart';
import 'package:answer_it/presentation/manager/route_manager.dart';
import 'package:answer_it/presentation/views/sign_in/cubit/sign_in_cubit.dart';
import 'package:answer_it/presentation/widgets/custom_button.dart';
import 'package:answer_it/presentation/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  final cubit = getIt<SignInCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return cubit;
      },
      child: Scaffold(
        backgroundColor: ColorManager.baseBackgroundColor,
        appBar: AppBar(
          title: const Text('Sign In'),
          centerTitle: true,
          backgroundColor: ColorManager.appBarColorColor,
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              CustomTextField(
                controller: cubit.emailController,
                label: 'Email',
                hintText: 'Enter Email',
              ),
              const SizedBox(
                height: 16,
              ),
              BlocBuilder<SignInCubit, SignInState>(builder: (context, state) {
                return CustomTextField(
                  controller: cubit.passwordController,
                  label: 'Password',
                  hintText: 'Enter Password',
                  isPasswordHidden: state.isPasswordHidden,
                  onPasswordIconTap: cubit.passwordIconToggle,
                );
              }),
              const SizedBox(
                height: 16,
              ),
              BlocBuilder<SignInCubit, SignInState>(builder: (context, state) {
                return CustomButton(
                  onTap: () async {
                    await cubit.signInUser();
                    debugPrint(state.signInResource.data?.user?.uid);
                    if (state.signInResource.isSuccess()) {
                      Navigator.of(context).pushNamedAndRemoveUntil(
                          MobileRoutes.homeRoute,
                          (Route<dynamic> route) => false);
                    } else if (state.signInResource.isError()) {
                      debugPrint(state.signInResource.failure?.message);
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content:
                            Text(state.signInResource.failure?.message ?? ''),
                        backgroundColor: Colors.green,
                        elevation: 2,
                        behavior: SnackBarBehavior.floating,
                        margin: const EdgeInsets.all(16),
                      ));
                    }
                    // if (isLoggedIn == 'Sign In Successful') {
                    // Navigator.of(context).pushNamedAndRemoveUntil(
                    //     MobileRoutes.homeRoute, (Route<dynamic> route) => false);
                    // } else {
                    // debugPrint(isLoggedIn);
                    // ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    //   content: Text(isLoggedIn),
                    //   backgroundColor: Colors.green,
                    //   elevation: 2,
                    //   behavior: SnackBarBehavior.floating,
                    //   margin: const EdgeInsets.all(16),
                    // ));
                    // }
                  },
                  isLoding: state.signInResource.isLoading(),
                  buttonText: 'Sign In',
                  buttonColor: Colors.blueAccent.shade100,
                );
              })
            ]),
          ),
        ),
      ),
    );
  }
}
