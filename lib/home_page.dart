import 'package:flutter/material.dart';
import 'arts_page.dart'; 

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

class HomePage extends StatelessWidget {
  final List<ArtPiece> featuredArts = [
    ArtPiece(
      title: 'Golden Abstract',
      description: 'Luxury vibes with this gold-toned masterpiece.',
      imagePath: 'assets/pic1.webp',
    ),
    ArtPiece(
      title: 'Midnight Alley',
      description: 'Dark, mysterious, and moody — a real head-turner.',
      imagePath: 'assets/wetstreet.png',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Artibles')),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
  
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Image.asset(
              'assets/applogo.png',
              height: 250,
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Text(
              'See the latest Arts & Collectibles',
              style: TextStyle(fontSize: 24),
            ),
          ),
//product cards from artpage
          Expanded(
            child: ListView(
              padding: const EdgeInsets.only(bottom: 20),
              children: [
                ...featuredArts.map((art) => Padding(
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
                            Image.asset(
                              art.imagePath,
                              height: 180,
                              width: double.infinity,
                              fit: BoxFit.cover,
                            ),
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
                                      // sem 2 shit
                                    },
                                    child: Text('Buy'),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                SizedBox(height: 16),

                Center(
                  child: FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ArtsPage()),
                      );
                    },
                    child: Text('View All Art Pieces'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
