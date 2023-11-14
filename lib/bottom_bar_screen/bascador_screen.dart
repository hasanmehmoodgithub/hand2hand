import 'package:flutter/material.dart';
import 'package:hand2hand/Components/AppComponents.dart';

class BasCaDorScreen extends StatefulWidget {
  const BasCaDorScreen({super.key});

  @override
  State<BasCaDorScreen> createState() => _BasCaDorScreenState();
}

class _BasCaDorScreenState extends State<BasCaDorScreen> {
  Color g=const Color(0xffD9D9D9);
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Container(
      decoration: imgDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [

                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.8),
                        borderRadius: const BorderRadius.all(Radius.circular(20))),

                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.search),
                          onPressed: () {
                            // Implement your search functionality here
                          },
                        ),
                        const Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Que estas buscando',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(width: 10,),
                const Text("Cancelar ",style: TextStyle(color: Colors.white),)
              ],
            ),
          ),

          const SizedBox(height: 30,),
          SizedBox(
            height: 100.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage('https://picsum.photos/200/300'), // Replace with actual image paths
                    radius: 50.0,
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 30,),
          SizedBox(
            height: 130.0,

            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: g,
                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                  width: 80.0,
                  height: 120,
                  margin: const EdgeInsets.all(8.0),
                  // Replace with your content
                );
              },
            ),
          ),
          const SizedBox(height: 30,),
          const Center(
            child: Text(
              'Temas',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
          const SizedBox(height: 10,),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 174 / 74, // Adjust as needed
              ),
              itemCount: 4, // Adjust based on your content
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                      color: g,
                      borderRadius: const BorderRadius.all(Radius.circular(20))),
                  width: 174.0,
                  height: 74.0,
           
                  margin: const EdgeInsets.all(8.0),
                  // Replace with your content
                );
              },
            ),
          ),
        ],
      ),


    ),);
  }
}
