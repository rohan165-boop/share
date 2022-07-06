import 'package:flutter/material.dart';
import 'package:share/constants/constants.dart';
import 'package:share/features/profile/widgets/profile_widgets.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({ Key? key }) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text("Profile",
        style: TextStyle(
          color: Colors.red.shade400,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),),
      ),

      body: ListView(
        children: const [
          
          ProfileWidget(title: "Roh AN", image: ImageConstants.b1, profile: ImageConstants.a1,),
          ProfileWidget(title: "Sukreeti", image: ImageConstants.b2, profile: ImageConstants.a2,),
          ProfileWidget(title: "AJeeta", image: ImageConstants.b3, profile: ImageConstants.a3,),
          ProfileWidget(title: "Dahal", image: ImageConstants.b4, profile: ImageConstants.a4,),
          ProfileWidget(title: "Prajesh", image: ImageConstants.b5, profile: ImageConstants.a5,),
        ],
      ),
      
    );
  }
}
