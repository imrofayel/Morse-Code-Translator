import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mores_code/views/decode.dart';
import 'package:mores_code/views/encode.dart';
import 'package:pixelarticons/pixel.dart';
class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _DecodeState();
}

class _DecodeState extends State<Home> {
  
  @override
  Widget build(BuildContext context) {

    return SafeArea(
      
      child: AnnotatedRegion(

        value: SystemUiOverlayStyle(statusBarIconBrightness: Brightness.dark, statusBarColor: Colors.grey.shade100, systemNavigationBarColor: Colors.grey.shade100, systemNavigationBarIconBrightness: Brightness.dark, systemNavigationBarDividerColor: Colors.grey.shade100),

        child: DefaultTabController(

          length: 2,

          child: Scaffold(
          
            backgroundColor: Colors.grey.shade100,
          
            appBar: AppBar(
            
              leading:  const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(Pixel.loader, size: 40),
              ),
            
                title: const Text("Morse Code", textScaler: TextScaler.linear(1.2)),
            
                actions: [
            
                  Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: IconButton(icon: const Icon(Pixel.login, size: 35), onPressed: (){})),
                ],
            
                bottom: const TabBar(

                  indicatorColor: Colors.black,

                  padding: EdgeInsets.zero,

                  labelPadding: EdgeInsets.fromLTRB(15, 0, 15, 8),

                  tabs: [
            
                    Tab(icon: Icon(Pixel.toggleleft, size: 35), iconMargin: EdgeInsets.zero, child: Text("Decode", textScaler: TextScaler.linear(1.4))),
                    
                    Tab(icon: Icon(Pixel.toggleright, size: 35), iconMargin: EdgeInsets.zero, child: Text("Encode", textScaler: TextScaler.linear(1.4))),
            
                  ] 
                ),
            ), 

            body: const TabBarView(
              
              children: [

                Decode(),

                Encode(),
              ]
              
            ),
          ),
        ),
      ),
    );
  }
}
