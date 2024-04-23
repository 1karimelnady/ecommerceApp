import 'package:flutter/material.dart';

import '../../../../app_manager/local_data.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(dark ? lightLogo : darkLogo),
        ),
        Text(
          "Welcome Back",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          "Discover limitless choices and unmatched convenience",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
