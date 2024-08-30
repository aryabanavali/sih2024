import 'package:flutter/material.dart';

import '../main.dart';

void main() {
  runApp(MyApp());
}

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();

  void _nextPage() {
    if (_pageController.page?.toInt() == 2) {
      // Navigate to another screen or home screen if you are on the last page
      // For example: Navigator.pushReplacementNamed(context, '/home');
    } else {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: [
          OnboardingPage(
            title: 'Prepare for Disasters',
            description:
            'Learn how to prepare and protect yourself before a disaster strikes.',
            imageAsset: 'assets/images/intro1.png',
            imageHeight: 200, // Set the desired image height
            imageWidth: double.infinity, // Set the desired image width
            onNext: _nextPage,
          ),
          // OnboardingPage(
          //   title: 'Stay Informed',
          //   description:
          //   'Receive timely alerts and updates about ongoing disasters in your area.',
          //   imageAsset: 'assets/images/image2.png',
          //   imageHeight: 200, // Set the desired image height
          //   imageWidth: double.infinity, // Set the desired image width
          //   onNext: _nextPage,
          // ),
          // OnboardingPage(
          //   title: 'Respond Effectively',
          //   description:
          //   'Get guidance on how to respond effectively during and after a disaster.',
          //   imageAsset: 'assets/images/image3.png',
          //   imageHeight: 200, // Set the desired image height
          //   imageWidth: double.infinity, // Set the desired image width
          //   onNext: _nextPage,
          // ),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;
  final String imageAsset;
  final double imageHeight;
  final double imageWidth;
  final VoidCallback onNext;

  const OnboardingPage({
    required this.title,
    required this.description,
    required this.imageAsset,
    required this.imageHeight,
    required this.imageWidth,
    required this.onNext,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            imageAsset,
            height: imageHeight, // Use the adjustable height
            width: imageWidth, // Use the adjustable width
            fit: BoxFit.cover, // Ensure the image covers the space without distortion
          ),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 20),
          Text(
            description,
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40), // Add spacing between text and button
          ElevatedButton(
            onPressed: onNext,
            child: Text(
              'Next',
              style: TextStyle(color: Colors.white), // White text color
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue, // Background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12), // Rounded corners
              ),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40), // Increased size
              minimumSize: Size(double.infinity, 60), // Increased height and full width
            ),
          ),
          SizedBox(height: 20), // Add space below the button
        ],
      ),
    );
  }
}
