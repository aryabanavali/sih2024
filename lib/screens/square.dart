import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  final String title;

  const MySquare({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 120,
        decoration: BoxDecoration(
          color: Colors.lightBlueAccent, // Background color of the container
          borderRadius: BorderRadius.circular(12), // Rounded corners
          border: Border.all(
            color: Colors.blueAccent, // Border color
            width: 1.5, // Border width
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2), // Shadow color with opacity
              spreadRadius: 2, // Spread radius of the shadow
              blurRadius: 4, // Blur radius of the shadow
              offset: Offset(0, 2), // Offset of the shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, // Space between title and icon
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0), // Horizontal padding for text
                child: Center(
                  child: Text(
                    title, // Display the title passed to the widget
                    style: TextStyle(
                      color: Colors.white, // Text color
                      fontSize: 18, // Text size
                      fontWeight: FontWeight.bold, // Text weight
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 16.0), // Adjust right padding for icon
              child: Icon(
                Icons.arrow_forward_ios, // Right arrow icon
                color: Colors.white, // Icon color
                size: 20, // Icon size
              ),
            ),
          ],
        ),
      ),
    );
  }
}
