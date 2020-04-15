import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int resultscore;
  Result(this.resultscore);
  String get resultPhrase
  {
    var resultText = 'You did it!!';
    if(resultscore <= 8)
      resultText = 'You are awesome and innocent:):):)';
    else if(resultscore <= 12)
      resultText = 'Preety Likeable :)';
    else if(resultscore <= 16)
      resultText = 'You are quite..... strange?';
    else
      resultText = 'You are so bad :(:(';
    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child:
      Column(
        children: <Widget>[
          Text(
              resultPhrase,
            style:TextStyle(fontSize: 36,fontWeight: FontWeight.bold) ,
            textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Restart Quiz!!'),onPressed: ,)
        ],
      ),
    );
  }
}
