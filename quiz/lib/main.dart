import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';
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
    return MaterialApp(home:Scaffold(
      appBar: AppBar(title:Text('Quiz App') ,),
      body: Column(
        children: [ Question(questions.elementAt(questionindex)),
          Answer(answerQuestion),
          Answer(answerQuestion),
          Answer(answerQuestion),
        ]
      ),
    ));
  }

}
