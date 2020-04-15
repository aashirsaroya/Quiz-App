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
      'answer': [{'text':'Black','score':10},{'text':'Red','score':4},{'text':'White','score':'2'},
        {'text':'Green','score':6}]
    },
    {'questionText':'Whats\'s your favourite animal?',
      'answer':[{'text':'Dog','score':3},{'text':'Cat','score':5},{'text':'Rabbit','score':7},
        {'text':'Lion','score':4}]
    },
    {'questionText': 'What\'s your favourite book?',
      'answer': [{'text':'Harry Potter','score':5},{'text':'Narnia','score':6},{'text':'The Godfather','score':8},
        {'text':'The Last Don','score':10}]
    }
  ];
   var questionindex = 0;
   var totalscore = 0;
   void restartQuiz()
   {
     setState(() {
       questionindex = 0;
       totalscore = 0;
     });
   }
  void answerQuestion(int score)
  {
    totalscore = totalscore + score;
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
      : Result(totalscore),
    )
    );
  }

}
