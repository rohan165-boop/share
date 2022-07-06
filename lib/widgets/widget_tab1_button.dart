import 'package:flutter/material.dart';

class TabButtons extends StatelessWidget {
  const TabButtons({
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
        color: Colors.grey.shade400 ,
        borderRadius: BorderRadius.circular(15.0),
        border: Border.all(color:  Colors.white,),
        
      ),
      child:
       const Icon(Icons.favorite, 
      size: 50, 
      color: Colors.transparent,),
    );
  }
}