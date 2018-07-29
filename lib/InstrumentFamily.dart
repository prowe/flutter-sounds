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
          Instrument('Bass Violin'),
          Instrument('Violin'),
          Instrument('Ukelele'),
          Instrument('Guitar'),
          Instrument('Banjo'),
          Instrument('Acoustic Guitar'),
          Instrument('Electric Guitar'),
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