import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {

  final bool _answer;
  final VoidCallback _onTap;

  AnswerButton(this._answer, this._onTap);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Material(
        color: _answer == true ? Colors.green : Colors.blue,
        child: InkWell(
          onTap: () => _onTap(),
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 3.0)
              ),
              padding: EdgeInsets.all(10.0),
              child: Text(_answer == true ? "true" : "false",
                style: TextStyle(color: Colors.white, fontSize: 40.0, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),
              )
            ),
          )
        ),
      )
    );
  }
}
