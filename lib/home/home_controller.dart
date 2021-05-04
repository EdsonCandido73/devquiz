import 'package:DevQuiz/core/core.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/shared/models/awnser_model.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:DevQuiz/shared/models/quiz_model.dart';
import 'package:DevQuiz/shared/models/user_model.dart';
import 'package:flutter/foundation.dart';

class HomeController {
  final stateNotifier = ValueNotifier<HomeState>(HomeState.empty);
  set state(HomeState state) => stateNotifier.value = state;
  HomeState get state => stateNotifier.value;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));

    user = UserModel(
      name: "Edson Candido",
      photoUrl:
          "https://avatars.githubusercontent.com/u/39812641?s=400&u=e769e45c45a2f1a0b0e4bb33d5851cfa169fc3eb&v=4",
    );
    state = HomeState.success;
  }

  void getQuizzes() async {
    state = HomeState.loading;
    await Future.delayed(Duration(seconds: 2));
    quizzes = [
      QuizModel(
        title: "NLW 5 - Flutter",
        imagem: AppImages.blocks,
        questionAnswered: 1,
        level: Level.facil,
        questions: [
          QuestionModel(title: "Está curtindo o Flutter?", awnsers: [
            AwnserModel(title: "Estou curtindo"),
            AwnserModel(title: "Amando Flutter"),
            AwnserModel(title: "Muito top"),
            AwnserModel(title: "Show de bola", isRight: true),
          ]),
          QuestionModel(title: "Está curtindo o Flutter?", awnsers: [
            AwnserModel(title: "Estou curtindo"),
            AwnserModel(title: "Amando Flutter"),
            AwnserModel(title: "Muito top"),
            AwnserModel(title: "Show de bola", isRight: true),
          ]),
        ],
      )
    ];
    state = HomeState.success;
  }
}
