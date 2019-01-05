import 'package:flutter/material.dart';
import 'background.dart';
import 'quote_model.dart';
import 'component.dart';
import 'Madara_page.dart';

class SasukePage extends StatelessWidget {
  final Quote quoteObj = quotes[4];
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new Stack(
        children: <Widget>[
          new ApplyBackground(quoteObj.imageURL),
          new ComponentRow(quoteObj.quote, quoteObj.personName, route: MadaraPage(),)
        ],
      ),
    );
  }
}