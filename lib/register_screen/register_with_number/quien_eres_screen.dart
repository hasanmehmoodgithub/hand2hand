import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../Components/AppComponents.dart';
import '../../Src/AppColors.dart';
import '../../Src/AppTextStyle.dart';
import '../../routes/app_screen.dart';

class QuienEresScreen extends StatefulWidget {
  const QuienEresScreen({super.key});

  @override
  State<QuienEresScreen> createState() => _QuienEresScreenState();
}

class _QuienEresScreenState extends State<QuienEresScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:Container(
        height: double.infinity,
          decoration: imgDecoration,
          child: bodyWidget())
    );
  }

  Widget bodyWidget(){
    return Container(
   //   height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const SizedBox(height: 20,),
            fieldsContainer(),
            Spacer(),
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
          const Text("¿Quien eres?",style: TextStyle(fontSize: 30,fontFamily: nunitoBold),textAlign: TextAlign.center,),
          const SizedBox(height: 30,),
          textFieldsWidget(),
          const SizedBox(height: 40,),
          enterButtonWidget(),
          const SizedBox(height: 30,),
          forgetText(),
          //   const SizedBox(height: 10,),
        ],
      ),
    );
  }

  textFieldsWidget(){
    return Column(
      children: [
        numberTextField(),
        const SizedBox(height: 30,),
        apellidosTextField(),
        const SizedBox(height:30,),
        Row(
          children: [
            fechaTextField(),
            const Spacer(),
            sexoTextField(),
          ],
        )
      ],
    );

  }

  forgetText(){
    return  Row(
      children: [
        const Spacer(),
        InkWell(
            onTap: (){
              context.pop();
            },
            child: const Text("< volver",style: TextStyle(fontSize: 14,fontFamily: nunitoBold,color: mainColor),))

      ],
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
            hintText: "Nombre",
            fillColor: textFieldColor,
            isDense: true,                      // Added this

          ),
        ),
      ),
    );
  }

  apellidosTextField(){
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
            hintText: "Apellidos",
            fillColor: textFieldColor,
            isDense: true,                      // Added this

          ),
        ),
      ),
    );
  }

  fechaTextField(){
    return SizedBox(
      width: MediaQuery.of(context).size.width/2.3,
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
            hintText: "Fecha de nacimiento",
            fillColor: textFieldColor,
            isDense: true,                      // Added this

          ),
        ),
      ),
    );
  }

  sexoTextField(){
    return SizedBox(
      width: MediaQuery.of(context).size.width/5,
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
            hintText: "sexo",
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
            context.push("/${AppScreen.creaUnNombreScreen}");

          }, child: const Text("Siguiente")),
    );
  }


  bottomText(){
    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("¿Ya tienes cuenta?",style: TextStyle(fontSize: 14,fontFamily: nunitoBold,color: Colors.white),),
        InkWell(
            onTap: (){
              context.push("/${AppScreen.loginScreen}");

            },
            child: const Text(" Inicia sesión",style: TextStyle(fontSize: 14,fontFamily: nunitoBold,color: mainColor),))


      ],
    );
  }
}