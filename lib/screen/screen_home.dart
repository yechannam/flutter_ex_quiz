import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz.dart';
import 'package:quiz_app/screen/screen_quiz.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Quiz> quies = [
    Quiz.fromMap({
      'title' : 'test',
      'candidates' : ['a', 'b', 'c', 'd'],
      'answer': 0
    }),
    Quiz.fromMap({
      'title' : 'test',
      'candidates' : ['a', 'b', 'c', 'd'],
      'answer': 0
    }),
    Quiz.fromMap({
      'title' : 'test',
      'candidates' : ['a', 'b', 'c', 'd'],
      'answer': 0
    }),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Quiz App',
        ),
        backgroundColor: Colors.deepOrange,
        leading: Container(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            'images/quiz.jpeg',
          ),
          const Padding(padding: EdgeInsets.all(30)),
          const Text('flutter qize app'),
          _buildStep(30, '1. hi'),
          Container(
            padding: const EdgeInsets.only(bottom: 20),
            child: Center(
              child: ButtonTheme(
                minWidth: 30,
                height: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ElevatedButton(
                  child: const Text(
                    'start',
                    style: TextStyle(color: Colors.amber),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => QuizScreen(quies: quies,)));},
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildStep(double width, String title) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        children: [
          const Icon(
            Icons.check_box,
            size: 20,
          ),
          Text(title),
        ],
      ),
    );
  }
}
