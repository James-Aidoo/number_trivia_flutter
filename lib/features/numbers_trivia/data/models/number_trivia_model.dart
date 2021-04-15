import 'package:flutter_clean_architecture/features/numbers_trivia/domain/models/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({
    required int number,
    required String text,
  }) : super(number: number, text: text);
}
