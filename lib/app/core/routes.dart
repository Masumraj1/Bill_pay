

import 'package:go_router/go_router.dart';
import 'package:mobile_bill/app/core/route_path.dart';
import 'package:mobile_bill/app/global/helper/extension.dart';
import 'package:mobile_bill/app/view/screens/home/home_screen.dart';



class AppRouter {
  static final GoRouter initRoute = GoRouter(
      initialLocation: RoutePath.homeScreen.addBasePath,
      // navigatorKey: Get.key,
      debugLogDiagnostics: true,
      routes: [
        ///======================= splash Route =======================
        // GoRoute(
        //   name: RoutePath.splashScreen,
        //   path: RoutePath.splashScreen.addBasePath,
        //   builder: (context, state) => const SplashScreen(),
        //   redirect: (context, state) {
        //     // Future.delayed(const Duration(seconds: 1), () async{
        //     //   bool? isRememberMe = await SharePrefsHelper.getBool(AppConstants.isRememberMe);
        //     //   if (isRememberMe == true ) {
        //     //     AppRouter.route.replaceNamed(RoutePath.homeScreen);
        //     //   }   else {
        //     //     AppRouter.route.replaceNamed(RoutePath.signInScreen);
        //     //   }
        //     // });
        //     return null;
        //   },
        // ),

        ///=======================DartScreen =======================
        GoRoute(
          name: RoutePath.homeScreen,
          path: RoutePath.homeScreen.addBasePath,
          builder: (context, state) =>  const HomeScreen(),
        ),


      ]);

  static GoRouter get route => initRoute;
}