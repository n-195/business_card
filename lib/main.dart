import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black12,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 75.0,

                // Add your image to the images directory and then add it here below
                backgroundImage: AssetImage('images/YOUR_IMAGE_HERE.jpg'),
              ),
              Text(
                'NAME',
                style: TextStyle(
                  fontFamily: 'Mooli',
                  fontSize: 30.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'DESCRIPTION',
                style: TextStyle(
                  fontFamily: 'SourceSans3',
                  fontSize: 15.0,
                  color: Colors.blueGrey,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(
                  color: Colors.blueGrey,
                ),
              ),
              Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      'MOBILE NUMBER',
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontFamily: 'SourceSans3',
                        fontSize: 20.0,
                      ),
                    ),
                  )),
              Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.blueGrey,
                    ),
                    title: Text(
                      'MAIL ID',
                      style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blueGrey,
                          fontFamily: 'SourceSans3'),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}

// What has been achieved using Card and ListTile, could also be achieved using
// Container and Row elements but the reason to use this is simply it helps to
// down the number of lines of code as well as inherently provides the features
// otherwise obtained using Container, Row or Card, Padding and Row/Column elements.
