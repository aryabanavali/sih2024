import 'package:flutter/material.dart';

class Loginsignup extends StatelessWidget {
  const Loginsignup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
          icon: Icon(Icons.arrow_forward_ios, color: Colors.white),
        ),
        leadingWidth:100,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center, // Center children horizontally
          children: [
            // Logo Image
            Image.asset(
              'assets/images/logo_sih_edited.png', // Replace with your logo asset path
              height: 200, // Adjust height as needed
              width: 200,  // Adjust width as needed
            ),
            const SizedBox(height: 50), // Space between logo and buttons

            // Button Container
            SizedBox(
              width: double.infinity, // Make container take full width
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/login'); // Navigate to login page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[300], // Background color
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14), // Rounded corners
                  ),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20), // Space between buttons

            // Button Container
            SizedBox(
              width: double.infinity, // Make container take full width
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup'); // Navigate to signup page
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[300], // Background color
                  padding: const EdgeInsets.symmetric(vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14), // Rounded corners
                  ),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
