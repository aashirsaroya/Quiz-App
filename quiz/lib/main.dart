import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return MyAppState();
  }
}
class MyAppState extends State
{
   var questionindex = 0;
  void answerQuestion()
  {
    setState(() {
      questionindex = questionindex + 1;
    });
    print(questionindex);
  }
  Widget build(BuildContext context)
  {

    var questions = ['What\'s your favourite colour?',
    'Whats\'s your favourite animal?',
    'What\'s your favourite book?'
    ];
    return MaterialApp(home:Scaffold(
      appBar: AppBar(title:Text('Quiz App') ,),
      body: Column(
        children: [ Text(questions.elementAt(questionindex)),
          RaisedButton(child: Text('Answer 1'),onPressed: answerQuestion,),
          RaisedButton(child: Text('Answer 2'),onPressed: answerQuestion,),
          RaisedButton(child: Text('Answer 3'),onPressed: answerQuestion,)
        ]
      ),
    ));
  }

}
