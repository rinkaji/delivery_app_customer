import 'package:get/state_manager.dart';

class AuthController extends GetxController {
  bool isLogin = true;

  void toggleWidget() {
    isLogin = !isLogin;
    update();
  }
}
