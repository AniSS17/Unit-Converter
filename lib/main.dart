

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Buttons Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter Buttons'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              MaterialButton(
                onPressed: () {},
                minWidth: 30,
                child: Text('Button 1'),
                color: Colors.black,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18.0)),
              ),
              SizedBox(height: 10),
              MaterialButton(
                onPressed: () {},
                child: Text('Button 2'),
                color: Colors.red,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                ),
              ),
              SizedBox(height: 10),
              MaterialButton(
                onPressed: () {},
                child: Text("Button 3"),
                // icon: Icon(Icons.add),
                // label: Text('Button 3'),
                color: Colors.green,
                textColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              SizedBox(height: 10),
              MaterialButton(
                onPressed: () {},
                child: Text('Button 4'),
                color: Colors.orange,
                textColor: Colors.white,
                shape: StadiumBorder(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
