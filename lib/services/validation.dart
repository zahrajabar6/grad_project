import 'package:grad_project/local%20database/local_db.dart';

String? keyValidation(x) {
  if (x != LocalDB.key) {
    return "Wrong key";
  }
  return null;
}

String? passwordValidation(x) {
  if (x != LocalDB.password) {
    return "Wrong password";
  }
  return null;
}
