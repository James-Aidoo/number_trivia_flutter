import 'dart:convert';

import 'package:flutter_clean_architecture/features/numbers_trivia/data/models/number_trivia_model.dart';
import 'package:flutter_clean_architecture/features/numbers_trivia/domain/models/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../fixtures/fixture_reader.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Test Text');

  test('should be a subclass of NumberTrivia entity', () {
    //assert
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });

  group('fromJson', () {
    test('should return a valid model when the number is an Integer', () async {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(readFixture('trivia.json'));
      //act
      NumberTriviaModel result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, tNumberTriviaModel);
    });

    test('should return a valid model when the number is a double', () async {
      //arrange
      final Map<String, dynamic> jsonMap =
          json.decode(readFixture('trivia_double.json'));
      //act
      NumberTriviaModel result = NumberTriviaModel.fromJson(jsonMap);
      //assert
      expect(result, tNumberTriviaModel);
    });
  });

  test('should return a JSON map containing the proper data', () async {
    //act
    final result = tNumberTriviaModel.toJson();
    final expectedMap = {"number": 1, "text": "Test Text"};
    //assert
    expect(result, expectedMap);
  });
}
