import 'package:flutter/material.dart';

class MessengerView extends StatefulWidget {
  const MessengerView({ Key? key }) : super(key: key);

  @override
  State<MessengerView> createState() => _MessengerViewState();
}

class _MessengerViewState extends State<MessengerView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade500,
      body: const Center(
        child: Text("Messenger"),
      ),
      
    );
  }
}