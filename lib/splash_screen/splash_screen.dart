import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hand2hand/Components/AppComponents.dart';
import 'package:hand2hand/routes/app_screen.dart';

import '../Src/AppTextStyle.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(decoration: imgDecoration,
      child:bodyWidget(),
      ),
    );
  }

  bodyWidget(){
    return Column(
      children: [
        const Spacer(),
        Container(
            margin: const EdgeInsets.only(left: 20,right: 20),
            child: const Text("Hand2Hand",style: TextStyle(color: Colors.white,fontSize:65 ),)),
        const Spacer(),
        buttonWidgets(),
      ],
    );
  }

  buttonWidgets(){
    return Column(
      children: [
        iniciarWidget(),
        const SizedBox(height: 30,),
        creaWidget(),
        const SizedBox(height: 60,),
      ],
    );
  }

  iniciarWidget(){
    return Container(
      margin: const EdgeInsets.only(left: 20,right: 20),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ElevatedButton(
          style:  ElevatedButton.styleFrom(
            foregroundColor: Colors.white, backgroundColor: Colors.black,
            textStyle: const TextStyle(fontSize: 20,color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: (){
            context.push("/${AppScreen.loginScreen}");

          }, child: const Text("Iniciar sesión")),
    );
  }

  creaWidget(){
    return Container(
      margin: const EdgeInsets.only(left: 20,right: 20),
      width: MediaQuery.of(context).size.width,
      height: 60,
      child: ElevatedButton(
          style:  ElevatedButton.styleFrom(
            foregroundColor: Colors.black, backgroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 20,color: Colors.black),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: (){
            context.push("/${AppScreen.dashboardScreen}");

          }, child: const Text("Crea cuenta")),
    );
  }
}
