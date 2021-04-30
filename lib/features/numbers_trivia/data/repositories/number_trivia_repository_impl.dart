import 'package:flutter_clean_architecture/features/numbers_trivia/domain/models/number_trivia.dart';
import 'package:flutter_clean_architecture/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/features/numbers_trivia/domain/repositories/number_trivia_repository.dart';

class NumberTriviaRepositoryImpl implements NumberTriviaRepository {
  @override
  Future<Either<Failure, NumberTrivia>>? getConcreteNumberTrivia(int number) {
    // TODO: implement getConcreteNumberTrivia
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, NumberTrivia>>? getRandomNumberTrivia() {
    // TODO: implement getRandomNumberTrivia
    throw UnimplementedError();
  }
}
