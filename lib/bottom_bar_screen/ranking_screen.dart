import 'package:flutter/material.dart';
import 'package:hand2hand/generated/assets.dart';

class RankingScreen extends StatefulWidget {
  const RankingScreen({super.key});

  @override
  State<RankingScreen> createState() => _RankingScreenState();
}

class _RankingScreenState extends State<RankingScreen> {

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
          ],
        ),
      );
  }
}
