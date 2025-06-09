import 'package:flutter/material.dart';
import 'MyProfilePage.dart';

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Profile & Cart')),
      body: Column(
        children: [
          // Profile section
          Card(
            margin: EdgeInsets.all(16),
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    child: Icon(Icons.person, size: 30),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      'Welcome, Sandul',
                      style: Theme.of(context).textTheme.titleMedium,
                    ),
                  ),
                  FilledButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => MyProfilePage()),
                      );
                    },
                    child: Text('My Profile'),
                  ),
                ],
              ),
            ),
          ),

          // Cart section
          Expanded(
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 16),
              children: [
                Card(
                  child: ListTile(
                    title: Text('Starry Night - Rs.150,000'),
                    trailing: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        // No logic, just for show 💀
                      },
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('Rare Coin - Rs.25,000'),
                    trailing: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        // Just aesthetic, mate
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Checkout button
          Padding(
            padding: const EdgeInsets.all(16),
            child: FilledButton.icon(
              onPressed: () {
                // Checkout logic goes here
              },
              icon: Icon(Icons.shopping_cart_checkout),
              label: Text('Checkout'),
              style: FilledButton.styleFrom(
                minimumSize: Size.fromHeight(50),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
