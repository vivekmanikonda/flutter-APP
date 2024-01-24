import 'dart:io' show Platform;
import 'package:flutter/material.dart';

class MapsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Google Maps Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Click the button to open Google Maps in a web browser.'),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                _openGoogleMaps();
              },
              child: Text('Open Google Maps'),
            ),
          ],
        ),
      ),
    );
  }

  void _openGoogleMaps() {
    const url = 'https://www.google.com/maps'; // Replace with your desired Google Maps URL
    if (Platform.isIOS) {
      // For iOS, use the Maps URL scheme
      launch('maps://?q=$url');
    } else if (Platform.isAndroid) {
      // For Android, use the Google Maps URL
      launch('https://www.google.com/maps');
    } else {
      // For other platforms, open in a web browser
      launch(url);
    }
  }
  
  void launch(String s) {}
}
