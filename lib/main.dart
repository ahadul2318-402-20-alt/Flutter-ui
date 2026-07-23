import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My Profile",
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfffdf7ff),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        elevation: 0,
        centerTitle: false,
        title: const Text(
          "My Profile",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: const [
          Icon(Icons.add, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.settings, color: Colors.black),
          SizedBox(width: 15),
          Icon(Icons.phone, color: Colors.black),
          SizedBox(width: 15),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              profileItem(
                Icons.icecream,
                "Ice cream is very delicious right?",
              ),
              const SizedBox(height: 40),
              profileItem(
                Icons.code,
                "Programming is not boring if you love it",
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget profileItem(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 55,
            backgroundColor: const Color(0xffE8DDFB),
            child: Icon(
              icon,
              size: 60,
              color: const Color(0xff311B92),
            ),
          ),
          const SizedBox(height: 15),
          SizedBox(
            width: 280,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}