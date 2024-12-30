import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/constant.dart';
import '../../../screens/favorite/favoritboby.dart';
import '../../../screens/home/homebody.dart';
import '../../../screens/profile/profilbody.dart';
import '../../../screens/store/storebody.dart';
import 'cubite/nav_bar_cubit.dart';


class MainHomeView extends StatelessWidget {
   MainHomeView({super.key});
  final List<Widget> views = [
    const Homebody(),
    const Storebody(),
    const Favoritboby(),
    const Profilbody(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
       create: (context) => NavBarCubit(),
        child: BlocBuilder < NavBarCubit , NavBarState >(
        builder : (context , state){
          NavBarCubit cubit = context.read<NavBarCubit>();
      return Scaffold(
      body: SafeArea(
             child: views[cubit.currentIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color:Colors.white
        ),
        child:  Padding(
          padding:  EdgeInsets.symmetric(vertical: 12 , horizontal: 12),
          child: GNav(
            onTabChange: (index) {
              cubit.changeCurrentIndex(index);
            },
              rippleColor: blue, // tab button ripple color when pressed
             duration: const Duration(milliseconds: 900), // tab animation duration
              gap: 8, // the tab button gap between icon and text
              color: gray, // unselected icon color
              activeColor: Colors.white, // selected icon and text color
              iconSize: 24, // tab button icon size
              tabBackgroundColor: blue, // selected tab background color
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5), // navigation bar padding
              tabs: const [
                GButton(
                  icon: Icons.home,
                  text: 'Home',
                ),
                GButton(
                  icon: Icons.store,
                  text: 'Store',
                ),
                GButton(
                  icon: Icons.favorite,
                  text: 'Favorite',
                ),
                GButton(
                  icon: Icons.person,
                  text: 'Profile',
                ),
              ],
          ),
        ),
      ),
      );
        },
        ),
    );
  }
}
