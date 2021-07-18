import 'package:flutter/material.dart';

import 'firstPage.dart';
class Mainpage extends StatelessWidget {
  Padding instruction(String s)
  {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
          '$s',
          style:TextStyle(
              fontSize: 14.8,
              color: Colors.black
          )

      ),
    );
  }
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
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                  'Instructions to use the app',
                  style:TextStyle(
                      fontSize: 17.0,
                      fontWeight:FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      color: Colors.black
                  )

              ),
            ),
            instruction( '1) The app will make use of bluetooth technology to sense any nearby devices which are present within the minimum safe distance for interaction. If it discovers one or more devices it will cause the phone to vibrate. Users are advised to keep sound on for other notifications.'),
            instruction('2) This vibration is meant to alert the user that he/she is not at a safe distance from another user and he/she should consider increasing their distance, and if ,however the business has to be carried out in proximity then they should make sure that they are wearing a mask.'),
            instruction( '3) Once the business is done and the user is at safe distance the app will cause a series of vibrations at some fixed interval(around 1 minute) alerting the user to not touch their own face or any other surface and wash their hands as soon as possible. Once the user washes their hands they can open the app to stop the vibrations.'),
            instruction( '4) The app will also display the users current score. The score is an indicator of the extent to which the user has practiced social distancing. The user should try to maintain a high score to avail exciting offers.'),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: FlatButton(
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text('Continue',style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black
                    ),
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()),);
                  }
              ),
            )
          ],
        ),
      ),
    );
  }
}
