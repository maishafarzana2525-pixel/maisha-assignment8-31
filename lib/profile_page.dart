import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: const Text("Profile Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: 220,
              padding: const EdgeInsets.all(20),
              margin: const EdgeInsets.all(20),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 90, 140, 150),
                border: Border.all(width: 3, color: Colors.white),
                borderRadius: const BorderRadius.all(Radius.circular(25)),
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 2,
                  ),
                ],
              ),
              child: SingleChildScrollView(
                child: Column(
                  children: const [
                    Text(
                      "Welcome to our profile page....",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 15),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            SizedBox(
              height: 180,
              width: 260,
              child: Card(
                color: Colors.blueGrey.shade300,
                shape: const CircleBorder(),
                elevation: 8,
                child: const Center(
                  child: Text(
                    "Hello card",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
