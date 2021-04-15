import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/features/numbers_trivia/domain/models/number_trivia.dart';
import 'package:flutter_clean_architecture/features/numbers_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:flutter_clean_architecture/features/numbers_trivia/domain/usecases/get_concrete_number_trivia.dart';
import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  late GetConcreteNumberTrivia usecase;
  late MockNumberTriviaRepository repository;

  final tNumber = 1;
  final tNumberTrivia = NumberTrivia(text: "test", number: 1);

  setUp(() {
    repository = MockNumberTriviaRepository();
    usecase = GetConcreteNumberTrivia(repository);
  });

  test('should get trivia for the number from the repository', () async {
    // arrange
    when(repository.getConcreteNumberTrivia(1))
        .thenAnswer((_) async => Right(tNumberTrivia));

    // act
    final result = await usecase.execute(number: tNumber);

    // assert
    expect(result, Right(tNumberTrivia));
    verify(repository.getConcreteNumberTrivia(tNumber));
    verifyNoMoreInteractions(repository);
  });
}
