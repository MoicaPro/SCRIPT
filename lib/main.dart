import 'package:flutter/material.dart';
import 'package:practica01/Registro.dart';

import 'principal.dart';

void main () => runApp (MaterialApp(
  debugShowCheckedModeBanner: false,
   routes: <String,WidgetBuilder>{
        "/Registro":(BuildContext context)=> Registro(),
         "/principal":(BuildContext context)=> principal(),
      },
  home: MyApp(),

));

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: principal(),
    );
  }
}