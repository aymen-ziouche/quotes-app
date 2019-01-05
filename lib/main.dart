import 'package:flutter/material.dart';
import 'package:mobileapp/Madara_page.dart';
import 'package:mobileapp/home_page.dart';
import 'package:mobileapp/Minato_page.dart';
import 'package:mobileapp/Luffy_page.dart';

void main() => runApp(new QuoteApp());

class QuoteApp extends StatefulWidget {
  @override
  QuoteAppState createState() {
    return new QuoteAppState();
  }
}

class QuoteAppState extends State<QuoteApp> {
  List<Widget> pages = [HomePage(), MadaraPage(), MinatoPage(), Luffypage(),];

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Motivational Quote App',
      home: PageView.builder(
        itemCount: pages.length,
        itemBuilder: (BuildContext context, int index) => pages[index],
      ),
    );
  }
}