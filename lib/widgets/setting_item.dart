import 'package:flutter/material.dart';

class SettingItem extends StatelessWidget {
  const SettingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: double.infinity,
          child: Row(
            children: [
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue.shade100,
                ),
                child: Icon(
                  Icons.settings, // Choose an appropriate icon
                  color: Colors.blue,
                ),
              ),
              const SizedBox(width: 20),
              Text(
                "Account Settings",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20), // Add spacing between the rows
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Language",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(), // Pushes "English" and the arrow icon towards the end
            Padding(
              padding: const EdgeInsets.only(right: 16.0), // Extra padding on the right side
              child: Text(
                "English",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Icon(Icons.arrow_forward_ios),
            ),
          ],
        ),
      ],
    );
  }
}
