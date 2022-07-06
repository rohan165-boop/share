import 'package:flutter/material.dart';
import 'package:share/constants/constants.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({ Key? key }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool _isobscure = true;
  @override
  Widget build(BuildContext context) {
    return Container(
       decoration:const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstants.register),
           fit: BoxFit.cover),
      ),

      child:Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: IconButton(onPressed: () {
            Navigator.of(context).pop();
          },
          icon:const Icon(Icons.arrow_back, color: Colors.white, size: 35,),),
        ),
        
        body: Stack(
          children: [
            Container(
            padding:const EdgeInsets.only(
              top: 60,
             left: 55),
            child:const Text("Create\nAccount",
            style: TextStyle(
              color: Colors.white,
              fontSize: 34,
            ),),
          ),

          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height*0.26,
                right: 35,
                left: 35
              ),
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const BorderSide(color: Colors.white),
                          ),
                          prefixIcon: const Icon(Icons.person),
                        hintText: 'Name',
                        labelText: 'Name',
                        labelStyle:const TextStyle(
                          color: Colors.white,
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))
                      ),
                    ),
                    const SizedBox(height: 30,),

                    TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const BorderSide(color: Colors.white),
                          ),
                          prefixIcon: const Icon(Icons.email),
                        hintText: 'Email',
                        labelText: 'Email',
                        labelStyle:const TextStyle(
                          color: Colors.white,
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))
                      ),
                    ),
                    const SizedBox(height: 30,),

                    TextFormField(
                      validator: (String? value) {
                        if(value ==null || value.length < 8){
                          return 'Please Enter Your Password';
                        } else if(value.length<8){
                          return 'Password Must be greater than 8 character';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const BorderSide(color: Colors.white),
                          ),
                           prefixIcon:const Icon(Icons.password),
                           suffixIcon: GestureDetector(
                          child:const Icon(Icons.visibility_off, color: Colors.black,),
                          onLongPressStart: (val) {
                            setState(() {
                              _isobscure = false;
                            });
                          },
                          onLongPressEnd: (val) {
                            setState(() {
                              _isobscure = true;
                            });
                          },
                        ),
                        hintText: 'Password',
                        labelText: 'Password',
                        labelStyle:const TextStyle(
                          color: Colors.white,
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))
                      ),
                    ),
                    const SizedBox(height: 30,),

                    TextFormField(
                      validator: (String? value) {
                        if(value ==null || value.length < 8){
                          return 'Please Enter Your Password';
                        } else if(value.length<8){
                          return 'Password Must be greater than 8 character';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const BorderSide(color: Colors.black),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide:const BorderSide(color: Colors.white),
                          ),
                          prefixIcon:const Icon(Icons.password),
                           suffixIcon: GestureDetector(
                          child:const Icon(Icons.visibility_off, color: Colors.black,),
                          onLongPressStart: (val) {
                            setState(() {
                              _isobscure = false;
                            });
                          },
                          onLongPressEnd: (val) {
                            setState(() {
                              _isobscure = true;
                            });
                          },
                        ),
                        hintText: 'Re-Enter Password',
                        labelText: 'Re-Enter Password',
                        labelStyle:const TextStyle(
                          color: Colors.white,
                        ),
                        fillColor: Colors.transparent,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))
                      ),
                    ),
                    const SizedBox(height: 30,),

                    SizedBox(
                      height: 50,
                      width: 120,
                      child: ElevatedButton(onPressed: () {},
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent.shade200),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30)
                          ))
                      ),
                       child:const Padding(
                        padding: EdgeInsets.all(8),
                        child: Text('Sign In',
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                        ),
                        ),
                        ),
                        ),
                    ),

                   
                ],
              ),
            ),
          )
          ],
        ),
      )
      
    );
  }
}