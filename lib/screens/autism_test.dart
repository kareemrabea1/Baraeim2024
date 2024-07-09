import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AutismQuiz(),
    );
  }
}

class AutismQuiz extends StatefulWidget {
  @override
  _AutismQuizState createState() => _AutismQuizState();
}

class _AutismQuizState extends State<AutismQuiz> {
  List<String> questions = [
    'Do you find it difficult to understand people\'s feelings from their facial expressions?',
    'Do you prefer to do daily activities alone without interacting with others?',
    'Do you find it hard to start a conversation with new people?',
    'Do you prefer things to be neat and organized precisely?',
    'Do you find it difficult to follow a conversation when there is a lot of background noise?',
    'Do you feel uncomfortable when your daily routine changes?',
    'Do you find it hard to understand jokes or sarcastic comments?',
  ];

  List<bool?> answers = List.filled(7, null);

  void _submit() {
    int yesCount = answers.where((answer) => answer == true).length;

    String resultMessage;
    if (yesCount >= 4) {
      resultMessage = 'You are likely to have autism.';
    } else {
      resultMessage = 'You are not likely to have autism.';
    }

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Result'),
          content: Text(resultMessage),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text('Autism Test',style: TextStyle(fontSize:16,fontWeight: FontWeight.w400,color: Colors.black),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${index + 1}. ${questions[index]}',
                            style: TextStyle(fontSize: 16),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: <Widget>[
                              Expanded(
                                child: ListTile(
                                  title: Text('Yes'),
                                  leading: Radio<bool>(
                                    activeColor: Color(0xFFF687B3),
                                    value: true,
                                    groupValue: answers[index],
                                    onChanged: (bool? value) {
                                      setState(() {
                                        answers[index] = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                              Expanded(
                                child: ListTile(
                                  title: Text('No'),
                                  leading: Radio<bool>(
                                    activeColor: Color(0xFFF687B3),
                                    value: false,
                                    groupValue: answers[index],
                                    onChanged: (bool? value) {
                                      setState(() {
                                        answers[index] = value;
                                      });
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(

              onPressed: _submit,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
            ),
                primary: Color(0xFFF687B3),
                padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                textStyle: TextStyle(fontSize: 18),
              ),
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }
}
