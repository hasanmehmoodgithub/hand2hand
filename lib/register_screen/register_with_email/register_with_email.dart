import 'package:flutter/material.dart';

import '../../Components/AppComponents.dart';
import '../../Src/AppColors.dart';
import '../../Src/AppTextStyle.dart';

class RegisterWithEmail extends StatefulWidget {
  const RegisterWithEmail({super.key});

  @override
  State<RegisterWithEmail> createState() => _RegisterWithEmailState();
}

class _RegisterWithEmailState extends State<RegisterWithEmail> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: backgroundImageDark(bodyWidget(), context),
    );
  }

  bodyWidget(){
    return Container(
        padding: const EdgeInsets.all(20),
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                const SizedBox(height: 20,),
                fieldsContainer(),
                const SizedBox(height: 30,),
                Image.asset("assets/images/o_divider.png"),
                const SizedBox(height: 30,),
                otherLoginOptions(),
                const Spacer(),
                bottomText(),
                const SizedBox(height: 50,),
              ],
            ),
          ),
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
          const Text("Recuperar\ncontraseña",style: TextStyle(fontSize: 30,fontFamily: nunitoBold),textAlign: TextAlign.center,),
          const SizedBox(height: 30,),
          textFieldsWidget(),
          const SizedBox(height: 30,),
          enterButtonWidget(),
          const SizedBox(height: 50,),
          forgetText(),
       //   const SizedBox(height: 10,),
        ],
      ),
    );
  }

  textFieldsWidget(){
    return emailTextField();

  }

  forgetText(){
    return const Row(
      children: [
        Spacer(),
        Text("< volver",style: TextStyle(fontSize: 14,fontFamily: nunitoBold,color: mainColor),)
      ],
    );
  }

  emailTextField(){
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
            hintText: "Email, teléfono, nombre de usuario",
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

  otherLoginOptions(){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/apple.png",height: 14,width: 14,),
            const SizedBox(width: 10,),
            const Text("Iniciar con Apple",style: TextStyle(fontSize: 14,fontFamily: nunitoBold,color: Colors.white),)
          ],
        ),
        const SizedBox(height: 5,),

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/icons/google.png",width: 14,height: 14,),
            const SizedBox(width: 10,),
            const Text("Inicio sesion Google",style: TextStyle(fontSize: 14,fontFamily: nunitoBold,color: Colors.orange),)
          ],
        )
      ],
    );
  }


  bottomText(){
    return const Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("¿No tienes cuenta?",style: TextStyle(fontSize: 14,fontFamily: nunitoBold,color: Colors.white),),
        Text(" Registrate",style: TextStyle(fontSize: 14,fontFamily: nunitoBold,color: mainColor),)


      ],
    );
  }
}