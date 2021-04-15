import 'package:equatable/equatable.dart';

class Param extends Equatable {
  final int number;

  Param({required this.number});

  @override
  List<Object?> get props => [number];
}
