import 'Instrument.dart';

class InstrumentFamily {
  String name;
  List<Instrument> instruments;

  InstrumentFamily(this.name, this.instruments);

  static List<InstrumentFamily> all() {
    return [
      InstrumentFamily (
        'Strings',
        [
          Instrument('Bass Violin')
        ]
      ),
      InstrumentFamily(
        'Wind',
        []
      ),
      InstrumentFamily(
        'Keyboard',
        [],
      ),
      InstrumentFamily(
        'Percussion',
        []
      )
    ];
  }
}