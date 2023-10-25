import 'package:answer_it/common/injection/injection.dart';
import 'package:answer_it/presentation/manager/route_manager.dart';
import 'package:answer_it/presentation/views/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

var cubit = getIt<HomeCubit>();

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return cubit;
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Home Screen',
          ),
          backgroundColor: Colors.orange,
        ),
        body: Column(
          children: [
            Text('Welcome'),
            BlocBuilder<HomeCubit, HomeState>(buildWhen: (p, c) {
              return p.isUserLoggedIn != c.isUserLoggedIn;
            }, builder: (context, state) {
              return OutlinedButton(
                onPressed: () async {
                  await cubit.signOut();
                  if (!(state.isUserLoggedIn)) {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        MobileRoutes.loginRoute, (route) => false);
                  } else {
                    debugPrint('Something went wrong');
                  }
                },
                child: Text('Sign Out'),
              );
            }),
          ],
        ),
      ),
    );
  }
}
