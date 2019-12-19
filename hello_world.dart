import 'package:flutter/material.dart';

class MyApp extends StatelessWidget{
  @override
  Widget build(context ) {

    return MaterialApp(
      //Oculta el banner de 'debug'
      debugShowCheckedModeBanner: false,
      home: Center(
        child:Text('Primera App'),
      ),
    );

  }
}
