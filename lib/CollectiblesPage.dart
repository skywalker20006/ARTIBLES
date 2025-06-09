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
      title: 'Signed Jersey',
      description: 'Authentic match-worn jersey signed by a football legend.',
      imagePath: 'assets/jersey.jpg',
    ),
    CollectibleItem(
      title: 'Rare Coin',
      description: 'Ancient currency with a rich backstory and timeless value.',
      imagePath: 'assets/coin.jpg',
    ),
    CollectibleItem(
      title: 'Autographed Guitar',
      description: 'Signed by a rock icon, this guitar’s got history in every string.',
      imagePath: 'assets/guitar.jpg',
    ),
    CollectibleItem(
      title: 'Limited Edition Poster',
      description: 'Numbered collector’s item, exclusive print run. Hang it with pride.',
      imagePath: 'assets/poster.jpg',
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
