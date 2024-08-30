import 'package:flutter/material.dart';
import 'dos&dontslandslide.dart'; // Import the DoandDontsLandslidePage

class LandslidePage extends StatefulWidget {
  const LandslidePage({super.key});

  @override
  _LandslidePageState createState() => _LandslidePageState();
}

class _LandslidePageState extends State<LandslidePage> {
  String _selectedCategory = ''; // Track the selected category

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0, // Remove elevation for flat look
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.blue),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Column(
          children: [
            SizedBox(height: 16),
            Text(
              'Landslide',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Precautions to be taken',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.blue[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: EdgeInsets.all(16.0),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedCategory = 'Guide';
                      });
                    },
                    child: Text(
                      'Guide',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.blue[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: EdgeInsets.all(16.0),
                    ),
                    onPressed: () {
                      setState(() {
                        _selectedCategory = 'Checklists';
                      });
                    },
                    child: Text(
                      'Checklists',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.blue,
                      backgroundColor: Colors.blue[50],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                      padding: EdgeInsets.all(16.0),
                    ),
                    onPressed: () {
                      // Navigate to LandslideDoAndDontPage
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LandslideDoAndDontPage(),
                        ),
                      );
                    },
                    child: Text(
                      'Do\'s & Don\'ts',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Expanded(
              child: _buildContent(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContent() {
    if (_selectedCategory.isEmpty) {
      return Center(
        child: Text(
          'Select a category to see details.',
          style: TextStyle(fontSize: 18, color: Colors.grey),
        ),
      );
    }

    return SingleChildScrollView(
      child: Column(
        children: List.generate(5, (index) {
          return Container(
            margin: EdgeInsets.all(8.0),
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.blue[100],
              borderRadius: BorderRadius.circular(12.0),
              border: Border.all(
                color: Colors.white,
                width: 3,
              ),
            ),
            child: Column(
              children: [
                // Replace with your image or content
                Container(
                  height: 300,
                  color: Colors.grey[300],
                  child: Center(
                    child: Text(
                      'Image $index',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                // Text(
                //   'Description for item $index in $_selectedCategory.',
                //   style: TextStyle(fontSize: 16),
                // ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
