import 'package:blog_app_clean_arch/core/navigation/navigation.dart';
import 'package:blog_app_clean_arch/features/splash/presentation/view/widgets/splash_body.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navToSignUp();
    super.initState();
  }

  void navToSignUp() async {
    Future.delayed(const Duration(seconds: 3)).then((value) {
      GoRouter.of(context).goNamed(Navigation.signUpView);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashBody(),
    );
  }
}
