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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [          
          Row(
            children: const [
              
            ],
          ),
          Row(
            children: [
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("AC", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("( )", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("%", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("/", textScaleFactor: 2,),
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
                  onPressed: () {},
                  child: const Text("7", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("8", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("9", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("x", textScaleFactor: 2,),
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
                  onPressed: () {},
                  child: const Text("4", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("5", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("6", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("-", textScaleFactor: 2,),
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
                  onPressed: () {},
                  child: const Text("1", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("2", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("3", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("+", textScaleFactor: 2,),
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
                  onPressed: () {},
                  child: const Text("0", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(",", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("3", textScaleFactor: 2,),
                ),
              ),
              SizedBox(
                width: sizeBotao,
                height: sizeBotao,
                child: TextButton(
                  onPressed: () {},
                  child: const Text("=", textScaleFactor: 2,),
                ),
              ),
            ],
          ),
      ]),
    );
  }
}
