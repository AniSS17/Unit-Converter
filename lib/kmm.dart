import 'package:flutter/material.dart';
class KmMiles extends StatefulWidget {
  const KmMiles({super.key});

  @override
  State<KmMiles> createState() => _KmMilesState();
}

class _KmMilesState extends State<KmMiles> {
  TextEditingController kmController = TextEditingController();
  TextEditingController mileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kilometer to Mile Converter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kilometer to Mile Converter'),
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
      ),
    );
  }

  void _convert() {
    double km = double.tryParse(kmController.text) ?? 0.0;
    double miles = km * 0.621371;
    mileController.text = miles.toStringAsFixed(2);
  }
}



