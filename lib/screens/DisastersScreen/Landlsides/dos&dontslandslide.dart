import 'package:flutter/material.dart';

class LandslideDoAndDontPage extends StatelessWidget {
  const LandslideDoAndDontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Landslide Do\'s & Don\'ts'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Precautions During Landslides',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            SizedBox(height: 16.0),
            Table(
              border: TableBorder.all(
                color: Colors.blueAccent,
                width: 1,
              ),
              columnWidths: {
                0: FlexColumnWidth(1),
                1: FlexColumnWidth(1),
              },
              children: [
                TableRow(
                  decoration: BoxDecoration(
                    color: Colors.blue[50],
                  ),
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Dos:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Don\'ts:',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('• Move to a safer location immediately if landslides are imminent.'),
                          SizedBox(height: 8.0),
                          Text('• Stay away from steep slopes and unstable ground.'),
                          SizedBox(height: 8.0),
                          Text('• Keep emergency supplies ready, including food, water, and medications.'),
                          SizedBox(height: 8.0),
                          Text('• Follow local authorities’ instructions and evacuate if instructed.'),
                          SizedBox(height: 8.0),
                          Text('• Inform family members and loved ones about your safety.'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('• Do not ignore warnings about landslides.'),
                          SizedBox(height: 8.0),
                          Text('• Avoid driving through areas prone to landslides.'),
                          SizedBox(height: 8.0),
                          Text('• Do not return to an area affected by a landslide until it is declared safe.'),
                          SizedBox(height: 8.0),
                          Text('• Avoid using electrical appliances in affected areas.'),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
