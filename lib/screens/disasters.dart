import 'package:flutter/material.dart';
import 'square.dart'; // Adjust the import according to your file structure

class DisastersPage extends StatelessWidget {
  const DisastersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(16.0), // Add padding around the ListView
        children: [
          // Title and Subtitle
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 50.0), // Adjust this value as needed
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Prepare',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8), // Space between title and subtitle
                  Text(
                    'Plan ahead to stay safe during disasters',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[600], // Lighter color for subtitle
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20), // Space between the title/subtitle and the squares

          // List of MySquare widgets with different titles
          Column(
            children: [
              MySquare(title: 'Flood'),
              MySquare(title: 'Rainfall'),
              MySquare(title: 'Landslides'),
              MySquare(title: 'Earthquakes'),
              MySquare(title: 'Tsunamis'),
            ],
          ),
        ],
      ),
    );
  }
}
