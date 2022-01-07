import 'package:flutter/material.dart';

class Winnings extends StatefulWidget {
  const Winnings({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<Winnings> createState() => _Winnings();
}

class _Winnings extends State<Winnings> {
  bool sanliushow = false;
  bool yiershow = false;
  bool nonshootershow = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
          child: Column(
              children: <Widget>[
                ButtonBar(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    ElevatedButton(onPressed: () => {
                      setState(() {
                        nonshootershow = !nonshootershow;
                        yiershow = false;
                        sanliushow = false;
                      })
                    },  child: Text('non-shooter')),
                    ElevatedButton(onPressed: () => {
                      setState(() {
                        sanliushow = !sanliushow;
                        yiershow = false;
                        nonshootershow = false;
                      })
                    },  child: Text('3/6')),
                    ElevatedButton(onPressed: () => {
                      setState(() {
                        yiershow = !yiershow;
                        sanliushow = false;
                        nonshootershow = false;
                      })
                    },  child: Text('1/2'))
                  ],
                ),
                sanliushow ? const sanliuban() : const SizedBox(),
                yiershow ? const yier() : const SizedBox(),
                nonshootershow ? const nonshooter() : const SizedBox(),
              ],
          )
      ),
    );
  }
}

class sanliuban extends StatelessWidget {
  const sanliuban({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      defaultColumnWidth: FixedColumnWidth(64),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: const <TableRow>[
        TableRow(
            decoration: BoxDecoration(color: Colors.lightGreen),
            children: [
              Text('台',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Shooter Pay',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('自摸',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('自摸bonus',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]
        ),
        TableRow(
            children: [
              Text('1', textAlign: TextAlign.center),
              Text('4', textAlign: TextAlign.center),
              Text('2', textAlign: TextAlign.center),
              Text('4', textAlign: TextAlign.center),
            ]
        ),
        TableRow(
            children: [
              Text('2', textAlign: TextAlign.center),
              Text('7', textAlign: TextAlign.center),
              Text('3', textAlign: TextAlign.center),
              Text('5', textAlign: TextAlign.center),
            ]
        ),
        TableRow(
            children: [
              Text('3', textAlign: TextAlign.center),
              Text('11', textAlign: TextAlign.center),
              Text('5', textAlign: TextAlign.center),
              Text('7', textAlign: TextAlign.center),
            ]
        ),
        TableRow(
            children: [
              Text('4', textAlign: TextAlign.center),
              Text('20', textAlign: TextAlign.center),
              Text('10', textAlign: TextAlign.center),
              Text('12', textAlign: TextAlign.center),
            ]
        ),
        TableRow(
            children: [
              Text('满', textAlign: TextAlign.center),
              Text('40', textAlign: TextAlign.center),
              Text('20', textAlign: TextAlign.center),
              Text('22', textAlign: TextAlign.center),
            ]
        ),
      ],
    );
  }
}

class yier extends StatelessWidget {
  const yier({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      defaultColumnWidth: FixedColumnWidth(64),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: const <TableRow>[
        TableRow(
            decoration: BoxDecoration(color: Colors.lightGreen),
            children: [
              Text('台',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Shooter Pay',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('自摸',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('自摸bonus',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]
        ),
        TableRow(
            children: [
              Text('1', textAlign: TextAlign.center),
              Text('4', textAlign: TextAlign.center),
              Text('2', textAlign: TextAlign.center),
              Text('4', textAlign: TextAlign.center),
            ]
        ),
        TableRow(
            children: [
              Text('2', textAlign: TextAlign.center),
              Text('8', textAlign: TextAlign.center),
              Text('4', textAlign: TextAlign.center),
              Text('6', textAlign: TextAlign.center),
            ]
        ),
        TableRow(
            children: [
              Text('3', textAlign: TextAlign.center),
              Text('16', textAlign: TextAlign.center),
              Text('8', textAlign: TextAlign.center),
              Text('10', textAlign: TextAlign.center),
            ]
        ),
        TableRow(
            children: [
              Text('4', textAlign: TextAlign.center),
              Text('32', textAlign: TextAlign.center),
              Text('16', textAlign: TextAlign.center),
              Text('18', textAlign: TextAlign.center),
            ]
        ),
        TableRow(
            children: [
              Text('满', textAlign: TextAlign.center),
              Text('64', textAlign: TextAlign.center),
              Text('32', textAlign: TextAlign.center),
              Text('34', textAlign: TextAlign.center),
            ]
        ),
      ],
    );
  }
}

class nonshooter extends StatelessWidget {
  const nonshooter({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Table(
      border: TableBorder.all(),
      defaultColumnWidth: FixedColumnWidth(64),
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: const <TableRow>[
        TableRow(
            decoration: BoxDecoration(color: Colors.lightGreen),
            children: [
              Text('台',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Shooter Pay',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text('Everyone Else',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold)),
            ]
        ),
        TableRow(
            children: [
              Text('1', textAlign: TextAlign.center),
              Text('4', textAlign: TextAlign.center),
              Text('2', textAlign: TextAlign.center),
            ]
        ),
        TableRow(
            children: [
              Text('2', textAlign: TextAlign.center),
              Text('8', textAlign: TextAlign.center),
              Text('4', textAlign: TextAlign.center),
            ]
        ),
        TableRow(
            children: [
              Text('3', textAlign: TextAlign.center),
              Text('16', textAlign: TextAlign.center),
              Text('8', textAlign: TextAlign.center),
            ]
        ),
        TableRow(
            children: [
              Text('4', textAlign: TextAlign.center),
              Text('32', textAlign: TextAlign.center),
              Text('16', textAlign: TextAlign.center),
            ]
        ),
        TableRow(
            children: [
              Text('满', textAlign: TextAlign.center),
              Text('64', textAlign: TextAlign.center),
              Text('32', textAlign: TextAlign.center),
            ]
        ),
      ],
    );
  }
}