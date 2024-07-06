import 'package:blog_app_clean_arch/core/navigation/navigation.dart';
import 'package:blog_app_clean_arch/core/theme/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
      theme: AppTheme.darkTheme,
        routerConfig: Navigation.routes,
    );
  }
}
