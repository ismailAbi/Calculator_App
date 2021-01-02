import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final TextEditingController t1 = TextEditingController(text: '0');
  final TextEditingController t2 = TextEditingController(text: '0');
  int n1, n2, sum;
  void doAddition() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 + n2;
    });
  }

  void doMultiplication() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 * n2;
    });
  }

  void doSubraction() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 - n2;
    });
  }

  void doDivision() {
    setState(() {
      n1 = int.parse(t1.text);
      n2 = int.parse(t2.text);
      sum = n1 ~/ n2;
    });
  }

  void doClear() {
    setState(() {
      t1.clear();
      t2.clear();
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Calculator App',
        // theme: ThemeData(primarySwatch: Colors.red),
        theme: ThemeData.dark(),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Awesome Calculator'),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'OUTPUT:$sum',
                    style: TextStyle(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    controller: t1,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(hintText: 'Enter number '),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextField(
                    controller: t2,
                    keyboardType: TextInputType.number,
                    decoration:
                        InputDecoration(hintText: 'Enter another number '),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: RaisedButton(
                          color: Colors.greenAccent,
                          onPressed: doAddition,
                          child: Text('+'),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          color: Colors.blueAccent,
                          onPressed: doSubraction,
                          child: Text('-'),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          color: Colors.orangeAccent,
                          onPressed: doMultiplication,
                          child: Text('*'),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          color: Colors.purple,
                          onPressed: doDivision,
                          child: Text('/'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('1'),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('2'),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('3'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('4'),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('5'),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('6'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('7'),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('8'),
                        ),
                      ),
                      Expanded(
                        child: MaterialButton(
                          onPressed: () {},
                          child: Text('9'),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: MaterialButton(
                          onPressed: doClear,
                          child: Text('Clear'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
