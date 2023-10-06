import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:online_groceries/view_model/splash_view_model.dart';

typedef ResSuccess = Future<void> Function(Map<String, dynamic>);
typedef ResFailure = Future<void> Function(dynamic);

class ServiceCall {
  static void post(Map<String, dynamic> parameter, String path,
      {bool isToken = false, ResSuccess? withSuccess, ResFailure? failure}) {
    Future(() {
      var headers = {'Content-Type': 'application/x-www-form-urlencoded'};

      if (isToken) {
        var token = Get.find<SplashViewModel>().userPayload.value.authToken;
        headers["access_token"] = token ?? "";
      }

      http
          .post(Uri.parse(path), body: parameter, headers: headers)
          .then((value) {
       
      });
    });
  }
}
