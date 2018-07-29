import 'package:flutter/material.dart';

class InstrumentFamilyList extends StatefulWidget {
  @override
  createState() => InstrumentFamilyState();
}

class InstrumentFamilyState extends State<InstrumentFamilyList> {
  static const FAMILIES = [
    'Strings',
    'Wind',
    'Keyboard',
    'Percussion'
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i >= FAMILIES.length) {
          return null;
        }
        return ListTile(
          title: Text(
            FAMILIES[i]
          ),
          onTap: _selectFamily,
        );
      }
    );
  }

  void _selectFamily() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text('Instrument'),
            ),
            body: Text('Instrument text')
          );
        },
      ),
    );
  }
}