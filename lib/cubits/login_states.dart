abstract class LoginStates{}
class LoginInitialState extends LoginStates{}
class WelcomeRoleBasedLoadingState extends LoginStates{}
class WelcomeRoleBasedSuccessState extends LoginStates{}
class LoginLoadingState extends LoginStates{}
class LoginSuccessState extends LoginStates
{
final String uId ;
LoginSuccessState(this.uId);
}
class LoginErrorState extends LoginStates{
  final dynamic error ;
  LoginErrorState(this.error);
}
class ChangPasswordVisibilityState extends LoginStates{}
class AdminLoginSuccessState extends LoginStates{
  final String uIdAdmin ;
  AdminLoginSuccessState(this.uIdAdmin);
}
