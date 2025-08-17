import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:medical_center_app/features/main_view/data/managers/bottom_nav_bar_cubit/botton_nav_bar_cubit.dart';
import 'package:medical_center_app/features/main_view/presentation/widgets/custom_bottom_nav_bar.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    final screens = const [
      Text('Home'),
      Text('Chats'),
      Text('Schedule'),
      Text('Profile'),
    ];

    return BlocProvider(
      create: (context) => BottomNavBarCubit(),
      child: BlocBuilder<BottomNavBarCubit, int>(
        builder: (context, state) {
          return Scaffold(
            backgroundColor: Colors.white,
            body: Center(
              child: IndexedStack(index: state, children: screens),
            ),
            bottomNavigationBar: const CustomBottomNavBar(),
          );
        },
      ),
    );
  }
}
