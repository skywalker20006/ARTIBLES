import 'package:flutter/material.dart';

class ArtPiece {
  final String title;
  final String description;
  final String imagePath;

  ArtPiece({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

class ArtsPage extends StatelessWidget {
  final List<ArtPiece> arts = [
    ArtPiece(
      title: 'Wet Dew Street',
      description: 'A dreamy night sky painted by Van Gogh, full of swirls and stars.',
      imagePath: 'assets/wetstreet.png',
    ),
    ArtPiece(
      title: 'Bingo the Destroyer',
      description: 'A wild existential being captured in a single frame.',
      imagePath: 'assets/pic1.webp',
    ),
    ArtPiece(
      title: 'Yellow Clawer',
      description: 'The bot with the mysterious claw –  classic.',
      imagePath: 'assets/pic2.webp',
    ),
    ArtPiece(
      title: 'Lonely Kayak',
      description: 'That side-glance and pearl combo? Timeless drip.',
      imagePath: 'assets/kayak picture.jpg',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Art Pieces')),
      body: ListView.builder(
        itemCount: arts.length,
        itemBuilder: (context, index) {
          final art = arts[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
            child: Card(
              elevation: 2,
              clipBehavior: Clip.antiAlias,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Image for each art piece
                  Image.asset(
                    art.imagePath,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  // Content
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          art.title,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(height: 8),
                        Text(
                          art.description,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(height: 16),
                        FilledButton(
                          onPressed: () {
                            // you can add a buy function here later
                          },
                          child: Text('Buy'),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
