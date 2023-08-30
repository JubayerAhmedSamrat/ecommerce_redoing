import 'package:flutter/material.dart';

class ProductBox extends StatefulWidget {
  final String title;
  final String description;
  final Widget photo;

  const ProductBox({super.key, required this.title,
                    required this.description, required this.photo });

  @override
  State<ProductBox> createState() => _ProductBoxState();
}

class _ProductBoxState extends State<ProductBox> {
  var title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            child:Column(
              children: [
                // title
                Container(
                child: Text('$title'),
            ),
                // picture
                Container(),
                // description
                Container(),
              ],
            )
          )
        ],
      )
    );
  }
}
