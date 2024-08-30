import 'package:flutter/material.dart';

class DoandDontPage extends StatelessWidget {
  const DoandDontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Precautions During Floods',
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
                          Text('• Move to higher ground immediately if you are in a flood-prone area.'),
                          SizedBox(height: 8.0),
                          Text('• Keep emergency supplies ready, including food, water, and medications.'),
                          SizedBox(height: 8.0),
                          Text('• Stay tuned to weather reports and follow local authorities’ instructions.'),
                          SizedBox(height: 8.0),
                          Text('• Evacuate if instructed to do so by emergency services.'),
                          SizedBox(height: 8.0),
                          Text('• Avoid walking or driving through floodwaters.'),
                          SizedBox(height: 8.0),
                          Text('• Ensure your home is safe and secure to prevent water from entering.'),
                          SizedBox(height: 8.0),
                          Text('• Have a communication plan with family members and loved ones.'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('• Do not ignore evacuation orders.'),
                          SizedBox(height: 8.0),
                          Text('• Avoid using electrical appliances or outlets if they are wet.'),
                          SizedBox(height: 8.0),
                          Text('• Do not attempt to drive through flooded areas.'),
                          SizedBox(height: 8.0),
                          Text('• Avoid drinking floodwater as it may be contaminated.'),
                          SizedBox(height: 8.0),
                          Text('• Do not let children play in floodwaters.'),
                          SizedBox(height: 8.0),
                          Text('• Do not return to your home until authorities confirm it is safe.'),
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
