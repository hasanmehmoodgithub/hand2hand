import 'package:flutter/material.dart';
import 'package:hand2hand/bottom_bar_screen/home_screen.dart';
import 'package:hand2hand/login_screen/login_screen.dart';
import 'package:hand2hand/splash_screen/splash_screen.dart';

import '../generated/assets.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor:  Color(0xFF72AFA6),
        bottomSheet:bottomAppBarDashboardWidget(pageViewController),
        body:  PageView(
            physics: const NeverScrollableScrollPhysics(),
            onPageChanged: (value){

            },
            controller: pageViewController,
            children:   [
              HomeScreen(),
              LoginScreen(),
              SplashScreen(),
              Text("4"),
              Text("5"),

            ]),


      ),
    );
  }

  PageController pageViewController=PageController();

  Widget bottomAppBarDashboardWidget(PageController pageViewController) {

    return Container(
      height: 70,
      color: Color(0xFF72AFA6),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildTabItem(index: 0,icon: Assets.iconsHome),
          _buildTabItem(index: 1,icon:Assets.iconsWeb),
          _buildTabItem(index: 2,icon:Assets.iconsFire),
          _buildTabItem(index: 3,icon: Assets.iconsStats),
          _buildTabItem(index: 4,icon: Assets.iconsPerson),
        ],
      ),
    );

  }

  Widget _buildTabItem({
    required int index,
    required String icon,

  }) {

    return InkWell(
      onTap: (){
        pageViewController.animateToPage(
          index, // Index of the page you want to navigate to
          duration: const Duration(milliseconds: 200), // Animation duration
          curve: Curves.linear, // Animation curve
        );
        changeTab(index: index);},
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [


          Image.asset(icon,color: selected ==index
              ? Colors.white
              : Colors.white.withOpacity(0.6),height: 30 ,width: 30,),

        ],
      ),
    );
  }

  int selected=0;

  void changeTab({required int index}) {
    setState(() {
      selected=index;
    });

  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}