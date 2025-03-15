import 'package:flutter/material.dart';
import 'login_page.dart';

class ProfilePage extends StatelessWidget {
  final Map<String, dynamic> user;
  ProfilePage({required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 17, 143, 74),
      appBar: AppBar(
        title: Text("Profile"),
        backgroundColor: Color.fromARGB(255, 19, 126, 42),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start, // Centering vertically
            crossAxisAlignment:
                CrossAxisAlignment.center, // Centering horizontally
            children: [
              Icon(Icons.account_circle, size: 100, color: Colors.white),
              SizedBox(height: 20),

              Text(
                "Full Name: ${user['Full_Name']}",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10),
              // Email
              Text(
                "Email: ${user['Email']}",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 10),

              Text(
                "Username: ${user['Username']}",
                style: TextStyle(fontSize: 18, color: Colors.white),
              ),
              SizedBox(height: 40),

              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => LoginPage()));
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.orange,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text(
                  "Logout",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
