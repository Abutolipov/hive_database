import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_database/pages/home_page.dart';
import 'package:hive_database/pages/ikkinchi_ui_second_page.dart';
import 'package:hive_database/pages/ikkini_ui_homepage.dart';
import 'package:hive_database/pages/secondPage.dart';
import 'package:hive_flutter/hive_flutter.dart';

Future<void> main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox("third_dataBase");
  runApp(Home());
}
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      routes: {
        HomePage.id:(context)=>HomePage(),
        ScecondPage.id:(context)=>ScecondPage(),
        SecondHomePage.id:(context)=>SecondHomePage(),
        SecondSecond.id:(context)=>SecondSecond(),
      },
    );
  }

}