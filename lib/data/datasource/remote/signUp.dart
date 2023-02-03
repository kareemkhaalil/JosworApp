import 'package:Joswor/core/class/crud.dart';
import 'package:Joswor/linkApi.dart';

class SignUpData {
  Crude crud;
  SignUpData(this.crud);
  postData(
      String? username, String? password, String? email, String? phone) async {
    var response = await crud.postData(
      AppLink.signUp,
      {
        "userName": username,
        "password": password,
        "email": email,
        "phone": phone,
      },
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
