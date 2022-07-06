import 'package:flutter/material.dart';

class TabButton extends StatelessWidget {
  const TabButton({
    Key? key,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration:const Duration( seconds: 1,),
      height: 80,
      width: 80,
      padding:const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.grey.shade400,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color:  Colors.grey.shade400),
        boxShadow:const  [
           BoxShadow(
            color: Colors.black,
            offset: Offset(6, 6),
            blurRadius: 25,
            spreadRadius: 1,
          ),
        
           BoxShadow(
            color: Colors.white,
            offset: Offset(-6, -6),
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ]
        
      ),
      child:
     const Icon(Icons.favorite, 
      size: 50, 
      color: Colors.red,
    ),
    );
  }
}

