import 'package:Joswor/core/class/crud.dart';
import 'package:Joswor/linkApi.dart';

class TestData {
  late Crude crud;
  TestData(this.crud);
  getData() async {
    var response = await crud.postData(
      AppLink.test,
      {},
    );
    return response.fold(
      (l) => l,
      (r) => r,
    );
  }
}
