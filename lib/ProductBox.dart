import 'package:flutter/material.dart';

class ProductBox extends StatefulWidget {
  String headerText;
  String footerText;
  String photoPath;

  ProductBox({super.key, required this.headerText,
                    required this.footerText, required this.photoPath });

  @override
  State<ProductBox> createState() => _ProductBoxState(headerText, footerText, photoPath);
}

class _ProductBoxState extends State<ProductBox> {


  _ProductBoxState(this.headerText, this.footerText, this.photoPath);

  String headerText;
  String footerText;
  String photoPath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(

          height: 400,
          width: 400,
          color: Colors.red,
          child: Column(
            children: [
              Expanded(
                  flex:1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.brown,
                    ),

                    child: Center(child: Text(headerText,
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)),

                  )
              ),
              Expanded(flex: 3,
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.yellow,
                        image: new DecorationImage(
                          image: new AssetImage(photoPath),
                          fit: BoxFit.fill,)
                    ),
                  )
              ),
              Expanded(flex: 1,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.teal,

                    ),
                    child: Center(child: Text(footerText,
                      style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),)),
                  )),

            ],

          ),
        )
    );
  }
}
