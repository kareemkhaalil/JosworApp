import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:Joswor/core/functions/checkInternet.dart';
import 'package:http/http.dart' as http;
import 'statusRequest.dart';

class Crude {
  Future<Either<StatusRequest, Map>> postData(String linkUrl, Map data) async {
    if (await checkInternet()) {
      var res = await http.post(
        Uri.parse(linkUrl),
        body: data,
      );
      if (res.statusCode == 200) {
        Map body = jsonDecode(res.body);
        return Right(body);
      } else {
        return Left(StatusRequest.serverError);
      }
    } else {
      return Left(StatusRequest.noInternet);
    }
  }
}
