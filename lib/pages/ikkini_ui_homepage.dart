import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'ikkinchi_ui_second_page.dart';

class SecondHomePage extends StatefulWidget {
  static const id="second_home_id";
  const SecondHomePage({Key? key}) : super(key: key);

  @override
  State<SecondHomePage> createState() => _SecondHomePageState();
}

class _SecondHomePageState extends State<SecondHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
              child: Container(
                width: double.infinity,
                color: const Color.fromRGBO(56 , 125, 122, 1),
                padding: const EdgeInsets.only(top:60,left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage:NetworkImage('https://i.pinimg.com/474x/a5/26/41/a52641f0acf81198b5537bd36339e4be.jpg'),
                    ),
                    SizedBox(height: 20,),
                    Text("Welcome",style: TextStyle(color: Colors.white),),
                    SizedBox(height: 10,),
                    Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.w700),),
                  ],
                ),
              )
          ),
          Expanded(
            flex: 5,
              child: Container(
                width: double.infinity,
                color: Color.fromRGBO(56 , 125, 122, 1),
                child: Container(
                  padding: EdgeInsets.only(left: 50,right: 50,),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(topRight:Radius.circular(30),topLeft: Radius.circular(30),)
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const SizedBox(height: 60,),
                      const Text("Email",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                      const TextField(
                        decoration: InputDecoration(
                          hintText:"Enter Email",
                          hintStyle:TextStyle(color: Colors.grey,),
                            enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                      )
                      ),
                      const SizedBox(height: 40,),
                      Text("Password",style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w700),),
                      const TextField(
                          decoration: InputDecoration(
                            hintText:"Enter Password",
                            hintStyle:TextStyle(color: Colors.grey,),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey),
                            ),
                          )
                      ),
                      const SizedBox(height: 40,),
                      const Center(
                        child:  Text("Forgot Password?",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.w700),),
                      ),
                      SizedBox(height: 40,),
                      Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),

                        ),
                        height: 50,

                        child:ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary:Color.fromRGBO(56 , 125, 122, 1),
                          ),
                          onPressed: (){},
                          child: Text("Sign in"),)
                      ),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:  const [
                        Expanded(
                            flex: 5,
                            child: Divider(color: Colors.grey,)),
                        Text("  OR  ",style: TextStyle(color: Colors.grey),),
                        Expanded(
                            flex: 5,
                            child: Divider(color: Colors.grey,)),
                      ],),
                      SizedBox(height: 130,),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(
                            onPressed: () {},
                            child: Center(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                    "Do you have an account?",
                                    style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.grey
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: (){
                                     Navigator.pushNamed(context,SecondSecond.id);

                                    },
                                    child: const Text(
                                      "Sign up",
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.w500,
                                        color:Color.fromRGBO(56 , 125, 122, 1),
                                      ),
                                    ),
                                  ),


                                ],
                              ),
                            ),
                          ),

                        ],
                      ),

                    ],
                  ),
                ),
              )
          ),

        ],
      ),
    );
  }
}
