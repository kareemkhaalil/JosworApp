import 'package:Joswor/core/class/crud.dart';
import 'package:Joswor/linkApi.dart';

class VerifyCodeForgetPassData {
  Crude crud;
  VerifyCodeForgetPassData(this.crud);
  postData(String? verifyCode, String? email) async {
    var response = await crud.postData(
      AppLink.verifyCodeForgetPassword,
      {
        "verifyCode": verifyCode,
        "email": email,
      },
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
