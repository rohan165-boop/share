import 'package:flutter/material.dart';
import 'package:share/constants/constants.dart';
import 'package:share/pages/homepage.dart';
import 'package:share/pages/registerpage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // final TextEditingController _EmailController = TextEditingController();
  // final TextEditingController _passwordController = TextEditingController();
  bool _isobscure = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(ImageConstants.login),
           fit: BoxFit.cover),
      ),

      child: Scaffold(
        backgroundColor: Colors.transparent,

        body: Stack(
          children: [
            Container(
              padding:const EdgeInsets.only(top: 155, left: 55),
              child:const Text("Welcome\nBack",
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
              ),),
            ),

            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height*0.5,
                  right: 35,
                  left: 35),
                child: Column(
                  children: [
                    TextFormField( 
                      // controller: _EmailController,
                      keyboardType: TextInputType.emailAddress,
                      validator: (String? value) {
                        if(value ==null || value.length < 12){
                          return 'Please Enter a Valid Email Address';
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
                          borderSide:const BorderSide(color: Colors.transparent),
                          ),
                        hintText: 'Email',
                        labelText: 'Email', 
                        labelStyle:const TextStyle(
                          color: Colors.purple,
                          fontSize: 18,
                        ),
                        prefixIcon: const Icon(Icons.email, color: Colors.black,),
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))
                      ),
                    ),
                    const SizedBox(height: 50,),
            
                    TextFormField( 
                      // controller: _passwordController,
                      obscureText: _isobscure,
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
                          borderSide:const BorderSide(color: Colors.transparent),
                          ),
                        hintText: 'Password',
                        labelText: 'Password',
                        labelStyle:const TextStyle(
                          color: Colors.purple,
                          fontSize: 18,
                        ),
                        prefixIcon:const Icon(Icons.fingerprint, color:  Colors.black,),
                        suffixIcon: GestureDetector(
                          child:const Icon(Icons.visibility_off, color: Colors.purpleAccent,),
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
                        fillColor: Colors.grey.shade200,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15))
                      ),
                    ),
                    const SizedBox(height: 30,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Sign In",
                        style: TextStyle(
                          color: Colors.grey.shade600,
                          fontSize: 30
                        ),),
                        CircleAvatar(
                          backgroundColor: Colors.grey.shade600,
                          child:IconButton(onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage() ));
                          },
                           icon:const Icon(Icons.arrow_forward,
                           color: Colors.white,),) ,
                        )
                      ],
                    ),
                    const SizedBox(height: 40,),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>const RegisterPage()));
                        },
                         child: Text("Sign Up",
                         style: TextStyle(
                          color: Colors.grey.shade600,
                          decoration: TextDecoration.underline,
                          fontSize: 18
                         ),),),

                         TextButton(onPressed: () {},
                         child: Text("Forgot Password",
                         style: TextStyle(
                          color: Colors.grey.shade600,
                          decoration: TextDecoration.underline,
                          fontSize: 18
                         ),),), 
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
      
      
    );
  }
}
