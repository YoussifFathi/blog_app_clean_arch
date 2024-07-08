import 'package:blog_app_clean_arch/core/generic_controllers/auth_controller.dart';
import 'package:blog_app_clean_arch/core/navigation/navigation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {




  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Column(
        children: [
          Text("Home user name is : ${AuthController.authController.userEntity.name}"),
          ElevatedButton(onPressed: () async {
            await AuthController.authController.logout();
            _navToSplash();

          }, child: const Text("logout"))
        ],
      ),
    );
  }

  _navToSplash(){
    if(mounted){
      GoRouter.of(context).goNamed(Navigation.splashView);

    }
  }

}
