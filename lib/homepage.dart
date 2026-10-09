import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Defined a central theme color for consistency
    const primaryColor = Colors.indigo;

    return Scaffold(
      backgroundColor: Colors.grey[50], 
      appBar: AppBar(
        title: const Text(
          "Homepage", 
          style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 0.5),
        ),
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 0, // Flat design approach
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: [
            const UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: primaryColor,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(16),
                ),
              ),
              accountName: Text("Name", style: TextStyle(fontWeight: FontWeight.bold)),
              accountEmail: Text("Email@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person, color: primaryColor, size: 35),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.home, color: primaryColor),
              title: const Text("Homepage", style: TextStyle(fontWeight: FontWeight.w500)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.call, color: primaryColor),
              title: const Text("Contact Me", style: TextStyle(fontWeight: FontWeight.w500)),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.feedback, color: primaryColor),
              title: const Text("Feedback", style: TextStyle(fontWeight: FontWeight.w500)),
              onTap: () {},
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                "© 2026 Copyright",
                style: TextStyle(color: Colors.grey[500], fontSize: 12),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        backgroundColor: primaryColor,
        foregroundColor: Colors.white,
        elevation: 4,
        icon: const Icon(Icons.message),
        label: const Text("Message"), 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Pill-shaped styled TextButton
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.indigo.withOpacity(0.1),
                foregroundColor: primaryColor,
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              ),
              child: const Text("Indigo"),
            ),
            
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
                elevation: 2,
              ),
              child: const Text("Primary"),
            ),
            
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                foregroundColor: primaryColor,
                side: const BorderSide(color: primaryColor, width: 1.5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Outline"),
            ),
            // Cleaner Icon Button
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.alarm),
              color: Colors.grey[700],
              style: IconButton.styleFrom(
                hoverColor: Colors.grey[200],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
