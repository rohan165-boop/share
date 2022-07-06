import 'package:flutter/material.dart';

class NewButtonPress extends StatelessWidget {
  final Icon icon;
  NewButtonPress({ Key? key, required this.icon }) : super(key: key);
  bool buttonpress = true;
  

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      padding: const EdgeInsets.all(5.0),
      duration: const Duration(seconds: 1),
       height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(250),
        border: Border.all(color: buttonpress? Colors.red : Colors.white)

      ),
      child: icon,
      
    );
  }
}