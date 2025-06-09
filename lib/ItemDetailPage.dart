import 'package:flutter/material.dart';


class ItemDetailPage extends StatelessWidget {
  final String title;

  ItemDetailPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Hero(
              tag: title,
              child: Icon(Icons.image, size: 100),
            ),
            SizedBox(height: 20),
            Text(
              '$title is one of the finest pieces in our collection.',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
