import 'package:flutter/material.dart';

class CheckAndTitle extends StatelessWidget {
  final Function onChanged;
  final bool value;
  final String title;

  const CheckAndTitle({Key key, this.onChanged, this.value, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Checkbox(value: value, onChanged: onChanged),
        Expanded(child: Text(title))
      ],
    );
  }
}
