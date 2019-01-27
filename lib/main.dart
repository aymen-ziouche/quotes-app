import 'package:flutter/material.dart';
import 'background.dart';
import 'quote.dart';
import 'quotebox.dart';
import 'file.dart';

void main() => runApp(QuoteApp());

class QuoteApp extends StatelessWidget {
  Quote current_quote;

  Future<void> _saveFavorite() async {
    current_quote.save_favorite();
  }

  Future<void> _printFavorite() {
    Future<String> quotes = read('anime-quote-favorites.txt');
    print(quotes);
  }

  @override
  Widget build(BuildContext context) {
    //final screenWidth = MediaQuery.of(context).size.width;

    List<Quote> quotes_list = quotes();

    return MaterialApp(
      title: 'Anime Quotes App',
      home: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.favorite),
          onPressed: _saveFavorite,
        ),
        appBar: AppBar(
          title: const Text('Anime Quotes'),
          actions: <Widget>[
            // action button
            IconButton(
              icon: Icon(Icons.favorite),
              onPressed: _printFavorite,
            ),
            // action button
            IconButton(
              icon: Icon(Icons.verified_user),
            ),
            // overflow men
          ],
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the Drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Text('Drawer Header'),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
              ListTile(
                title: Text('user'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
              ListTile(
                title: Text('favorites'),
                onTap: () {
                  // Update the state of the app
                  // ...
                },
              ),
            ],
          ),
        ),
        body: Container(
          child: PageView.builder(
            itemCount: quotes().length,
            itemBuilder: (BuildContext context, int index) {
              current_quote = quotes_list[index];
              return Stack(children: <Widget>[
                PaintBackground(quotes_list[index].imageURL),
                PaintQuoteBox(
                    quotes_list[index].quote, quotes_list[index].personName)
              ]);
            },
          ),
        ),
      ),
    );
  }
}
