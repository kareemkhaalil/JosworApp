import 'package:Joswor/core/class/crud.dart';
import 'package:Joswor/linkApi.dart';

class ResetPasswordData {
  Crude crud;
  ResetPasswordData(this.crud);
  postData(String? password, String? email) async {
    var response = await crud.postData(
      AppLink.resetPassword,
      {
        "password": password,
        "email": email,
      },
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
