import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mores_code/algorithm/codes.dart';
import 'package:pixelarticons/pixel.dart';
class Decode extends StatefulWidget {

  const Decode({super.key});

  @override
  State<Decode> createState() => _DecodeState();
}

class _DecodeState extends State<Decode> {

  TextEditingController text = TextEditingController();

  TextEditingController code = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      
        decoration: BoxDecoration(

          borderRadius: BorderRadius.circular(12),
      
          color: Colors.grey.shade100.withOpacity(0.5),

          border: Border.all(width: 1.5, color: Colors.grey.shade300.withOpacity(0.5)),
      
        ),

        margin: const EdgeInsets.all(30),
       
        child: SingleChildScrollView(
        
          scrollDirection: Axis.vertical,
        
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.end,
          
            children: [
          
              textFieldCode(code),
          
              Divider(thickness: 2, color: Colors.grey.shade300.withOpacity(0.5)),
          
              textField(text),

              Padding(

                padding: const EdgeInsets.only(right: 10),

                child: IconButton(onPressed: (){

                  Clipboard.setData(ClipboardData(text: text.text));
                
                }, icon: const Icon(Pixel.notemultiple, size: 35,)),
              ),
            ],
          ),
        ),
      );
  }

    Widget textField(TextEditingController controller){

      return TextField(
      
        controller: controller,
      
        decoration: const InputDecoration(
      
          contentPadding: EdgeInsets.all(20),
      
          border: InputBorder.none,
      
        ),
      
        maxLines: 5,

        style: const TextStyle(fontSize: 30),
      
      );
    }

    Widget textFieldCode(TextEditingController controller){

      return TextField(
      
        controller: controller,

        onChanged: (value) {
          
          setState(() {
            
            text.text = Codes.decode(value);

          });
        },
      
        decoration: const InputDecoration(
      
          contentPadding: EdgeInsets.all(20),
      
          border: InputBorder.none,
      
        ),
      
        maxLines: 6,

        style: const TextStyle(fontSize: 26),
      
      );
    }
}