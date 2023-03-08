import '../models/number_trivia_model.dart';

abstract class NumberTriviaRemoteDatasource{
  /// calls the http://numbersapi.com/{number} endpoint
  /// Throws a [ServerException] for all error codes.
  Future<NumberTriviaModel?>? getConcreteNumberTrivia(int number);

  /// calls the http://numbersapi.com/random endpoint
  ///   /// Throws a [ServerException] for all error codes.
  Future<NumberTriviaModel?>? getRandomNumberTrivia();
}