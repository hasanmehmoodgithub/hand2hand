import 'package:flutter/material.dart';

import '../../Components/AppComponents.dart';
import '../../Src/AppColors.dart';
import '../../Src/AppTextStyle.dart';

class RegisterWithNumberScreen extends StatefulWidget {
  const RegisterWithNumberScreen({super.key});

  @override
  State<RegisterWithNumberScreen> createState() => _RegisterWithNumberScreenState();
}

class _RegisterWithNumberScreenState extends State<RegisterWithNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: backgroundImageDark(bodyWidget(), context),
    );
  }

  bodyWidget() {
    return Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            fieldsContainer(),
            const Spacer(),
            bottomText(),
            const SizedBox(height: 10,),
          ],
        ));
  }

  fieldsContainer(){
    return Container(
      margin: const EdgeInsets.all(20),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(40),
      ),
      child: Column(
        children: [
          const Text("Crea un nombre de usuario",style: TextStyle(fontSize: 30,fontFamily: nunitoBold),textAlign: TextAlign.center,),
          const SizedBox(height: 10,),
          const Text("Elige un nombre de usuario para tu nueva cuenta. Puedes cambiarlo cuando quieras.",style: TextStyle(fontSize: 15,fontFamily: nunitoMedium),textAlign: TextAlign.center,),
          const SizedBox(height: 30,),
          numberTextField(),
          const SizedBox(height: 30,),
          enterButtonWidget(),
             const SizedBox(height: 40,),
        ],
      ),
    );
  }

  numberTextField(){
    return SizedBox(
      height: 50,
      child: Center(
        child: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: const BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
            filled: true,
            hintStyle: TextStyle(color: Colors.grey[600]),
            hintText: "Nombre de usuario",
            fillColor: textFieldColor,
            isDense: true,                      // Added this

          ),
        ),
      ),
    );
  }

  enterButtonWidget(){
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 50,
      child: ElevatedButton(
          style:  ElevatedButton.styleFrom(
            primary: mainColor,
            onPrimary: Colors.white,
            textStyle: const TextStyle(fontFamily: nunitoBold,fontSize: 20,color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
          onPressed: (){

          }, child: const Text("Siguiente")),
    );
  }


  bottomText(){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("¿Ya tienes cuenta?",style: TextStyle(fontSize: 14,fontFamily: nunitoBold,color: Colors.white),),
        Text(" Inicia sesión",style: TextStyle(fontSize: 14,fontFamily: nunitoBold,color: mainColor),)


      ],
    );
  }


}
