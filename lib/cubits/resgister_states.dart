abstract class RegisterState {}
class RegisteIntialSatate extends RegisterState{}
class RegisterLoadingState extends RegisterState{}
class RegisterSuccessState extends RegisterState{}
class RegisterErrorState extends RegisterState{
  final dynamic error ;
  RegisterErrorState(this.error);
}
class CreateUserSuccessState extends RegisterState
{
final String uId ;

  CreateUserSuccessState(this.uId);
}
class CreateUserErrorState extends RegisterState{
  final dynamic error ;
  CreateUserErrorState(this.error);
}
class RegisterChangPasswordVisibilityState extends RegisterState{}
