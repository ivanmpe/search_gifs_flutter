import 'package:flutter/material.dart';
import 'package:share/share.dart';

class GifPage extends StatelessWidget {
  final Map gifData;
  GifPage(this.gifData);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(gifData["title"]),
        textTheme: TextTheme(title: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share(gifData["images"]["fixed_height"]["url"]);
            },
            color: Colors.white,
          ),
        ],
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Image.network(gifData["images"]["fixed_height"]["url"]),
      ),
    );
  }
}
