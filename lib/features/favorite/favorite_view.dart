import 'package:flutter/material.dart';
import 'package:share/constants/constants.dart';
import 'package:share/features/profile/widgets/profile_widgets.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({ Key? key }) : super(key: key);

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Favorite",
        style: TextStyle(
          color: Colors.red.shade400,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
        actions:const [
          Icon(Icons.favorite, size: 40, color: Colors.red,)
        ],
      ),

      body: ListView(
        children:const [
           ProfileWidget(title: "Sukreeti", image: ImageConstants.b2, profile: ImageConstants.a2,),
           ProfileWidget(title: "AJeeta", image: ImageConstants.b3, profile: ImageConstants.a3,),
        ],
      ),
      
    );
  }
}