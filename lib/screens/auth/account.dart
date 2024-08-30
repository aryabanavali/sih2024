import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context); // Go back to the previous screen
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        leadingWidth: 100,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0), // Add padding around the body
        children: [
          Text(
            "Account",
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          // Text(
          //   "Account",
          //   style: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.w500,
          //   ),
          // ),
          const SizedBox(height: 20),
          Container(
            width: double.infinity,
            child: Row(
              children: [
                Image.asset(
                  "assets/images/img.png", // Add the actual image asset path
                  width: 70,
                  height: 70,
                ),
                const SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Arya Banavali",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text(
                      "Location: Thane",
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Spacer(),
                // Container(
                //   width: 60,
                //   height: 60,
                //   decoration: BoxDecoration(
                //     color: Colors.grey.shade200,
                //     borderRadius: BorderRadius.circular(15),
                //   ),
                //   child: Icon(Icons.arrow_forward_ios),
                // ),
              ],
            ),
          ),
          // Text(
          //   "Settings",
          //   style: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.w500,
          //   ),
          // ),
          // Container(
          //   width: double.infinity,
          //   child: Row(
          //     children: [
          //       Container(
          //         height: 50,
          //         width: 50,
          //         decoration: BoxDecoration(
          //           shape: BoxShape.circle,
          //           color: Colors.blue.shade100,
          //         ),
          //         child: Icon(
          //           Icons.settings, // Choose an appropriate icon
          //           color: Colors.blue,
          //         ),
          //       ),
          //       const SizedBox(width: 20),
          //       // Text(
          //       //   "Account Settings",
          //       //   style: TextStyle(
          //       //     fontSize: 16,
          //       //     fontWeight: FontWeight.w500,
          //       //   ),
          //       //
          //       // ),
          //     ],
          //   ),
          // ),
          const SizedBox(height: 20),
          // Add Disaster Management Sections
          DisasterManagementItem(
            icon: Icons.settings,
            title: "Account Settings",
            description: "Check your account",
          ),
          DisasterManagementItem(
            icon: Icons.contact_phone,
            title: "Emergency Contacts",
            description: "Manage your emergency contacts",
          ),
          DisasterManagementItem(
            icon: Icons.warning,
            title: "Disaster Preparedness",
            description: "Tips and guidelines for disaster preparedness",
          ),
          DisasterManagementItem(
            icon: Icons.security,
            title: "Safety Measures",
            description: "Important safety measures to follow",
          ),
          DisasterManagementItem(
            icon: Icons.map,
            title: "Evacuation Plan",
            description: "View and manage your evacuation plan",
          ),
          DisasterManagementItem(
            icon: Icons.help,
            title: "First Aid",
            description: "First aid procedures and information",
          ),
        ],
      ),
    );
  }
}

class DisasterManagementItem extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;

  const DisasterManagementItem({
    required this.icon,
    required this.title,
    required this.description,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Container(
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
                icon,
                color: Colors.blue,
              ),
            ),
            const SizedBox(width: 20),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 5),
                  Text(
                    description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 10),
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
      ),
    );
  }
}
