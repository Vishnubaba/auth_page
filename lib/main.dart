import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'expanded_demo_screen.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {

   runApp(const MyApp());
  //runApp(const ExpandedDemoScreen());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(36)),
        borderSide: BorderSide(
            color: const Color(0xffbbbbbb), width: 2));
    const linkTextStyle = TextStyle (
        fontSize: 18,
        fontWeight: FontWeight.bold,
        color: Color(0xFF0079D0));

    return MaterialApp(
      home: Scaffold(
          body: Container (
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/11.png"),
                    fit: BoxFit.cover,
              )
            ),
            width: double.infinity,
            height: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 60),
            child: SingleChildScrollView(
              child: Column(children: [
                SizedBox(height: 60,),
                const SizedBox(width: 110, height: 84, child: Image(image: AssetImage('assets/bird.png')),),
                SizedBox(height: 20,),
                Text('Введите логин в виде 10 цифр номера телефона',
                    style: TextStyle (fontSize: 16, color: Color.fromRGBO(0, 0, 0, 0.6)),),
                SizedBox(height: 20,),
                const TextField(
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration (
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    enabledBorder: borderStyle,
                    focusedBorder: borderStyle,
                    labelText: 'телефон',
                  ),
                ),
               SizedBox(height: 20,),
               const TextField(
                 obscureText: true,
                 decoration: InputDecoration (
                 filled: true,
                 fillColor: Color(0xFFeceff1),
                   enabledBorder: borderStyle,
                   focusedBorder: borderStyle,
                 labelText: 'пароль',
                 ),
                 ),
                SizedBox(height: 28,),
                SizedBox(width: 154, height: 42, child:
                ElevatedButton(onPressed: () {},
                  child: Text('Войти'),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFF0079D0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(36),
                    ),
                  ) ,
                )
                ),
                SizedBox(height: 32,),
              InkWell(child: const Text('Регистрация', style: linkTextStyle, ),
                  onTap: () {} ),
              SizedBox(height: 20,),
              InkWell(child: Text('Забыли пароль?', style: linkTextStyle,),
                  onTap: () {} ),


    ], ),
            ),
      ),
    ),
    );
  }
  }

