import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ScecondPage extends StatefulWidget {
  static const id="second_page_id";
  const ScecondPage({Key? key}) : super(key: key);

  @override
  State<ScecondPage> createState() => _ScecondPageState();
}

class _ScecondPageState extends State<ScecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromRGBO(28, 30, 54, 1),
      body: Container(
        padding: EdgeInsets.only(left: 25, right: 25,top: 50),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Icon(CupertinoIcons.arrow_left),
              ],
            ),
            SizedBox(height: 40,),
            Center(
              child: Column(
                children:const [
                  Text("  Create\nAccount",style: TextStyle(fontWeight: FontWeight.w900,fontSize: 25,color: Colors.white),),
                ],
              ),
            ),
            const SizedBox(height: 35,),
            Column(
              children: [
                const TextField(
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 13,
                  ),
                  decoration: InputDecoration(
                    hintText: "Name",
                    hintStyle: TextStyle(color: Colors.white,),
                    prefixIcon: Icon(Icons.person,color: Colors.white,),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),

                  ),
                ),
                const SizedBox(height: 35,),
                const TextField(
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 13,
                  ),
                  decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(color: Colors.white,),
                    prefixIcon: Icon(Icons.email,color: Colors.white,),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),

                ),
                const SizedBox(height: 35,),
                const TextField(
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 13,
                  ),
                  decoration: InputDecoration(
                    hintText: "Phone",
                    hintStyle: TextStyle(color: Colors.white,),
                    prefixIcon: Icon(Icons.phone,color: Colors.white,),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(height: 35,),
                TextFormField(

                  style: const TextStyle(
                    fontFamily: "Inter",
                    fontSize: 13,
                  ),
                  decoration: const InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(color: Colors.white,),
                    prefixIcon: Icon(Icons.password,color: Colors.white,),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(height: 35,),

                const SizedBox(height: 45,),
                Center(
                  child: SizedBox(
                    height: 50,
                    width: 230,
                    child:   ElevatedButton(
                      onPressed: () {
                        print('Hi there');
                      },
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
                ),
                const SizedBox(height: 105,),
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
                              "Alredy have an account?",
                              style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.grey
                              ),
                            ),
                            const SizedBox(height: 160,),
                            GestureDetector(
                              onTap: (){
                              Navigator.pop(context);
                              },
                              child: const Text(
                                "Log in here",
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
            )
          ],
        ),
      ),
    );
  }
}
