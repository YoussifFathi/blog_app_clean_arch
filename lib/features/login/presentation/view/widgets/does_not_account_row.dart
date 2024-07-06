import 'package:blog_app_clean_arch/core/navigation/navigation.dart';
import 'package:blog_app_clean_arch/core/theme/color_pallete.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DoesNotHaveAccountRow extends StatelessWidget {
  const DoesNotHaveAccountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            "Doesn't Have An Account?",
            style: Theme.of(context).textTheme.titleMedium
        ),
        InkWell(
          onTap: () {
            GoRouter.of(context).goNamed(Navigation.signUpView);
          },
          child: Text(
            "   Sign Up",
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppPalette.gradient1,
                fontWeight: FontWeight.bold
            ),
          ),
        )
      ],
    );
  }
}
