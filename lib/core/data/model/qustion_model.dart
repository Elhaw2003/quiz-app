class QuestionModel {
  String title;
  List<String> answers ;
  String correctAnswer;
  String ?  selectedAnswer;


  QuestionModel(

      {
        required this.title,
        required this.answers,
        required this.correctAnswer,
        required this.selectedAnswer
      }
      );

}