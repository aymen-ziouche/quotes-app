import 'package:flutter/material.dart';
import 'Luffy_page.dart';
import 'background.dart';
import 'component.dart';
import 'quote_model.dart';

class MinatoPage extends StatelessWidget {
  final Quote quoteObj = quotes[2];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new ApplyBackground(quoteObj.imageURL),
          new ComponentRow(quoteObj.quote, quoteObj.personName, route: Luffypage(),)
        ],
      ),
    );
  }
}