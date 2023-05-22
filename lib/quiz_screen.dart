import 'package:flutter/material.dart';
import 'question_model.dart';

class QuizScreen extends StatefulWidget {
  @override
  State<QuizScreen> createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  //define the datas
  List<Question> questionList = getQuestions();
  int currentQuestionIndex = 0;
  int score = 0;
  Answer? selectedAnswer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(104, 202, 240, 1.000),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          const Text(
            "QuizQuick",
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          _questionWidget(),
          _answerList(),
          _nextButton(),
        ]),
      ),
    );
  }

  _questionWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Question ${currentQuestionIndex + 1}/${questionList.length.toString()}",
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          width: double.infinity,
          padding: const EdgeInsets.all(32),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 255, 255, 255),
            borderRadius: BorderRadius.circular(16),
          ),
          child: Text(
            questionList[currentQuestionIndex].questionText,
            style: const TextStyle(
              color: Color.fromRGBO(80, 85, 97, 1.000),
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
          ),
        )
      ],
    );
  }

  _answerList() {
    return Column(
      children: questionList[currentQuestionIndex]
          .answersList
          .map(
            (e) => _answerButton(e),
          )
          .toList(),
    );
  }

  Widget _answerButton(Answer answer) {
    bool isSelected = answer == selectedAnswer;

    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 8),
      height: 48,
      child: ElevatedButton(
        child: Text(answer.answerText),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary:
              isSelected ? Color.fromARGB(255, 169, 224, 255) : Colors.white,
          onPrimary:
              isSelected ? Color.fromARGB(255, 154, 154, 160) : Colors.black,
        ),
        onPressed: () {
          if (selectedAnswer == null) {
            if (answer.isCorrect) {
              score++;
            }
            setState(() {
              selectedAnswer = answer;
            });
          }
        },
      ),
    );
  }

  _nextButton() {
    bool isLastQuestion = false;
    if (currentQuestionIndex == questionList.length - 1) {
      isLastQuestion = true;
    }

    return Container(
      width: MediaQuery.of(context).size.width * 0.5,
      height: 48,
      child: ElevatedButton(
        child: Text(isLastQuestion ? "Submit" : "Next"),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
          primary: Color.fromARGB(255, 243, 243, 245),
          onPrimary: Color.fromRGBO(80, 85, 97, 1.000),
        ),
        onPressed: () {
          if (isLastQuestion) {
            //display score

            showDialog(context: context, builder: (_) => _showScoreDialog());
          } else {
            //next question
            setState(() {
              selectedAnswer = null;
              currentQuestionIndex++;
            });
          }
        },
      ),
    );
  }

  _showScoreDialog() {
    bool isPassed = false;
    String impairment = '';
    if (0 <= score && score < 15) {
      impairment = 'The child suffers from severe disability';
    } else if (15 <= score && score < 30) {
      impairment = 'The child suffers from moderate disability';
    } else if (30 <= score && score < 45) {
      impairment = 'The child suffers from mild disability';
    } else {
      impairment = 'The child is normal';
    }

    // Determine pass/fail status based on score
    if (score >= questionList.length * 0.45) {
      isPassed = true;
    }
    String title = isPassed ? "Passed " : "Failed";

    return AlertDialog(
      title: Text(
        "               |   " + title + "   |               ",
        style: TextStyle(
            color: isPassed
                ? Color.fromARGB(255, 98, 226, 103)
                : Color.fromARGB(255, 201, 54, 54)),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(impairment),
          ElevatedButton(
            child: const Text("Restart"),
            onPressed: () {
              Navigator.pop(context);
              setState(() {
                currentQuestionIndex = 0;
                score = 0;
                selectedAnswer = null;
              });
            },
          ),
        ],
      ),
    );
  }
}
