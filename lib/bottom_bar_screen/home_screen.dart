
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../generated/assets.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>{

  @override
  Widget build(BuildContext context) {
    return
      Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(Assets.imagesBackground),
              fit: BoxFit.cover,
            ),
          ),

          child:   Column(
            children: [
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.all(10),
                height: 49,
                decoration: BoxDecoration(
                  color: const Color(0xff72AFA6).withOpacity(0.9),
                  borderRadius: BorderRadius.circular(25),
                ),
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
              const SizedBox(height: 20,),
              Expanded(
                child: MasonryGridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  itemCount: 10,
                  padding: const EdgeInsets.all(0),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: const EdgeInsets.all(10),
                      height: index % 2 == 0 ? 250 : 187,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0), // Adjust the value as needed
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0), // Same value as the container
                        child: Image.network(
                          'https://picsum.photos/seed/picsum/200/300', // Replace with your image path
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        );
  }



}
