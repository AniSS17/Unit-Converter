import 'package:ebook/routes.dart';
import 'package:flutter/material.dart';

import 'kmm.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Buttons Example',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Unit Converter'),
          backgroundColor: Colors.black,
        ),
        body: Center(
          child: SizedBox(
            width: 500,
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context,MyRoutes.KmMiles);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      child: Text('km to miles'),
                      // color: Colors.black,
                      // textColor: Colors.white,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(10.0),
                      // ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text('miles to km'),
                      color: Colors.black,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {},
                      child: Text('  ℃ to ℉  '),
                      color: Colors.black,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text('  ℉ to ℃  '),
                      color: Colors.black,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    MaterialButton(
                      onPressed: () {},
                      child: Text('kg to pounds'),
                      color: Colors.black,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text('pounds to kg'),
                      color: Colors.black,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      initialRoute: "/",
      routes: {
        // "/":(context) => MyApp(),
        MyRoutes.KmMiles:(context) => KmMiles(),
        // MyRoutes.MilesKm:(context) => MilesKm(),
        // MyRoutes.CtoF:(context) => CtoF(),
        // MyRoutes.FtoC:(context) => FtoC(),
        // MyRoutes.KgPounds:(context) => KgPounds(),
        // MyRoutes.PoundsKg:(context) => PoundsKg(),
      },
    );
  }
}
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
        backgroundColor: Colors.black,
      ),
      body: Center(
          child: SizedBox(
            width: 500,
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context,MyRoutes.KmMiles);
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                      ),
                      child: Text('km to miles'),
                      // color: Colors.black,
                      // textColor: Colors.white,
                      // shape: RoundedRectangleBorder(
                      //   borderRadius: BorderRadius.circular(10.0),
                      // ),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text('miles to km'),
                      color: Colors.black,
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
    );
  }
}

class DistanceConverter1Screen extends StatefulWidget {
  @override
  _DistanceConverter1ScreenState createState() => _DistanceConverter1ScreenState();
}

class _DistanceConverter1ScreenState extends State<DistanceConverter1Screen> {
  TextEditingController kmController = TextEditingController();
  TextEditingController mileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kilometer to Mile Converter'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: kmController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Kilometers',
                  hintText: 'Enter the distance in kilometers',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _convert,
              child: Text('Convert'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: mileController,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Miles',
                  hintText: 'The distance in miles will appear here',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _convert() {
    double km = double.tryParse(kmController.text) ?? 0.0;
    double miles = km * 0.621371;
    mileController.text = miles.toStringAsFixed(2);
  }
}
class DistanceConverter2Screen extends StatefulWidget {
  @override
  _DistanceConverter2ScreenState createState() => _DistanceConverter2ScreenState();
}

class _DistanceConverter2ScreenState extends State<DistanceConverter2Screen> {
  TextEditingController kmController = TextEditingController();
  TextEditingController mileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mile to km Converter'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: kmController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Miles',
                  hintText: 'Enter the distance in miles',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: _convert,
              child: Text('Convert'),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: mileController,
                enabled: false,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'km',
                  hintText: 'The distance in km will appear here',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _convert() {
    double km = double.tryParse(kmController.text) ?? 0.0;
    double miles = km * 1.6093;
    mileController.text = miles.toStringAsFixed(2);
  }
}

