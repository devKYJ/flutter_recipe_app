import 'package:flutter/material.dart';
import 'package:recipe_app/pages/recipe_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp();

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     debugShowCheckedModeBanner: false,
     theme: ThemeData(fontFamily: "PatuaOne"),//폰트
     home: RecipePage(),
   );
  }
}

