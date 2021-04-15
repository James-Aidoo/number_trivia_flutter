import 'package:dartz/dartz.dart';
import 'package:flutter_clean_architecture/core/error/failure.dart';
import 'package:flutter_clean_architecture/features/numbers_trivia/domain/models/number_trivia.dart';
import 'package:flutter_clean_architecture/features/numbers_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:meta/meta.dart';

class GetConcreteNumberTrivia {
  final NumberTriviaRepository repository;

  GetConcreteNumberTrivia(this.repository);

  Future<Either<Failure, NumberTrivia>?> execute(
      {@required required int number}) async {
    return await repository.getConcreteNumberTrivia(number);
  }
}
