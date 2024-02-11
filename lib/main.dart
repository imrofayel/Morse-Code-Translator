import 'package:flutter/material.dart';
import 'package:mores_code/views/home.dart';
import 'package:mores_code/theme/themes.dart';

void main(){

  runApp(const MorseCode());
  
}

class MorseCode extends StatefulWidget {

  const MorseCode({super.key});

  @override
  State<MorseCode> createState() => _MorseCodeState();
}

class _MorseCodeState extends State<MorseCode> {

  @override
  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      home: const Home(),

      theme: Themes.theme

    );
  }
}
