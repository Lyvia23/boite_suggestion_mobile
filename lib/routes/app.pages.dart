import 'package:boite_suggestion/features/login/binding/login.binding.dart';
import 'package:boite_suggestion/features/login/view/login.view.dart';
import 'package:boite_suggestion/routes/app.routes.dart';
import 'package:get/get.dart';

class AppPages {
  static final pages = [
    // Compte utilisateur screen
    GetPage(
        name: AppRoutes.LOGIN,
        page: () => const LoginView(),
        binding: LoginBinding()),

   
  ];
}
