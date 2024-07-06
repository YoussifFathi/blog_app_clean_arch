import 'package:dartz/dartz.dart';

import '../Failures/failure.dart';

abstract class UseCaseBase<ReturnType, RequestType>{
  Future<Either<Failure, ReturnType>> execute(RequestType requestType);
}