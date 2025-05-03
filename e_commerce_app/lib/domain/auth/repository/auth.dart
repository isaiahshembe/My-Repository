import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/data/auth/models/user_creation_request.dart';

abstract class AuthRepository{

  Future<Either> signup(UserCreationRequest user);
}