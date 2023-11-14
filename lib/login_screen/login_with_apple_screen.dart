import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hand2hand/Components/AppComponents.dart';
import 'package:hand2hand/Src/AppColors.dart';

import '../Src/AppTextStyle.dart';

class LoginWithAppleScreen extends StatefulWidget {
  const LoginWithAppleScreen({super.key});

  @override
  State<LoginWithAppleScreen> createState() => _LoginWithAppleScreenState();
}

class _LoginWithAppleScreenState extends State<LoginWithAppleScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: backgroundImageDark(bodyWidget(), context),
    );
  }

  bodyWidget() {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height/1.2,
        padding: const EdgeInsets.only(top: 10,left: 20,right: 20,bottom: 10),
        decoration: const BoxDecoration(
          color:textFieldColor,
          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40)),
        ),

        child: Column(
          children: [
            const SizedBox(height: 10,),
            ListView(
              physics: const BouncingScrollPhysics(),
              shrinkWrap: true,
              children: [
                topBarWidget(),
                const SizedBox(height: 20,),
                greenBoxWidget(),
                const SizedBox(height: 20,),
                const Text("Crea una cuenta de Hand2Hand con tu ID Apple\nHand2Hand@icloud.com",style: TextStyle(fontSize: 17,fontFamily: nunitoNormalText),textAlign: TextAlign.center,),
                const SizedBox(height: 20,),
                nameWidget(),
                const SizedBox(height: 20,),
                emailWidget(),
              ],
            ),
            const SizedBox(height: 30,),
            continueButtonWidget()
          ],
        ),
      ),
    );
  }

  topBarWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text("ID de Apple",style: TextStyle(color: Colors.black,fontFamily:  nunitoBold, fontSize: 22),),

        InkWell(
          onTap: (){
            context.pop();
          },
          child: Container(

            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                color: iconColor,
                width: 1.5
              )
            ),
            child: const Center(
              child: Icon(Icons.close,size: 15,color: iconColor,),
            ),
          ),
        )
      ],
    );
  }


  greenBoxWidget(){
    return  Column(
      children: [
        Container(
          height: 70,
          width: 70,
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: mainColor,
              borderRadius: BorderRadius.circular(10),

          ),
        ),
      ],
    );
  }

  nameWidget(){
    return Container(
      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 13,right: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [

          Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: textFieldColor,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Center(
              child: Image.asset("assets/icons/user.png",color: Colors.black,height: 20,width: 20,),
            ),
          ),

          const SizedBox(width: 10,),

          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Nombre",style: TextStyle(fontSize: 15,fontFamily: nunitoBold),),
              SizedBox(height: 3,),
              Text("Javier Álvarez Marrodan",style: TextStyle(fontSize: 15,fontFamily: nunitoNormalText),),

            ],
          ),

          const Spacer(),
          Container(

            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                    color: iconColor,
                    width: 1.5
                )
            ),
            child: const Center(
              child: Icon(Icons.close,size: 15,color: iconColor,),
            ),
          ),
        ],
      ),
    );
  }

  emailWidget(){
    return Container(
//      width: 500,
    //  height: 100,
      padding: const EdgeInsets.only(top: 10,bottom: 10,left: 13,right: 13),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Container(
            height: 40,
            width: 40,
            padding: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              color: textFieldColor,
              borderRadius: BorderRadius.circular(13),
            ),
            child: Center(
              child: Image.asset("assets/icons/email.png",color: Colors.black,height: 20,width: 20,),
            ),
          ),

          const SizedBox(width: 10,),

         Expanded(
           child: Column(
             children: [

               Row(
                 children: [
                   SizedBox(
                     width: MediaQuery.of(context).size.width/2,
                     child: const Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Compartir mi correo electronico",style: TextStyle(fontSize: 15,fontFamily: nunitoBold),),
                         SizedBox(height: 3,),
                         Text("Hand2Hand@icloud.com",style: TextStyle(fontSize: 15,fontFamily: nunitoNormalText),),


                       ],
                     ),
                   ),
                   const Spacer(),
                   Container(

                       padding: EdgeInsets.all(2),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(
                               color: iconColor,
                               width: 1.5
                           )
                       ),
                       child: Container(
                         height: 15,
                         width: 15,
                       )
                   ),
                 ],
               ),

               const SizedBox(height: 10,),
               const Divider(
                 thickness: 1,
                 color: iconColor,
               ),
               const SizedBox(height: 10,),

               Row(
                 children: [
                   SizedBox(
                     width: MediaQuery.of(context).size.width/2,
                     child: const Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: [
                         Text("Ocultar mi correo electrónico Reenviar a:",style: TextStyle(fontSize: 15,fontFamily: nunitoBold),),
                         SizedBox(height: 3,),
                         Text("Hand2Hand@icloud.com",style: TextStyle(fontSize: 15,fontFamily: nunitoNormalText),),


                       ],
                     ),
                   ),

                   const Spacer(),
                   Container(

                       padding: const EdgeInsets.all(2),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(20),
                           border: Border.all(
                               color: Colors.blue,
                               width: 1.5
                           )
                       ),
                       child:const Center(
                         child: Icon(Icons.close,size: 15,color: Colors.blue,),
                       ),
                   ),
                 ],
               )
             ],
           ),
         )
        ],
      ),
    );
  }


  continueButtonWidget(){
    return SizedBox(
      width: MediaQuery.of(context).size.width/2,
      height: 50,
      child: ElevatedButton(
          style:  ElevatedButton.styleFrom(
            primary: Colors.blue,
            onPrimary: Colors.white,
            textStyle: const TextStyle(fontFamily: nunitoBold,fontSize: 20,color: Colors.white),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
          ),
          onPressed: (){

          }, child: const Text("Continuar")),
    );
  }
}
