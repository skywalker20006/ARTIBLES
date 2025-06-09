import 'package:flutter/material.dart';
import 'package:madapp/ItemDetailPage.dart';

class CollectibleItem {
  final String title;
  final String description;
  final String imagePath;

  CollectibleItem({
    required this.title,
    required this.description,
    required this.imagePath,
  });
}

class CollectiblesPage extends StatelessWidget {
  final List<CollectibleItem> collectibles = [
    CollectibleItem(
      title: 'Fake Captain Americ',
      description: 'The captain america you all hate but love in thunderbolts',
      imagePath: 'assets/pic4.webp',
    ),
    CollectibleItem(
      title: 'White Cyborg',
      description: 'White version of a T-rex',
      imagePath: 'assets/pic5.webp',
    ),
    CollectibleItem(
      title: 'Geeked Avatar',
      description: 'That one blue avatar you see in that movie',
      imagePath: 'assets/pic6.webp',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Collectibles')),
      body: ListView.builder(
        itemCount: collectibles.length,
        itemBuilder: (context, index) {
          final item = collectibles[index];
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
                  // Image section
                  Image.asset(
                    item.imagePath,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  // Content section
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.title,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        SizedBox(height: 8),
                        Text(
                          item.description,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FilledButton(
                              onPressed: () {
                                //logic shii sme 1
                              },
                              child: Text('Buy'),
                            ),
                            TextButton.icon(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => ItemDetailPage(title: item.title),
                                  ),
                                );
                              },
                              icon: Icon(Icons.info_outline),
                              label: Text('Details'),
                            ),
                          ],
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
