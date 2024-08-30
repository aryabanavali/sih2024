import 'package:flutter/material.dart';


class EarthquakeDoAndDontPage extends StatelessWidget {
  const EarthquakeDoAndDontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Earthquake Precautions'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Precautions During Earthquakes',
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
                          Text('• Drop, Cover, and Hold On during shaking.'),
                          SizedBox(height: 8.0),
                          Text('• Stay indoors and away from windows and glass doors.'),
                          SizedBox(height: 8.0),
                          Text('• If you are outside, move away from buildings, trees, and power lines.'),
                          SizedBox(height: 8.0),
                          Text('• If you are driving, pull over to a safe spot and stay in the vehicle.'),
                          SizedBox(height: 8.0),
                          Text('• Have an emergency kit prepared with essentials.'),
                          SizedBox(height: 8.0),
                          Text('• Plan and practice earthquake drills with your family.'),
                          SizedBox(height: 8.0),
                          Text('• Check for injuries and provide first aid if necessary.'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('• Do not run outside during shaking.'),
                          SizedBox(height: 8.0),
                          Text('• Avoid using elevators during or after an earthquake.'),
                          SizedBox(height: 8.0),
                          Text('• Do not use matches, candles, or open flames if you suspect a gas leak.'),
                          SizedBox(height: 8.0),
                          Text('• Avoid moving injured people unless they are in immediate danger.'),
                          SizedBox(height: 8.0),
                          Text('• Do not rush to call emergency services unless necessary.'),
                          SizedBox(height: 8.0),
                          Text('• Avoid touching fallen power lines.'),
                          SizedBox(height: 8.0),
                          Text('• Do not panic or make hasty decisions that could lead to injury.'),
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
