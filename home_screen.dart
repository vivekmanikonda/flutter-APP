import 'package:flutter/material.dart';
import 'package:flutter_application_1/maps_page.dart';
import 'login_screen.dart';

class HomeScreen extends StatelessWidget {
  final String username;

  HomeScreen(this.username);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClearNav'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Welcome, $username, to the ClearNav!'),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {
                  // Navigate back to the login screen
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );
                },
                child: Text('Logout'),
              ),
              SizedBox(height: 16.0),
              ElevatedButton (
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => MapsPage()),
                  );
                  // Handle the "Open Maps" button press
                 
                },
                
                child: Text('Open Maps'),
                
              ),
            ],
          ),
        ),
      ),
    );
  }

 
}

