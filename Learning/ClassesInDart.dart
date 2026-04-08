class Question {
  String questionText;
  bool questionAnswer;

  Question({
    required this.questionText,
    required this.questionAnswer,
  });

  void talk(){
    print('helloooo');
  }
}


class Human{
  double height;
  int age;

  Human({
    required this.height,
    required this.age,
});
}
