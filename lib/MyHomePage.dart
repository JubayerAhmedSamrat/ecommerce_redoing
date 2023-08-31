import 'package:ecommerce_redoing/ProductBox.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class MyHomePage extends StatefulWidget {

   MyHomePage({super.key});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
            body: Center(
              child: ProductBox(headerText: "This is new", footerText: "And new footer"
                  , photoPath:"assets/images/snacks.png"),
            ),
          );


  }
}
