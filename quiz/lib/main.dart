import 'package:flutter/material.dart';
import 'package:quiz/result.dart';
import './quiz.dart';
import './result.dart';
void main()
{
  runApp(MyApp());
}
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}
class _MyAppState extends State
{
  var questions = [
    {'questionText':'What\'s your favourite colour?',
      'answer': ['Black','Red','White','Green']
    },
    {'questionText':'Whats\'s your favourite animal?',
      'answer':['Dog','Cat','Rabbit','Lion']
    },
    {'questionText': 'What\'s your favourite book?',
      'answer': ['Harry Potter','Narnia','The Godfather','The Last Don']
    }
  ];
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
    return MaterialApp(home:Scaffold(

      appBar: AppBar(title:Text('Quiz App') ,backgroundColor: Colors.green,),
      body: questionindex < questions.length ?
      Quiz(answerQuestion: answerQuestion,questionIndex: questionindex,questions: questions,)
      : Result(),
    )
    );
  }

}
