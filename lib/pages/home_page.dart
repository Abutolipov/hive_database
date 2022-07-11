import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_database/models/user_model.dart';
import 'package:hive_database/pages/secondPage.dart';
import 'package:hive_database/service/database_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  static const id="home_page_id";
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override


  final usernameC=TextEditingController();
  final passwordC=TextEditingController();


  Future<void> doLogin()async{
    String username=usernameC.text.toString().trim();
    String password=passwordC.text.toString().trim();

    var user=User(username: username, password: password);
    HiveDB().storeData(user);

    var user2=HiveDB().loadUser();
    print(user2.toString());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(28, 30, 54, 1),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(25, 80, 25, 55),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // #body
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // #app_logo
                    Container(
                    child: Center(
                      child: Container(
                        margin: EdgeInsets.only(top:100,bottom: 20),
                        width: 85,
                        height: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        clipBehavior: Clip.hardEdge,
                        child:Image.network('https://i.pinimg.com/474x/a5/26/41/a52641f0acf81198b5537bd36339e4be.jpg',fit: BoxFit.cover,),

                      ),
                    ),
                    ),

                    // #segment_control
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 90.5,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12.5),

                      ),
                      child:
                      Center(
                        child: Column(
                          children:const [
                            Text("Welcom Back!",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25,color: Colors.white),),
                            Text("Log ino your xsistance account All Rokuten",style: TextStyle(color: Colors.white),),
                          ],
                        ),

                      ),

                    ),
                    const SizedBox(
                      height: 30,
                    ),


                    const SizedBox(
                      height: 5,
                    ),
                    TextField(
                      controller: usernameC,
                      style: const TextStyle(
                        fontFamily: "Inter",
                        color: Colors.white,
                        fontSize: 13,
                      ),
                      decoration: const InputDecoration(
                        hintText: "username",
                        hintStyle:TextStyle(color: Colors.white,),
                        prefixIcon: Icon(Icons.group,color: Colors.white,),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),


                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextField(
                      obscureText: true,
                      controller: passwordC,
                      style: const TextStyle(
                        fontFamily: "Inter",
                        fontSize: 13,
                      ),
                      decoration: const InputDecoration(
                        prefixIcon: Icon(Icons.lock_outline,size: 16,color: Colors.white,),
                        hintText:"password",
                        hintStyle:TextStyle(color: Colors.white,),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [
                        Text(
                          "Forgot password",
                          style: TextStyle(
                            fontSize: 13,
                            fontFamily: "Inter",
                            fontWeight: FontWeight.w500,
                            color: Colors.grey

                          ),
                        ),
                      ],
                    ),


                    const SizedBox(
                      height: 25,
                    ),
                    Center(
                      child:
                          ElevatedButton(
                          onPressed: doLogin,
                          style: ElevatedButton.styleFrom(
                              padding: EdgeInsets.zero,
                             shape: CircleBorder(),
                          ),
                          child: Ink(
                            decoration:const BoxDecoration(
                                gradient:LinearGradient(
                                colors: [
                                  Colors.indigo,
                                  Colors.indigo,
                                  Colors.indigo,
                                  Color.fromRGBO(105, 169, 250, 1),
                                  Color.fromRGBO(105, 169, 250, 1),
                                  Color.fromRGBO(105, 169, 250, 1),
                                ]),
                              shape: BoxShape.circle,
                            ),
                            child: Container(
                              height: 60,
                              alignment: Alignment.center,
                              child: Icon(CupertinoIcons.arrow_right)
                            ),
                          ),
                        ),
                      ),

                    const SizedBox(
                      height: 27,
                    ),

                  ],
                ),

                const SizedBox(
                  height: 150,
                ),
                // #footer
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
                                Navigator.pushNamed(context,ScecondPage.id);

                              },
                              child: const Text(
                                "Sign up",
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.blue
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
        ),
      ),
    );
  }
}
