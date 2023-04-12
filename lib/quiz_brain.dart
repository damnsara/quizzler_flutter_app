import 'questions.dart';

class QuizBrain {

  int _questionNumber = 0;
  List<Question> _questionsList = [
    Question('Is C.S. Lewis the author of Lord of The Rings?', false),
    Question('Is Wednesday Addams daughter of Gomez and Morticia?', true),
    Question('Was Sirius Black a werewolf?', false),
    Question('Is eating fruits a healthy habit?', true),
  ];

  void nextQuestion(){
    if(_questionNumber < _questionsList.length - 1){
      _questionNumber++;
    }
  }

  String getQuestionText (){
    return _questionsList[_questionNumber].questionText;
  }

  bool getQuestionAnswer (){
    return _questionsList[_questionNumber].questionAnswer;
  }

  bool isFinished (){
    if(_questionNumber >= (_questionsList.length - 1)){
      return true;
    }else {
      return false;
    }
  }

  void reset (){
    _questionNumber = 0;
  }
}