import 'package:get/get.dart';
import 'package:mobile_bill/app/controllers/auth_controller.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {



    Get.lazyPut(() => AuthController(), fenix: true);
  }
}
