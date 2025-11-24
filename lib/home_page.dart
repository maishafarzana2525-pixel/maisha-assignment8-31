import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 226, 180, 195),
        foregroundColor: Colors.white,
        title: const Text("Homepage"),
        actions: [
          const Text("Setting"),
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.logout)),
        ],
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),

      drawer: NavigationDrawer(
        children: [
          const DrawerHeader(
            child: UserAccountsDrawerHeader(
              accountName: Text("Maisha Farzana"),
              accountEmail: Text("maisha123@gmail.com"),
            ),
          ),

          ListTile(
            onTap: () {},
            leading: const Icon(Icons.home),
            title: const Text("Home"),
          ),

          ListTile(
            onTap: () {},
            leading: const Icon(Icons.person),
            title: const Text("Profile"),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            // Image at the top
            Image.asset(
              'assets/images/img.png',
              height: 350,
              width: double.infinity,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            // Text below image
            Text(
              "Hello, Welcome to our project!!",
              textAlign: TextAlign.center,
              style: GoogleFonts.lobster(
                textStyle: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueGrey,
                foregroundColor: Colors.white,
                fixedSize: const Size(120, 35),
              ),
              child: const Text("Click"),
            ),

            const SizedBox(height: 20),

            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: Colors.brown,
                foregroundColor: Colors.white,
                fixedSize: const Size(120, 35),
                shape: const ContinuousRectangleBorder(),
              ),
              child: const Text("Hello"),
            ),

            const SizedBox(height: 20),

            OutlinedButton(
              onPressed: () {},
              child: const Text("OutlinedButton"),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
