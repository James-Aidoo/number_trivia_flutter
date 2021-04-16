import 'package:flutter_clean_architecture/features/numbers_trivia/domain/models/number_trivia.dart';
import 'package:json_annotation/json_annotation.dart';

part 'NumberTriviaModel.g.dart';

@JsonSerializable()
class NumberTriviaModel extends NumberTrivia {
  NumberTriviaModel({
    required int number,
    required String text,
  }) : super(number: number, text: text);

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) =>
      _$NumberTriviaModel.fromJson();

  Map<String, dynamic> toJson() => _$NumberTriviaModel.toJson(this);
}
