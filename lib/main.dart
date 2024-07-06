import 'package:blog_app_clean_arch/core/navigation/navigation.dart';
import 'package:blog_app_clean_arch/core/secerts/app_secerts.dart';
import 'package:blog_app_clean_arch/core/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Supabase.initialize(url: AppSecerts.projectUrl, anonKey: AppSecerts.apiKey);
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
