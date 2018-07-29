import 'package:flutter/material.dart';
import 'InstrumentFamily.dart';

class InstrumentFamilyView extends StatelessWidget {
  final InstrumentFamily family;

  InstrumentFamilyView(this.family);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(family.name),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: intrumentListItemBuilder
      )
    );
  }

  Widget intrumentListItemBuilder(context, i) {
    if (i >= family.instruments.length) {
      return null;
    }
    return ListTile(
      title: Text(family.instruments[i].name),
    );
  }
}