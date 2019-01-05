import 'package:flutter/material.dart';
import 'background.dart';
import 'Sasuke_page.dart';
import 'component.dart';
import 'quote_model.dart';

class Luffypage extends StatelessWidget {
  final Quote quoteObj = quotes[3];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new ApplyBackground(quoteObj.imageURL),
          new ComponentRow(quoteObj.quote, quoteObj.personName, route: SasukePage(),)
        ],
      ),
    );
  }
}