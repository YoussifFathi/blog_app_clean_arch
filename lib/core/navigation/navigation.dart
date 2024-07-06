import 'package:blog_app_clean_arch/features/sign_up/presentation/view/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class Navigation {

  static const String _splashView = "/";

  static final routes = GoRouter(routes: [
  GoRoute(path: "/",name: _splashView , builder: (context, state) => const SplashView(),)  ,
  ]);



}