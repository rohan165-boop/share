
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  final String title;
  final String image;
  final String profile;
  const ProfileWidget({
    Key? key, required this.title, required this.image, required this.profile
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        padding:const EdgeInsets.all(4.0),
        width: 200,
        height: 520,
        decoration: BoxDecoration(
          color: Colors.grey.shade400,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Colors.transparent)
        ),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  padding:const EdgeInsets.all(2.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(360)
                  ),
                  child: Image.asset(profile,
                   height: 60,),),

                   Column(
                    children: [
                       Padding(
                        padding:const  EdgeInsets.only(left: 10, top: 1,),
                        child: Text(title,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),),
                      ),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Text("1h"),
                          Container(height: 2,
                          width: 2,
                          color: Colors.black,),
                          const Icon(Icons.public,size: 20,)
                        ],
                      )
                    ],
                   ),
                   const SizedBox(width: 145,),

                   const Padding(
                     padding:  EdgeInsets.only( top:0, left: 20, bottom: 30 ),
                     child:  Icon(Icons.more_horiz , size: 30,),
                   )
              ],
            ),
            Container(
              height: 1,
              width: 400,
              color: Colors.black,
            ),
            const SizedBox(height: 4,),
              Container(
              height: 380,
              child: Image.asset(image, fit: BoxFit.cover,),
            ),
             SizedBox(height: 35,
            child: Row(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    SizedBox(width: 10,),
                    Icon(Icons.favorite,
                     size: 25,
                      color: Colors.redAccent,),
                      SizedBox(width: 5,),
                       Text("50", style: TextStyle(fontWeight: FontWeight.bold),),
                  ],
                ),
                const SizedBox(width: 110,),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("30", style: TextStyle(fontWeight: FontWeight.bold),),
                     SizedBox(width: 5,),
                      Text("Comments",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                ),
                const SizedBox(width: 10,),

                 Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("10", style: TextStyle(fontWeight: FontWeight.bold),),
                     SizedBox(width: 5,),
                      Text("Share",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold
                      ),)
                  ],
                )
              ],
            ),),
            Container(
              height: 1,
              width: 400,
              color: Colors.black,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                     Icon(Icons.favorite, size: 25,),
                     SizedBox(width: 5,),
                     Text("Like",
                     style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                     ),)
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                     Icon(Icons.comment, size: 25,),
                     SizedBox(width: 5,),
                     Text("Comment",
                     style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                     ),)
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                     Icon(Icons.share, size: 25,),
                     SizedBox(width: 5,),
                     Text("Share",
                     style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold
                     ),)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}