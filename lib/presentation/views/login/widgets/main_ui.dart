import 'package:answer_it/presentation/manager/json_manager.dart';
import 'package:answer_it/presentation/manager/route_manager.dart';
import 'package:answer_it/presentation/views/login/cubit/login_cubit.dart';
import 'package:answer_it/presentation/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

Widget mainUI({required LoginCubit cubit, required BuildContext context}) {
  final List<Color> _background = [
    Colors.pinkAccent,
    Colors.greenAccent,
    Colors.orangeAccent,
    Colors.blueAccent,
  ];

  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      // PageView.builder(
      //   controller: cubit.pageController,
      //   itemCount: _background.length,
      //   physics: const ClampingScrollPhysics(),
      //   itemBuilder: (context, index) {
      //     return Container(
      //       height: double.infinity,
      //       width: double.infinity,
      //       color: _background[index],
      //     );
      //   },
      // ),
      Expanded(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              JsonManager.chatTwoLottieJson,
            ),
            const Text(
              'Welcome to',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
            const Text(
              'Answer it',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 44,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(16, 0, 16, 32),
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomButton(
                buttonText: 'Sign In',
                onTap: () {
                  Navigator.of(context).pushNamed(MobileRoutes.signInRoute);
                },
              ),
              const SizedBox(
                height: 16,
              ),
              CustomButton(
                buttonText: 'Create Account',
                onTap: () {
                  Navigator.of(context).pushNamed(MobileRoutes.signUpRoute);
                },
                isSolidButton: false,
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
