import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Instrument.dart';

class InstrumentView extends StatelessWidget {
  static const platform = const MethodChannel('com.rowe.flutter_sounds/play');
  final Instrument instrument;

  InstrumentView(this.instrument);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(instrument.name),
      ),
      body: FlatButton(
        child: Text('Play Note'),
        onPressed: _playNote,
      )
    );
  }

  void _playNote() {
    platform.invokeMethod('play_note');
  }
}