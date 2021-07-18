import 'package:flutter/material.dart';
class page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var now=new DateTime.now();
    return Scaffold(
      appBar: AppBar(
        title: Text('Vibration_Alert'),
        backgroundColor: Colors.blue[900],
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Your Current Score',
                style: TextStyle(
                  fontSize: 30.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Image.asset('images/100.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Text(
                    'Current date and time: ${now.toIso8601String()}'
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FlatButton(
                        child: Text('Stop Vibrations',
                          style: TextStyle(
                              fontSize: 25.0,
                              color: Colors.black
                          ),
                        )
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
