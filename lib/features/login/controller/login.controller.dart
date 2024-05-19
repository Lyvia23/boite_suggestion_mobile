

import 'package:get/get.dart';

class LoginController extends GetxController {

  RxString selectedvalue = "".obs;

  void onChangeValue(String value) {
    selectedvalue.value = value;
    update();
  }
  
}