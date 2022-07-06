import 'package:flutter/material.dart';

class NewButton extends StatelessWidget {
  final Icon icon;
  NewButton({Key? key, required this.icon}) : super(key: key);
  bool buttonpressed = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.all(8.0),
      duration: const Duration(seconds: 1),
      height: 50,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(25),
        border: Border.all(color: buttonpressed? Colors.green: Colors.white),
        boxShadow:[
           const BoxShadow(
            color: Colors.white,
            offset: Offset(-6, -6),
            blurRadius: 15,
            spreadRadius: 1
          ),

          BoxShadow(
            color: Colors.grey.shade900,
            offset:const Offset(6, 6),
            blurRadius: 15,
            spreadRadius: 1
          )
        ]
      ),
      child: icon,
    );
  }
}