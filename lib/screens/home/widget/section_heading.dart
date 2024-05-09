import 'package:flutter/material.dart';

class SectionHeading extends StatelessWidget {
  const SectionHeading({
    super.key,
    this.textColor,
    required this.title,
    this.bodyTitle = 'View all',
    this.textPressed,
    this.showActionButton = true,
  });
  final Color? textColor;
  final String title;
  final String bodyTitle;
  final bool showActionButton;
  final void Function()? textPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(
                color: textColor,
              ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if (showActionButton)
          TextButton(onPressed: textPressed, child: Text(bodyTitle))
      ],
    );
  }
}
