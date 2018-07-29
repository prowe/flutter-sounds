import 'package:flutter/material.dart';
import 'InstrumentFamily.dart';
import 'Instrument.dart';
import 'InstrumentView.dart';

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
        itemBuilder: _intrumentListItemBuilder
      )
    );
  }

  Widget _intrumentListItemBuilder(context, i) {
    if (i >= family.instruments.length) {
      return null;
    }
    return InstrumentListTile(context, family.instruments[i]);
  }
}

class InstrumentListTile extends StatelessWidget {
  final BuildContext context;
  final Instrument instrument;

  InstrumentListTile(this.context, this.instrument);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(instrument.name),
      onTap: _selectInstrument,
    );
  }

  void _selectInstrument() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => InstrumentView(instrument),
      ),
    );
  }
}