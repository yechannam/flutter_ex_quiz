// ignore_for_file: import_of_legacy_library_into_null_safe, unused_field, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:quiz_app/model/quiz.dart';

class QuizScreen extends StatefulWidget {
 final List<Quiz> quies;
  const QuizScreen({super.key, required this.quies});
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  // ignore: unused_field
  final List<int> _answers = [-1, -1, -1];
  final List<bool> _state = [false, false, false, false];
  final int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            border: Border.all(color: Colors.white10),
          ),
          child: _buildQuizCard(widget.quies[1]),
          ),
        ),
      );
  }

  Widget _buildQuizCard(Quiz quiz) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
          height: 550,
          child: Column(children: [
            Container(
              padding: const EdgeInsets.all(5),
              child: Text('Q. ${_currentIndex + 1}?', style: const TextStyle(color: Colors.white),),
            )
          ]),
    );
  }
}
