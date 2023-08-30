import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {

  String headerText;
  String footerText;

   MyHomePage({super.key, required this.headerText,  required this.footerText});


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final obj = MyHomePage(headerText: 'hihead', footerText: 'hifoot',);
  // String headerText = "this is header";
  // String footerText = obj.footerText;


  @override
  Widget build(BuildContext context) {

    return  Scaffold(
        body: Center(
          child: Container(

            height: 400,
            width: 400,
            color: Colors.red,
            child: Column(
              children: [
                Expanded(
                    flex:1,
                    child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.brown,


                      ),
                      child: Center(child: Text(obj.headerText,
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)),

                    )
                ),
                Expanded(flex: 3,
                    child: Container(
                      width: 400,

                      decoration: BoxDecoration(
                          color: Colors.yellow,
                          image: new DecorationImage(
                            image: new AssetImage('assets/images/snacks.png'),
                            fit: BoxFit.fill,)
                      ),
                    )),
                Expanded(flex: 1,
                    child: Container(
                      width: 400,
                      decoration: BoxDecoration(
                        color: Colors.teal,

                      ),
                      child: Center(child: Text(obj.footerText,
                        style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)),
                    )),

              ],

            ),
          ),
        )
    );
  }
}
