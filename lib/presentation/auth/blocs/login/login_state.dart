part of 'login_bloc.dart';

sealed class LoginState{}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginSuccess extends LoginState {

  final AuthResponseModel authResponseModel;

  LoginSuccess(this.authResponseModel);
}

class LoginFailure extends LoginState {

  final String message;

  LoginFailure(this.message);
}