import 'package:flutter_clean_architecture/features/numbers_trivia/data/models/number_trivia_model.dart';
import 'package:flutter_clean_architecture/features/numbers_trivia/domain/models/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final tNumberTriviaModel = NumberTriviaModel(number: 1, text: 'Test Text');

  test('should be a subclass of NumberTrivia entity', () {
    //assert
    expect(tNumberTriviaModel, isA<NumberTrivia>());
  });
}
