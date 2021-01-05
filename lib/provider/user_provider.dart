import 'package:flutter/widgets.dart';
import 'package:skype_clone/models/user.dart';
import 'package:skype_clone/resources/auth_methods.dart';

class UserProvider with ChangeNotifier {
  Users _user;
  AuthMethods _authMethods = AuthMethods();

  Users get getUser => _user;

  Future<void> refreshUser() async {
    Users user = await _authMethods.getUserDetails();
    _user = user;
    notifyListeners();
  }
}
