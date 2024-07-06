import 'package:blog_app_clean_arch/features/sign_up/presentation/view/sign_up_view.dart';
import 'package:blog_app_clean_arch/features/splash/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class Navigation {
  static const String splashView = "/";
  static const String signUpView = "/SignUpView";

  static final routes = GoRouter(routes: [
    GoRoute(
      path: "/",
      name: splashView,
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: "/SignUpView",
      name: signUpView,
      builder: (context, state) => const SignUpView(),
    ),
  ]);
}
