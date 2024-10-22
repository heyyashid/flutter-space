import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  final List<User> _users = [];

  List<User> get users => _users;

  void addUser(User user) {
    _users.add(user);
    notifyListeners();
  }

  void updateUser(String id, String newName) {
    for (var user in _users) {
      if (user.id == id) {
        user.name = newName;
        notifyListeners();
        // break;
      }
    }
  }

  // void updateUser(String id, String newName) {
  //   final userIndex = _users.indexWhere((user) => user.id == id);
  //   if (userIndex >= 0) {
  //     _users[userIndex] = User(id: id, name: newName);
  //     notifyListeners();
  //   }
  // }

  void deleteUser(String id) {
    _users.removeWhere((user) => user.id == id);
    notifyListeners();
  }
}

class User {
  final String id;
  String name;

  User({required this.id, required this.name});
}
