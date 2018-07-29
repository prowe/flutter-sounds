import 'package:flutter/material.dart';
import 'Instrument.dart';

class InstrumentView extends StatelessWidget {
  final Instrument instrument;

  InstrumentView(this.instrument);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(instrument.name),
      ),
      body: Text('This is where the notes go')
    );
  }
}