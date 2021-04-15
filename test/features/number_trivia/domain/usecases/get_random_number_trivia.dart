import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/model/no_params.dart';
import 'package:flutter_clean_architecture/features/numbers_trivia/domain/models/number_trivia.dart';
import 'package:flutter_clean_architecture/features/numbers_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_clean_architecture/features/numbers_trivia/domain/usecases/get_random_number_trivia.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late GetRandomNumberTrivia usecase;
  late MockNumberTriviaRepository repository;

  final tNumberTrivia = NumberTrivia(text: "test", number: 1);

  setUp(() {
    repository = MockNumberTriviaRepository();
    usecase = GetRandomNumberTrivia(repository);
  });

  test('should get trivia from the repository', () async {
    // arrange
    when(repository.getRandomNumberTrivia())
        .thenAnswer((_) async => Right(tNumberTrivia));

    // act
    final result = await usecase(NoParams());

    // assert
    expect(result, Right(tNumberTrivia));
    verify(repository.getRandomNumberTrivia()).called(1);
    verifyNoMoreInteractions(repository);
  });
}
