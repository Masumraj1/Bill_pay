class AppStrings {
  ///==================================✅✅Home✅✅=======================
  static const String username = "Username";
  static const String enterYourUserName = "Enter your username";
  static const String password = "Password";
  static const String login = "Login";
  static const String enterYourPassword = "Enter your password";
  static const String forgetPassword = "Forgot Password?";
  static const String rememberMe = "Remember me";
  static const String cashierPosApp = "Cashier POS App";

  ///: <<<<<<======🗄️🗄️🗄️🗄️🗄️🗄️💡💡validation text💡💡🗄️🗄️🗄️🗄️🗄️🗄️🗄️>>>>>>>>===========
  static RegExp passRegexp = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.{8,}$)');
  static RegExp emailRegexp = RegExp(
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
  static const String fieldCantBeEmpty = "Field can't be empty";
  static const String passDoesNotMatch = "Password does not match";
  static const String passwordMustHaveEightWith =
      "Password must have 8 characters With(A-z,a-z,0-9)";
  static const String enterValidEmail = "Enter a valid email";
  static const String passMustContainBoth =
      "Password must be 8 characters long & must include one capital letter";
  static const String enterAValidName = "Enter a valid name";
  static const String enterAValidAddress = "Enter a valid Address";
  static const String enterValidEmailOrUserName = "EnterValidEmailOrUsername";
  static const String enterValidUserName = "EnterValidUsername";
  static const String enterValidEamil = "Please Enter Your Email Address";
  static const String passwordLengthAndContain =
      "Password must be at least 8 characters long and at least one uppercase letter, one lowercase letter, one number";
}