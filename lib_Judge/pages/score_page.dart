import 'package:flutter/material.dart';

import './landing_page.dart';

class ScorePage extends StatelessWidget {

  final int score;
  final int totalQuestion;

  ScorePage(this.score, this.totalQuestion);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.blueAccent,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text("You Score: ", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0),),
          Text(score.toString() + "/" + totalQuestion.toString(), style: TextStyle(color: Colors.white, fontSize: 30.0),),
          IconButton(
            icon: Icon(Icons.arrow_right),
            color: Colors.white,
            iconSize: 50.0,
            onPressed: () => Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (BuildContext context) => LandingPage()), (Route route) => Route == null
            ),
          )
        ],
      ),
   );
  }
}