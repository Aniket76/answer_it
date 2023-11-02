import 'package:answer_it/common/injection/injection.dart';
import 'package:answer_it/presentation/manager/route_manager.dart';
import 'package:answer_it/presentation/views/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

var cubit = getIt<HomeCubit>();

class HomeScreen extends StatelessWidget {
  final List<Widget> _children = [
    Tab1(),
    Tab2(),
    Tab3(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        return cubit;
      },
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Answer It',
              ),
              backgroundColor: Colors.orange,
            ),
            body: _children[state.currentBottomNavigationIndex],
            bottomNavigationBar: BottomNavigationBar(
              onTap: cubit.onTabTapped,
              currentIndex: state.currentBottomNavigationIndex,
              items: const [
                BottomNavigationBarItem(
                  icon: Icon(Icons.chat),
                  label: 'Chats',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.request_quote),
                  label: 'Requests',
                ),
                BottomNavigationBarItem(
                  icon: Icon(Icons.person_2),
                  label: 'Profile',
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class Tab1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 1 Content'),
    );
  }
}

class Tab2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Tab 2 Content'),
    );
  }
}

class Tab3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
