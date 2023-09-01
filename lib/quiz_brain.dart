import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questions = [
    Question('После зимы наступает весна', true),
    Question('В неделе 6 дней', false),
    Question('Лёд - замерзшая вода', true),
    Question('Буквы нужны для записи чисел', false),
    Question('Собака и волк это домашние животные', false),
    Question('У человека 20 пальцев', true),
    Question('Мухомор - ядовитый гриб', true),
    Question('После утра настает вечер', false),
    Question('Медведь всё лето спит в берлоге', false),
    Question('У лисы короткий хвост', false)
  ];

  void nextQuestion() {
    if (_questionNumber < _questions.length - 1) {
        _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questions[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questions[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if(_questionNumber >= _questions.length -1 ) {
      return true;
    } else {
      return false;
    }
  }

  int reset() {
    return _questionNumber = 0;
  }
}