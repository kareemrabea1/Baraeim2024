import 'package:baraeim/screens/autism_test.dart';
import 'package:flutter/material.dart';
class GrowthTestScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Growth test"),
        backgroundColor: Colors.pink[200],
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                color: Colors.pink[100],
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundColor: Colors.pink[300],
                    child: Text('${index + 1}'),
                  ),
                  title: Text('Autism Test'),
                  trailing: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) =>  AutismQuiz()));
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Text(
                      'start now',
                      style: TextStyle(color: Colors.pink),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
