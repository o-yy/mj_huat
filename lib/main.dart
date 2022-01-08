// Copyright 2018 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'dart:math';
import 'tables.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mahjong :D',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'HUAT AH'),
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
  int _dice = 0;
  var winds = {1: "东", 2: "南", 3: "西", 4: "北"};
  int counter = 0;

  void _rollDice(int id) {
    setState(() {
      Random random = Random();
      _dice = 0;
      for (var i = 0; i < 3; i++) {
        _dice += random.nextInt(6) + 1;
      }
      // set winds
      winds[id] = "东";
      winds[(id + 1) > 4 ? id - 3 : id + 1] = "南";
      winds[(id + 2) > 4 ? id - 2 : id + 2] = "西";
      winds[(id + 3) > 4 ? id - 1 : id + 3] = "北";
      // show who's counting
      counter = (id - 1 + _dice) % 4;
      counter == 0 ? counter = 4 : counter;
      //winds[counter == 0 ? 4 : counter] = "*";
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          backgroundColor: Colors.red,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => const Winnings(
                              title: 'Payout',
                            )),
                  );
                },
                icon: const Icon(Icons.list))
          ],
        ),
        body: Container(
          color: Colors.grey,
          child: Center(
            child: Container(
              color: Colors.green,
              child: AspectRatio(
                aspectRatio: 1.0,
                child: Column(children: <Widget>[
                  Row(
                    //ROW 1
                    children: [
                      Container(
                        child: SizedBox(),
                      ),
                      Expanded(
                        child: Transform.rotate(
                          angle: math.pi,
                          child: TextButton(
                            onPressed: () => {_rollDice(2)},
                            child: Card(
                              child: Text(
                                (winds[2]).toString(),
                                style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.055),
                              ),
                              color:
                                  counter == 2 ? Colors.red : Colors.grey[300],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        child: SizedBox(),
                      ),
                    ],
                  ),
                  Expanded(
                    //ROW 2
                    child: Row(children: [
                      Expanded(
                        child: Transform.rotate(
                          angle: math.pi / 2,
                          child: TextButton(
                            onPressed: () => {_rollDice(3)},
                            child: Card(
                              child: Text(
                                (winds[3]).toString(),
                                style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.055),
                              ),
                              color:
                                  counter == 3 ? Colors.red : Colors.grey[300],
                            ),
                          ),
                        ),
                      ),
                      Container(
                          height: 70,
                          width: 100,
                          color: Colors.lightGreen,
                          margin: EdgeInsets.all(25.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Text(
                                'You rolled a:',
                              ),
                              Text(
                                '$_dice',
                                style: Theme.of(context).textTheme.headline4,
                              ),
                            ],
                          )),
                      Expanded(
                        child: Transform.rotate(
                          angle: -math.pi / 2,
                          child: TextButton(
                            onPressed: () => {_rollDice(1)},
                            child: Card(
                              child: Text(
                                (winds[1]).toString(),
                                style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.055),
                              ),
                              color:
                                  counter == 1 ? Colors.red : Colors.grey[300],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                  Row(// ROW 3
                      children: [
                    Container(
                      child: SizedBox(),
                    ),
                    Expanded(
                        child: Container(
                      color: Colors.green,
                      child: TextButton(
                        onPressed: () => {_rollDice(4)},
                        child: Card(
                          child: Text(
                            (winds[4]).toString(),
                            style: TextStyle(fontSize: MediaQuery.of(context).size.width * 0.055),
                          ),
                          color: counter == 4 ? Colors.red : Colors.grey[300],
                        ),
                      ),
                    )),
                    Container(
                      child: SizedBox(),
                    ),
                  ]),
                ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
