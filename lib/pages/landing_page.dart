import 'package:flutter/material.dart';
import './quiz_page.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return new Material(
      color: Colors.blue,
      child:  new InkWell(
        onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext ceontext) => QuizPage())),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text("blue", style: TextStyle(color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.bold),),
            Text("tap to start", style: TextStyle(color: Colors.white, fontSize: 20.0),)
          ],
        ),
      ),
    );
  }
}