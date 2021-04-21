import 'package:DevQuiz/shared/models/question_model.dart';

enum Level { facil, medio, dificil, perito }

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionAnswereds;
  final String imagem;
  final Level level;

  QuizModel(
      {required this.title,
      required this.questions,
      this.questionAnswereds = 0,
      required this.level,
      required this.imagem});
}
