import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Navigation Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/first': (context) => FirstPage(),
        '/second': (context) => SecondPage(),
        '/third': (context) => ThirdPage(),
        '/fourth': (context) => FourthPage(),
        '/fifth': (context) => FifthPage(),
        '/sixth': (context) => SixthPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Unit Converter'),
        backgroundColor: Colors.black,
        shadowColor: Colors.black,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/first');
              },
              child: Text('Km → miles'),
              style: ElevatedButton.styleFrom(primary: Colors.black,),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: Text('Miles → km'),
              style: ElevatedButton.styleFrom(primary: Colors.black,),
            ),
            SizedBox(height: 60.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/third');
              },
              child: Text('℃ → ℉'),
              style: ElevatedButton.styleFrom(primary: Colors.black,),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fourth');
              },
              child: Text('℉ → ℃'),
              style: ElevatedButton.styleFrom(primary: Colors.black,),
            ),
            SizedBox(height: 60.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/fifth');
              },
              child: Text('Kg → lbs'),
              style: ElevatedButton.styleFrom(primary: Colors.black,),
            ),
            SizedBox(height: 30.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/sixth');
              },
              child: Text('lbs → kg'),
              style: ElevatedButton.styleFrom(primary: Colors.black,),
            ),
            SizedBox(height: 60.0),
          ],
        ),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  TextEditingController kmController = TextEditingController();
  TextEditingController mileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Km → Mile',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kilometer to Mile'),
          backgroundColor: Colors.black,
          shadowColor: Colors.black,
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
                    labelText: 'Km',fillColor: Colors.black,
                    hintText: 'Enter distance in km',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _convert,
                child: Text('Convert'),
                style: ElevatedButton.styleFrom(primary: Colors.black,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: mileController,
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Miles',fillColor: Colors.black,
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

class SecondPage extends StatefulWidget {
  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  TextEditingController kmController = TextEditingController();
  TextEditingController mileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Mile to km ',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Mile → km'),
          backgroundColor: Colors.black,
          shadowColor: Colors.black,
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
                    labelText: 'miles',fillColor: Colors.black,
                    hintText: 'Enter the distance in miles',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _convert,
                child: Text('Convert'),
                style: ElevatedButton.styleFrom(primary: Colors.black,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: mileController,
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'km',fillColor: Colors.black,
                    hintText: 'The distance in km will appear here',
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
    double miles = double.tryParse(kmController.text) ?? 0.0;
    double km = miles * 1.6093;
    mileController.text = miles.toStringAsFixed(2);
  }
}

class ThirdPage extends StatefulWidget {
  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  TextEditingController kmController = TextEditingController();
  TextEditingController mileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '℃ → ℉',
      home: Scaffold(
        appBar: AppBar(
          title: Text('℃ → ℉'),
          backgroundColor: Colors.black,
          shadowColor: Colors.black,
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
                    labelText: '℃',fillColor: Colors.black,
                    hintText: 'Enter temp in celcius',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _convert,
                child: Text('Convert'),
                style: ElevatedButton.styleFrom(primary: Colors.black,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: mileController,
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '℉',fillColor: Colors.black,
                    hintText: 'Farenheit',
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
    double miles = (km * 1.8)+32;
    mileController.text = miles.toStringAsFixed(2);
  }
}

class FourthPage extends StatefulWidget {
  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
  TextEditingController kmController = TextEditingController();
  TextEditingController mileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '℉ - ℃',
      home: Scaffold(
        appBar: AppBar(
          title: Text('℉ → ℃'),
          backgroundColor: Colors.black,
          shadowColor: Colors.black,
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
                    labelText: '℉',fillColor: Colors.black,
                    hintText: 'enter temperature',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _convert,
                child: Text('Convert'),
                style: ElevatedButton.styleFrom(primary: Colors.black,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: mileController,
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: '℃',fillColor: Colors.black,
                    hintText: 'Celcius',
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
    double miles = (km-32)*5/9;
    mileController.text = miles.toStringAsFixed(2);
  }
}

class FifthPage extends StatefulWidget {
  @override
  State<FifthPage> createState() => _FifthPageState();
}

class _FifthPageState extends State<FifthPage> {
  TextEditingController kmController = TextEditingController();
  TextEditingController mileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kg to lbs',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Kg → lbs'),
          backgroundColor: Colors.black,
          shadowColor: Colors.black,
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
                    labelText: 'Kg',fillColor: Colors.black,
                    hintText: 'Enter weight in kg',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _convert,
                child: Text('Convert'),
                style: ElevatedButton.styleFrom(primary: Colors.black,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: mileController,
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'lbs',fillColor: Colors.black,
                    hintText: 'Weight in lbs',
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
    double miles = km * 2.205;
    mileController.text = miles.toStringAsFixed(2);
  }
}

class SixthPage extends StatefulWidget {
  @override
  State<SixthPage> createState() => _SixthPageState();
}

class _SixthPageState extends State<SixthPage> {
  TextEditingController kmController = TextEditingController();
  TextEditingController mileController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'lbs to kg',
      home: Scaffold(
        appBar: AppBar(
          title: Text('lbs → kg'),
          backgroundColor: Colors.black,
          shadowColor: Colors.black,
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
                    labelText: 'lbs',fillColor: Colors.black,
                    hintText: 'Enter weight in lbs',
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: _convert,
                child: Text('Convert'),
                style: ElevatedButton.styleFrom(primary: Colors.black,),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: TextField(
                  controller: mileController,
                  enabled: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'kg',fillColor: Colors.black,
                    hintText: 'The weight in kg',
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
    double miles = km / 2.205;
    mileController.text = miles.toStringAsFixed(2);
  }
}
