import 'package:ecommerce_app/app_manager/local_data.dart';
import 'package:ecommerce_app/screens/home/widget/ciricular_container.dart';
import 'package:flutter/material.dart';

import '../../../app_manager/helper_function.dart';

class TChoiceChip extends StatelessWidget {
  const TChoiceChip(
      {super.key, required this.select, this.onSelected, required this.text});
  final bool select;
  final String text;
  final void Function(bool)? onSelected;
  @override
  Widget build(BuildContext context) {
    return ChoiceChip(
      padding: HelperFunction.getColor(text) != null ? EdgeInsets.all(0) : null,
      backgroundColor: HelperFunction.getColor(text) != null
          ? HelperFunction.getColor(text)
          : null,
      onSelected: onSelected,
      avatar: HelperFunction.getColor(text) != null
          ? CiricularContainer(
              radius: 16,
              width: 50,
              height: 50,
              backgroundColor: HelperFunction.getColor(text))
          : null,
      label: HelperFunction.getColor(text) != null ? SizedBox() : Text(text),
      shape: HelperFunction.getColor(text) != null ? CircleBorder() : null,
      labelStyle: TextStyle(
        color: select ? white : null,
      ),
      selected: select,
      labelPadding:
          HelperFunction.getColor(text) != null ? EdgeInsets.all(0) : null,
    );
  }
}
