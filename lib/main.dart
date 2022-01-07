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
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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

  void _rollDice() {
    setState(() {
      Random random = Random();
      _dice = 0;
      for (var i = 0; i < 3; i++) {
        _dice += random.nextInt(6) + 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => const Winnings(
                              title: 'Winnings',
                            )),
                  );
                },
                icon: const Icon(Icons.list))
          ],
        ),
        body: Column(children: <Widget>[
          Row(
            //ROW 1
            children: [
              Container(
                color: Colors.orange,
                margin: EdgeInsets.all(25.0),
                child: FlutterLogo(
                  size: 60.0,
                ),
              ),
              Expanded(
                child: Transform.rotate(
                  angle: math.pi,
                  child: TextButton(
                    onPressed: _rollDice,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                ),
              ),
              Container(
                color: Colors.purple,
                margin: EdgeInsets.all(25.0),
                child: FlutterLogo(
                  size: 60.0,
                ),
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
                    onPressed: _rollDice,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                ),
              ),
              Container(
                  color: Colors.blue,
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
                    onPressed: _rollDice,
                    child: FlutterLogo(
                      size: 60.0,
                    ),
                  ),
                ),
              ),
            ]),
          ),
          Row(// ROW 3
              children: [
            Container(
              color: Colors.orange,
              margin: EdgeInsets.all(25.0),
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
            Expanded(
                child: TextButton(
              onPressed: _rollDice,
              child: FlutterLogo(
                size: 60.0,
              ),
            )),
            Container(
              color: Colors.purple,
              margin: EdgeInsets.all(25.0),
              child: FlutterLogo(
                size: 60.0,
              ),
            ),
          ]),
        ]),
      ),
    );
  }
}
