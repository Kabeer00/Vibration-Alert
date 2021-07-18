import 'package:flutter/material.dart';
import 'SecondPage.dart';
import 'Vibrate.dart';
import 'Bluetooth.dart';
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Bluetooth blue=Bluetooth();
  Vibrations v=Vibrations();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vibration_Alert',
          style: TextStyle(
              color: Colors.white
          ),),
        backgroundColor: Colors.blue[900],
      ),
      body:SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: RaisedButton(
                  onPressed: (){
                    blue.scanDevice();
                    blue.listenResults();
                    Navigator.push(context, MaterialPageRoute(builder: (context) => page2()),);
                    if(blue.countDevice()>=0){
                      v.vibrations();
                      v.vibrateSeries();
                    }
                  },
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Start Scan',style: TextStyle(
                        fontSize: 40.0,
                        color: Colors.black
                    ),
                    ),
                  ),
                ),
              ),
//                Container(
//                  child: Text(
//                   blue.countDevice().toString()
//                  ),
//                )
            ],
          ),
        ),
      ),
    );
  }
}
