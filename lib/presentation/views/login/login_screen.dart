import 'package:answer_it/common/injection/injection.dart';
import 'package:answer_it/presentation/views/login/cubit/login_cubit.dart';
import 'package:answer_it/presentation/views/login/widgets/main_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final cubit = getIt<LoginCubit>();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return cubit;
      },
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 0, 13, 36),
        body: mainUI(cubit: cubit, context: context),
      ),
    );
  }
}
