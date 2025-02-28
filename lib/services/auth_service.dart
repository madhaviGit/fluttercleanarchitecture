class AuthService {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  void login() {
    _isLoggedIn = true;
  }

  void logout() {
    _isLoggedIn = false;
  }
}
