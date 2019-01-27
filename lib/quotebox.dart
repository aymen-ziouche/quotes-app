import 'package:flutter/material.dart';

class PaintQuoteBox extends StatelessWidget {
  final String quote;
  final String personName;

  PaintQuoteBox(this.quote, this.personName);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FractionallySizedBox(
        widthFactor: 0.7,
        child: Container(
            padding: const EdgeInsets.all(15.0),
            //here we can add color property but im gonna use box decoration
            decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                color: Colors.black.withOpacity(0.4),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black26,
                    offset: Offset(5.0, 5.0),
                    blurRadius: 5.0,
                  ),
                ]),
            child: Column(
              mainAxisSize: MainAxisSize.min, // keep remember to add this line
              children: <Widget>[
                Text(quote,
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Gaegu',
                      fontSize: 22.0,
                    )),
                Container(
                  alignment: Alignment.bottomRight,
                  padding: const EdgeInsets.only(top: 10.0),
                  child: Text('~ ' + personName,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15.0,
                        fontFamily: 'Tajawal',
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.5,
                      )),
                )
              ],
            )),
      ),
    );
  }
}
