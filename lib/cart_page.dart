import 'package:flutter/material.dart';
import 'profilepage.dart';

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
                    title: Text('Bingo the User - Rs.15,000'),
                    trailing: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
        
                      },
                    ),
                  ),
                ),
                Card(
                  child: ListTile(
                    title: Text('Midnight Alley - Rs.25,000'),
                    trailing: IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
             
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),

          // checkout including snackbar
          Padding(
            padding: const EdgeInsets.all(16),
            child: FilledButton.icon(
              onPressed: () {
                // Show snackbar
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text('Checkout complete! | CPEX Couriers will deliver soon'),
                    backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                    behavior: SnackBarBehavior.floating,
                    duration: Duration(seconds: 3),
                  ),
                );
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
