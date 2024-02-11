import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mores_code/algorithm/codes.dart';
import 'package:pixelarticons/pixel.dart';
class Encode extends StatefulWidget {

  const Encode({super.key});

  @override
  State<Encode> createState() => _EncodeState();
}

class _EncodeState extends State<Encode> {

  TextEditingController text = TextEditingController();

  TextEditingController code = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Container(
      
        decoration: BoxDecoration(
      
          color: Colors.grey.shade100.withOpacity(0.5),

          borderRadius: BorderRadius.circular(12),

          border: Border(

            right: BorderSide(width: 1.5, color: Colors.grey.shade300.withOpacity(0.5)),

            bottom: BorderSide(width: 1.5, color: Colors.grey.shade300.withOpacity(0.5)),

            top: BorderSide(width: 1.5, color: Colors.grey.shade300.withOpacity(0.5)),

            left: BorderSide(width: 1.5, color: Colors.grey.shade300.withOpacity(0.5)),
          ),
      
        ),

        margin: const EdgeInsets.all(30),
       
        child: SingleChildScrollView(
        
          scrollDirection: Axis.vertical,
        
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.end,

            children: [
          
              textField(text),
          
              Divider(thickness: 2, color: Colors.grey.shade300.withOpacity(0.5)),
          
              textFieldCode(code),

              Padding(

                padding: const EdgeInsets.only(right: 10),

                child: IconButton(onPressed: (){

                  Clipboard.setData(ClipboardData(text: code.text));
                
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

        onChanged: (value) {
          
            setState(() {
              
              code.text = Codes.encode(value);

            });
        },
      
        decoration: const InputDecoration(
      
          contentPadding: EdgeInsets.all(10),
      
          border: InputBorder.none,
      
        ),
      
        maxLines: 6,

        style: const TextStyle(fontSize: 26),
      
      );
    }

    Widget textFieldCode(TextEditingController controller){

      return TextField(
      
        controller: controller,
      
        decoration: const InputDecoration(
      
          contentPadding: EdgeInsets.all(20),
      
          border: InputBorder.none,
      
        ),
      
        maxLines: 5,

        style: const TextStyle(fontSize: 33),
      
      );
    }
}