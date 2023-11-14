import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hand2hand/Components/AppComponents.dart';

import '../../Src/AppColors.dart';
import '../../Src/AppTextStyle.dart';
import '../../routes/app_screen.dart';

class CreaUnNombreScreen extends StatefulWidget {
  const CreaUnNombreScreen({super.key});

  @override
  State<CreaUnNombreScreen> createState() => _CreaUnNombreScreenState();
}

class _CreaUnNombreScreenState extends State<CreaUnNombreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,   //new line
      body: Container(
            decoration: imgDecoration,
          child:bodyWidget()),
    );
  }


  bodyWidget(){
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
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),

      child: Column(
        children: [
          const Text("Cuentanos sobre ti",style: TextStyle(fontSize: 30,fontFamily: nunitoBold),textAlign: TextAlign.center,),
          const SizedBox(height: 10,),
          const Text("Queremos personalizarte tu experienza, hablanos de ti",style: TextStyle(fontSize: 14,fontFamily: nunitoBold),textAlign: TextAlign.center,),
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
        fechaTextField(),
        const SizedBox(height:30,),
        sexoTextField(),
        const SizedBox(height:30,),
        idiomasTextField()
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
            hintText: "¿Donde estudias?",
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
            hintText: "¿Qué estás estudiando?",
            fillColor: textFieldColor,
            isDense: true,                      // Added this

          ),
        ),
      ),
    );
  }

  fechaTextField(){
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
            hintText: "¿En qué curso estás?",
            fillColor: textFieldColor,
            isDense: true,                      // Added this

          ),
        ),
      ),
    );
  }

  sexoTextField(){
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
            hintText: "¿Has realizado estudios anteriormente?",
            fillColor: textFieldColor,
            isDense: true,                      // Added this

          ),
        ),
      ),
    );
  }


  idiomasTextField(){
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
            hintText: "¿Qué idiomas hablas?",
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
            context.push("/${AppScreen.dashboardScreen}");

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
