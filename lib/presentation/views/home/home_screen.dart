import 'package:answer_it/common/injection/injection.dart';
import 'package:answer_it/presentation/manager/color_manager.dart';
import 'package:answer_it/presentation/views/home/cubit/home_cubit.dart';
import 'package:answer_it/presentation/views/home/tabs/chat_screen.dart';
import 'package:answer_it/presentation/views/home/tabs/profile_screen.dart';
import 'package:answer_it/presentation/views/home/tabs/request_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

var cubit = getIt<HomeCubit>();

class HomeScreen extends StatelessWidget {
  final List<Widget> _tabScreen = [
    const ChatScreen(),
    const RequestScreen(),
    ProfileScreen(
      cubit: cubit,
    ),
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
            backgroundColor: ColorManager.baseBackgroundColor,
            appBar: AppBar(
              title: Text(
                state.screenName,
              ),
              backgroundColor: ColorManager.appBarColorColor,
            ),
            body: _tabScreen[state.currentBottomNavigationIndex],
            bottomNavigationBar: BottomNavigationBar(
              backgroundColor: ColorManager.appBarColorColor,
              elevation: 20,
              onTap: cubit.onTabTapped,
              currentIndex: state.currentBottomNavigationIndex,
              selectedItemColor: ColorManager.headerTextColor,
              unselectedItemColor: Colors.blueGrey,
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
