import 'package:flutter/material.dart';
import 'InstrumentFamily.dart';
import 'InstrumentFamilyView.dart';

class InstrumentFamilyList extends StatefulWidget {
  @override
  createState() => InstrumentFamilyState();
}

class InstrumentFamilyState extends State<InstrumentFamilyList> {
  var families = InstrumentFamily.all();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(16.0),
      itemBuilder: (context, i) {
        if (i >= families.length) {
          return null;
        }
        return InstrumentFamilyListItem(context, families[i]);
      }
    );
  }
}

class InstrumentFamilyListItem extends StatelessWidget {
  final InstrumentFamily family;
  final BuildContext context;

  InstrumentFamilyListItem(this.context, this.family);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(family.name),
      onTap: _selectFamily,
    );
  }

  void _selectFamily() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => InstrumentFamilyView(family),
      ),
    );
  }
}