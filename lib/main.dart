import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
//import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container (
            width: double.infinity,
            child: Column(children: [
              SizedBox(height: 60,),
              SizedBox(width: 110, height: 84, child: Placeholder(),),
              SizedBox(height: 20,),
              Text('Введите логин в виде 10 цифр номера телефона'),
              SizedBox(height: 20,),
              const SizedBox(width: 224,
                child: TextField(
                  decoration: InputDecoration (
                    filled: true,
                    fillColor: Color(0xFFeceff1),
                    labelText: 'телефон',
                  ),
                ),
              ),
             SizedBox(height: 20,),
             const SizedBox(width: 224,
              child: TextField(
                obscureText: true,
                decoration: InputDecoration (
                filled: true,
                fillColor: Color(0xFFeceff1),
                labelText: 'пароль',
                ),
                ),
                ),
              SizedBox(height: 28,),
            SizedBox(width: 154, height: 42, child: ElevatedButton(onPressed: () {}, child: Text('Войти'))),
              SizedBox(height: 62,),
              InkWell(child: Text('Регистрация'),onTap: () {} ),
              SizedBox(height: 20,),
              InkWell(child: Text('Забыли пароль'),onTap: () {} ), 


    ], ),
      ),
    ),
    );
  }
  }

//0079D0