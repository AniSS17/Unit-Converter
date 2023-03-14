import 'package:flutter/material.dart';
void main()=> runApp(myApp());
class myApp extends StatelessWidget {
  const myApp({ Key? key }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Calculator(),
    );
  }
}
class Calculator extends StatefulWidget {
  const Calculator({ Key? key }) : super(key: key);

  @override
  _CalculatorState createState() => _CalculatorState();
}
class _CalculatorState extends State<Calculator> {
  Widget calcButton(String btntxt, Color btncolor, Color txtcolor){
    return Container(
      child: MaterialButton(
        onPressed:() {
          // calculation(btntxt);
        },
        child: Text(btntxt,style: TextStyle(fontSize: 25,color: txtcolor),),
        shape: StadiumBorder(),
        color: btncolor,
        padding: EdgeInsets.all(30),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: Text("Unit Convertor"), backgroundColor: Colors.black,),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton("Km-miles ", Colors.black, Colors.white),
                calcButton("Miles-km ", Colors.black, Colors.white),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(" cm-inch ", Colors.black, Colors.white),
                calcButton(" inch-cm ", Colors.black, Colors.white),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton(" m-feet  ", Colors.black, Colors.white),
                calcButton(" feet-m  ", Colors.black, Colors.white),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton("   ℃-℉   ", Colors.black, Colors.white),
                calcButton("   ℉-℃   ", Colors.black, Colors.white),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton("kg-pound ", Colors.black, Colors.white),
                calcButton("pound-kg ", Colors.black, Colors.white),
              ],
            ),
            SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                calcButton("m2-acres ", Colors.black, Colors.white),
                calcButton("acres-m2 ", Colors.black, Colors.white),
              ],
            ),
            SizedBox(height: 40,),
          ],
        ),
      ),
    );
  }
}  