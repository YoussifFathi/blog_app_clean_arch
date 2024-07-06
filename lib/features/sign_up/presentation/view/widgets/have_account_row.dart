import 'package:blog_app_clean_arch/core/theme/color_pallete.dart';
import 'package:flutter/material.dart';

class HaveAccountRow extends StatelessWidget {
  const HaveAccountRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
            "Have An Account?",
            style: Theme.of(context).textTheme.titleMedium
        ),
        InkWell(
          onTap: () {
            print("Sign in");
          },
          child: Text(
            "   Sign In",
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
