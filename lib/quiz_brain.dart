import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Une vache peut-elle descendre des marches mais pas les monter.',
        false),
    Question(
        'À peu près un quart des os d\'un humain se trouve dans les pieds.',
        true),
    Question('Le sang d\'une limace est vert.', true),
    Question('Certains chats sont allergiques aux humains', true),
    Question(
        'Le prénom de la mère de Buzz Aldrin (un astronaute) est \"Moon\" (Lune en français).',
        true),
    Question('Est ce illégal de pisser dans l\'océan au Portugal ?', true),
    Question('Aucun carré de papier ne peut être plié en deux plus de 7 fois.',
        false),
    Question(
        'Le plus bruyant cri d\'un animal est de 188 décibels. Cet animal est l\'éléphant d\'Afrique.',
        false),
    Question('Le nom originel de Google est \"Backrub\".', true),
    Question(
        'Le chocolat affecte le système nerveux et cardiaque d\'un chien; quelques grammes sont ils suffisants pour tuer un chien de petite taille.',
        true),
    Question(
        'Dans l\'état de Viginie aux États-Unis, si vous heurtez accidentiellement un animal avec votre voiture, vous avez le droit de le ramener à la maison pour le manger.',
        true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  //Step 3 Part A - Create a method called isFinished() here that checks to see if we have reached the last question. It should return (have an output) true if we've reached the last question and it should return false if we're not there yet.
  bool isFinished() {
    bool isFinished = _questionNumber == _questionBank.length - 1;
    print(
        'isFinished : $isFinished'); //Step 3 Part B - Use a print statement to check that isFinished is returning true when you are indeed at the end of the quiz and when a restart should happen.
    return isFinished;
  }

  //Step 4 Part B - Create a reset() method here that sets the questionNumber back to 0.
  void reset() {
    _questionNumber = 0;
  }
}
