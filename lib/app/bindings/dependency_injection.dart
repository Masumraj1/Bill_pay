import 'package:get/get.dart';

class DependencyInjection extends Bindings {
  @override
  void dependencies() {


    // 🔥Lazy initialization🔥 - instance তৈরি হবে যখন প্রয়োজন হবে
    // Get.lazyPut(() => HomeController(), fenix: true);
  }
}
