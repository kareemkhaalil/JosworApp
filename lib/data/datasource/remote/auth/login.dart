import 'package:Joswor/core/class/crud.dart';
import 'package:Joswor/linkApi.dart';

class LoginData {
  Crude crud;
  LoginData(this.crud);
  postData(String? password, String? user) async {
    var response = await crud.postData(
      AppLink.login,
      {
        "password": password,
        "userName": user,
      },
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
