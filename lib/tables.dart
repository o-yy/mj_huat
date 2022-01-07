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
                const Text(
                  'PAYOUT',
                ),
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
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(128),
        1: FixedColumnWidth(128),
        2: FixedColumnWidth(128),
        3: FixedColumnWidth(128),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: const <TableRow>[
        TableRow(
          children: <Widget>[
            Text(
              '台',
            ),
            Text(
              'Shooter Pay',
            ),
            Text(
              '自摸',
            ),
            Text(
              '自摸bonus',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              '1',
            ),
            Text(
              '4',
            ),
            Text(
              '2',
            ),
            Text(
              '4',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              '2',
            ),
            Text(
              '7',
            ),
            Text(
              '3',
            ),
            Text(
              '5',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              '3',
            ),
            Text(
              '11',
            ),
            Text(
              '5',
            ),
            Text(
              '7',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              '4',
            ),
            Text(
              '20',
            ),
            Text(
              '10',
            ),
            Text(
              '12',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              'Man',
            ),
            Text(
              '40',
            ),
            Text(
              '20',
            ),
            Text(
              '22',
            ),
          ],
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
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(128),
        1: FixedColumnWidth(128),
        2: FixedColumnWidth(128),
        3: FixedColumnWidth(128),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: const <TableRow>[
        TableRow(
          children: <Widget>[
            Text(
              '台',
            ),
            Text(
              'Shooter Pay',
            ),
            Text(
              '自摸',
            ),
            Text(
              '自摸bonus',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              '1',
            ),
            Text(
              '4',
            ),
            Text(
              '2',
            ),
            Text(
              '4',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              '2',
            ),
            Text(
              '8',
            ),
            Text(
              '4',
            ),
            Text(
              '6',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              '3',
            ),
            Text(
              '16',
            ),
            Text(
              '8',
            ),
            Text(
              '10',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              '4',
            ),
            Text(
              '32',
            ),
            Text(
              '16',
            ),
            Text(
              '18',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              'Man',
            ),
            Text(
              '64',
            ),
            Text(
              '32',
            ),
            Text(
              '34',
            ),
          ],
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
      columnWidths: const <int, TableColumnWidth>{
        0: FixedColumnWidth(128),
        1: FixedColumnWidth(128),
        2: FixedColumnWidth(128),
        3: FixedColumnWidth(128),
      },
      defaultVerticalAlignment: TableCellVerticalAlignment.middle,
      children: const <TableRow>[
        TableRow(
          children: <Widget>[
            Text(
              '台',
            ),
            Text(
              'Shooter Pay',
            ),
            Text(
              'Everyone Else',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              '1',
            ),
            Text(
              '1',
            ),
            Text(
              '2',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              '2',
            ),
            Text(
              '2',
            ),
            Text(
              '4',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              '3',
            ),
            Text(
              '4',
            ),
            Text(
              '8',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              '4',
            ),
            Text(
              '8',
            ),
            Text(
              '16',
            ),
          ],
        ),
        TableRow(
          children: <Widget>[
            Text(
              'Man',
            ),
            Text(
              '16',
            ),
            Text(
              '32',
            ),
          ],
        ),
      ],
    );
  }
}