import 'package:flutter/material.dart';
import 'package:share/constants/constants.dart';
import 'package:share/features/favorite/favorite_view.dart';
import 'package:share/features/messenger/messenger_view.dart';
import 'package:share/features/profile/profile_views.dart';
import 'package:share/widgets/Widget_tab_button.dart';
import 'package:share/widgets/widget_newbutton.dart';
import 'package:share/widgets/widget_newbuttont_press.dart';
import 'package:share/widgets/widget_tab1_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isButtonPresse = false;
  bool isButtonPresse1 = false;
  bool isButtonPresse2 = false;
  bool isButtonPresse3 = false;
  bool buttonpress1 = true;
  bool buttonpress2 = false;
  bool buttonpress3 = false;
  bool buttonpress4 = false;
  bool buttonpress5 = false;

  void letspressed() {
    setState(() {
      if(isButtonPresse == false) {
        isButtonPresse = true;
      } else if(isButtonPresse == true) {
        isButtonPresse = false;
      }

    });
  }

  void letspressed2() {
    setState(() {
      if(isButtonPresse2 == false) {
        isButtonPresse2 = true;
      } else if(isButtonPresse2 == true) {
        isButtonPresse2 = false;
      }

    });
  }

  void letspressed3() {
    setState(() {
      if(isButtonPresse3 == false) {
        isButtonPresse3 = true;
      } else if(isButtonPresse3 == true) {
        isButtonPresse3 = false;
      }

    });
  }

  void letspressed1() {
    setState(() {
      if(isButtonPresse1 == false) {
        isButtonPresse1 =true;
      } else if(isButtonPresse1 == true) {
        isButtonPresse1 = false;
      }
    });
  }

  void letsPress1(){
    setState(() {
      buttonpress1 =true;
      buttonpress2 =false;
      buttonpress3 =false;
      buttonpress4 =false;
      buttonpress5 =false;

      Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage() ));
      
    });
  }

  void letsPress2(){
    setState(() {
      buttonpress1 =false;
      buttonpress2 =true;
      buttonpress3 =false;
      buttonpress4 =false;
      buttonpress5 =false;

      Navigator.push(context, MaterialPageRoute(builder: (context) => const FavoritePage() ));
      
    });
  }

  void letsPress3(){
    setState(() {
      buttonpress1 =false;
      buttonpress2 =false;
      buttonpress3 =true;
      buttonpress4 =false;
      buttonpress5 =false;
      
    });
  }

  void letsPress4(){
    setState(() {
      buttonpress1 =false;
      buttonpress2 =false;
      buttonpress3 =false;
      buttonpress4 =true;
      buttonpress5 =false;
      
    });
  }

  void letsPress5(){
    setState(() {
      buttonpress1 =false;
      buttonpress2 =false;
      buttonpress3 =false;
      buttonpress4 =false;
      buttonpress5 =true;

      Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfileView() ));

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade400,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: IconButton(onPressed: () {
          Navigator.of(context).pop();
        },
         icon: Icon(Icons.arrow_back,
          color: Colors.redAccent.shade400,),),
          title: const Text("Home",
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),),

          actions: [
            IconButton(onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const MessengerView() ));
            }, 
            icon: Icon(Icons.messenger, 
            size: 30,
            color: Colors.pinkAccent.shade400,))
          ],
      ),
      body: Center(
        child: Column(
          children: [
            Center(child: GestureDetector(
              onDoubleTap: letspressed1,
              child: isButtonPresse1?
               Image.asset(ImageConstants.a2,height: 100,):
                Image.asset(ImageConstants.b6, height: 100,),
            )),

            Image.asset(ImageConstants.a1, height: 200,),
            const SizedBox(height: 20,),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(3, (index) => GestureDetector(
                  onDoubleTap: letspressed,
                  child: isButtonPresse? const TabButtons() : const TabButton(),
                ),)
            ),
            const SizedBox(height: 10,),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(3, (index) => GestureDetector(
                  onDoubleTap: letspressed2,
                  child: isButtonPresse2? const TabButtons() : const TabButton(),
                ),)
            ),
            const SizedBox(height: 10,),

             Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(3, (index) => GestureDetector(
                  onDoubleTap: letspressed3,
                  child: isButtonPresse3? const TabButtons() : const TabButton(),
                ),)
            ),
            const SizedBox(height: 10,),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 360,
        // decoration: BoxDecoration(
        //   color: Colors.grey.shade500,
        //   borderRadius: BorderRadius.circular(10),
        //   border: Border.all(color: Colors.transparent),
        //    boxShadow: [
        //      const BoxShadow(
        //       color: Colors.white,
        //       offset: const Offset(-8, -6),
        //       blurRadius: 15,
        //       spreadRadius: 1
        //     ),
        //      BoxShadow(
        //       color: Colors.grey.shade900,
        //       offset:const Offset(8, 6),
        //       blurRadius: 15,
        //       spreadRadius: 1
        //     )
        //   ]
        // ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:  [
            Expanded(
              child: GestureDetector(
                onTap: letsPress1,
                child: buttonpress1?
                 NewButtonPress(icon:const Icon(Icons.home)) :
                  NewButton(icon:const Icon(Icons.home)) ,),),

                Expanded(
              child: GestureDetector(
                onTap: letsPress2,
                child: buttonpress2?
                 NewButtonPress(icon:const Icon(Icons.favorite)) :
                  NewButton(icon:const Icon(Icons.favorite)) ,),),

                Expanded(
              child: GestureDetector(
                onTap: letsPress3,
                child: buttonpress3?
                 NewButtonPress(icon:const Icon(Icons.search)) :
                  NewButton(icon:const Icon(Icons.search)) ,),),

                Expanded(
              child: GestureDetector(
                onTap: letsPress4,
                child: buttonpress4? 
                NewButtonPress(icon:const Icon(Icons.notifications)) :
                 NewButton(icon:const Icon(Icons.notifications)) ,),),

                Expanded(
              child: GestureDetector(
                onTap: letsPress5,
                child: buttonpress5?
                 NewButtonPress(icon:const Icon(Icons.person)) :
                  NewButton(icon:const Icon(Icons.person)) ,),),
          ]
        ),
      ),

    );
  }
}

