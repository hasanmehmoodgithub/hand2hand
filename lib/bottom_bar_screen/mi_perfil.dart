import 'package:flutter/material.dart';

import '../Components/AppComponents.dart';

class MiPerfil extends StatefulWidget {
  const MiPerfil({super.key});

  @override
  State<MiPerfil> createState() => _MiPerfilState();
}

class _MiPerfilState extends State<MiPerfil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        decoration: imgDecoration,
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const Row(children: [
            Icon(
              Icons.lock,
              color: Colors.white,
              size: 35,
            ),
            Text(
              "Hand2Hand",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Spacer(),
            Icon(
              Icons.menu,
              color: Colors.white,
              size: 35,
            ),
          ]),
          const SizedBox(
            height: 30,
          ),
          SizedBox(
            height: 180,
            child: Column(
              children: [
                Row(
                  children: [
                    const SizedBox(
                      width: 20,
                    ),
                    ClipOval(
                      child: Container(
                        height: 100,
                        width: 100,
                        color:
                            Colors.blue, // You can replace this with your image
                        child: const Center(
                          child: Text(
                            'Your Image',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    const Spacer(),
                    const Column(
                      children: [
                        Text(
                          "1º",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Ranking ",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Column(
                      children: [
                        Text(
                          "25",
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          "Retos",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    const SizedBox(
                      width: 10,
                    ),
                    const Column(
                      children: [
                        Text(
                          "Javier Álvarez ",
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                        Text(
                          "Estudiante en Ade",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          color: const Color(0xffD9D9D9).withOpacity(0.8),
                          borderRadius: const BorderRadius.all(Radius.circular(30))),
                      child: const Center(child: Text("Editar")),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )
              ],
            ),
          ),
           const SizedBox(height:40,),
           Row(children: [
             const SizedBox(width: 10,),
             Column(children: [

               Container(
                 decoration: BoxDecoration(
                   color: const Color(0xffD9D9D9).withOpacity(0.8),
                     borderRadius: const BorderRadius.all(Radius.circular(20))),
                 height: 150,width: 155,),
               const SizedBox(height: 4,),
               const Text("Guardados",style: TextStyle(fontSize: 20,color: Colors.white),)
             ],),
             const Spacer(),
             Column(children: [

               Container(
                 decoration: BoxDecoration(
                     color: const Color(0xffD9D9D9).withOpacity(0.8),
                     borderRadius: const BorderRadius.all(Radius.circular(20))),
                 height: 150,width: 155,),
               const SizedBox(height: 4,),
               const Text("Retos",style: TextStyle(fontSize: 20,color: Colors.white),)
             ],),
             const SizedBox(width: 10,),
           ],)

        ]),
      ),
    );
  }
}
