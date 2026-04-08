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

class Alien extends Human{
  int fingers = 5;

  // we must call super from subclass constructor
  Alien({
    required double height,
    required int age,
}) : super (height: 5.5, age: 11);

  void ageMove(){
    age--;
  }
}
