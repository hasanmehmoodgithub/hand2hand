import 'package:flutter/material.dart';
import 'package:hand2hand/Components/AppComponents.dart';

class AppleLoginScreen extends StatefulWidget {
  const AppleLoginScreen({super.key});

  @override
  State<AppleLoginScreen> createState() => _AppleLoginScreenState();
}

class _AppleLoginScreenState extends State<AppleLoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: backgroundImageDark(bodyWidget(), context),
    );
  }
  bodyWidget(){
    return Container();
  }
}
