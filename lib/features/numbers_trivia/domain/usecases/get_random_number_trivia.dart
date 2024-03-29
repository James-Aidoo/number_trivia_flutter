import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/model/no_params.dart';
import '../../../../core/usecases/usecase.dart';
import '../models/number_trivia.dart';
import '../repositories/number_trivia_repository.dart';

class GetRandomNumberTrivia implements UseCase<NumberTrivia, NoParams> {
  final NumberTriviaRepository repository;

  GetRandomNumberTrivia(this.repository);

  @override
  Future<Either<Failure, NumberTrivia>?>? call(NoParams params) async {
    return await repository.getRandomNumberTrivia();
  }
}
