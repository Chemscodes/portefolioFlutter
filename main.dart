import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Portefolio'),
          backgroundColor: const Color.fromARGB(255, 4, 81, 119),
          actions: const [
            Icon(Icons.home, color: Colors.amber),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
            Icon(Icons.account_circle, color: Colors.green),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
            Icon(Icons.settings, color: Colors.amber),
            Padding(padding: EdgeInsets.symmetric(horizontal: 16)),
          ],
        ),

        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/me.jpg'),
                ),
                SizedBox(height: 20),
                Text(
                  'Zaouali Chems Eddine',
                  style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  'Fullstack Developer',
                  style: TextStyle(fontSize: 18, color: Colors.grey[700]),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Action for contact button
                  },
                  child: Text('Contact Me'),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  );
}
