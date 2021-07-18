import 'package:flutter_blue/flutter_blue.dart';
class Bluetooth
{
  FlutterBlue _flutterBlue = FlutterBlue.instance;
  int _count=0;
  void scanDevice()
  {
    _flutterBlue.startScan(timeout: Duration(seconds: 4));
  }

   void listenResults() {
     _flutterBlue.scanResults.listen((results) {
       // do something with scan results
       for (ScanResult r in results) {
         print('${r.device.name} found! rssi: ${r.rssi}');
         if(r.rssi<-10&&r.rssi>-100){
           ++_count;
         }
         print('count=$_count');
       }
     });
   }

    int countDevice()
    {
      return _count;
    }

}