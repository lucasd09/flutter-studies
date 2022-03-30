import 'dart:html';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Calculator',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const MyHomePage(title: 'Flutter Calculator'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double sizeBotao = 125;
  double scale = 2;
  String result = 'insira uma operação';
  List<String> expressao = <String>[];

  void addNum(String char) {
    setState(() {
      expressao.add(char);
      result = expressao.join();
    });
  }

  void delNum() {
    setState(() {
      expressao.removeLast();
      result = expressao.join();
    });
  }

  void delAll() {
    setState(() {
      expressao.clear();
      result = 'insira uma operação';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                result,
                textScaleFactor: scale,
                textAlign: TextAlign.end,
              ),
            )
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  delAll();
                },
                child: Text(
                  "AC",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "( )",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "%",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "/",
                  textScaleFactor: scale,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum('7');
                },
                child: Text(
                  "7",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum('8');
                },
                child: Text(
                  "8",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum('9');
                },
                child: Text(
                  "9",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum(' x ');
                },
                child: Text(
                  "x",
                  textScaleFactor: scale,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum('4');
                },
                child: Text(
                  "4",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum('5');
                },
                child: Text(
                  "5",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum('6');
                },
                child: Text(
                  "6",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum(' - ');
                },
                child: Text(
                  "-",
                  textScaleFactor: scale,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum('1');
                },
                child: Text(
                  "1",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum('2');
                },
                child: Text(
                  "2",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum('3');
                },
                child: Text(
                  "3",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum(' + ');
                },
                child: Text(
                  "+",
                  textScaleFactor: scale,
                ),
              ),
            ),
          ],
        ),
        Row(
          children: [
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum('0');
                },
                child: Text(
                  "0",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  addNum(',');
                },
                child: Text(
                  ",",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {
                  delNum();
                },
                child: Text(
                  "DEL",
                  textScaleFactor: scale,
                ),
              ),
            ),
            SizedBox(
              width: sizeBotao,
              height: sizeBotao,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "=",
                  textScaleFactor: scale,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
