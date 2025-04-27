import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';
import 'package:training/data/datasource/auth_remote_datasource.dart';
import 'package:training/data/model/response/auth_response_model.dart';

part 'login_event.dart';
part 'login_state.dart';


class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRemoteDatasource authRemoteDatasourse;

  LoginBloc(this.authRemoteDatasourse) : super(LoginInitial()) {
    on<LoginButtonPressed>((event, emit) async {
      emit(LoginLoading());

      final response = await authRemoteDatasourse.login(event.email, event.password);

      response.fold(
        (l) => emit(LoginFailure(l)), 
        (r) => emit(LoginSuccess(r))
        );
    });
  }
}