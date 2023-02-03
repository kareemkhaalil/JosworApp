import 'package:Joswor/core/class/crud.dart';
import 'package:Joswor/linkApi.dart';

class VerifyCodeSignUpData {
  Crude crud;
  VerifyCodeSignUpData(this.crud);
  postData(String? email, String? verifyCode) async {
    var response = await crud.postData(
      AppLink.verifyCode,
      {
        "email": email,
        "verifyCode": verifyCode,
      },
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
