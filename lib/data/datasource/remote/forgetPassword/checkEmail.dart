import 'package:Joswor/core/class/crud.dart';
import 'package:Joswor/linkApi.dart';

class CheckEmailData {
  Crude crud;
  CheckEmailData(this.crud);
  postData(String? email) async {
    var response = await crud.postData(
      AppLink.checkEmail,
      {
        "email": email,
      },
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
