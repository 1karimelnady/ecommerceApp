import 'package:flutter/material.dart';

import '../../../../app_manager/local_data.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              width: 24,
              height: 24,
              image: AssetImage("assets/images/google.png"),
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            icon: const Image(
              width: 24,
              height: 24,
              image: AssetImage("assets/images/facebook.png"),
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}
