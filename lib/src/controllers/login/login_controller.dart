import 'package:big_test/src/constant/url_constant.dart';
import 'package:big_test/src/models/login/login_model.dart';
import 'package:big_test/src/services/service_api.dart';

class LoginController {
  static Future<LoginModel> login(String driverCode, String password) async {
    final result = await ServiceApi.postDataLogin(UrlConstant.urlLogin,
        {"kode_driver": driverCode, "password": password});

    return LoginModel.fromJson(result);
  }
}
