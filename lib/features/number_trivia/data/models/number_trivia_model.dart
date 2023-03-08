
import 'package:number_trivia_clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia{
  const NumberTriviaModel({required super.text, required super.number});

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json){
    return NumberTriviaModel(text: json['text'], number: (json['number'] as num).toInt());
  }

  Map<String, dynamic> toJson(NumberTriviaModel model){
    final map = {"text": model.text, "number" : model.number};
    return map;
  }
}