import 'package:flutter_vibrate/flutter_vibrate.dart';
class Vibrations
{
  void vibrations()
  {
    Vibrate.vibrate();
  }
   void vibrateSeries()
   {
    final Iterable<Duration> pauses = [
      const Duration(seconds: 00),
      const Duration(seconds: 10),
      const Duration(seconds: 10),
    ];
      Vibrate.vibrateWithPauses(pauses);
  }
}