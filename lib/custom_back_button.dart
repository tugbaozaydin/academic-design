import 'package:flutter/material.dart';


class CustomBackButton extends StatelessWidget {
  final String title;
final Color colorContainer;
final Color color;
  const CustomBackButton({Key key, this.title, this.color, this.colorContainer}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      color: colorContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Icon(
              Icons.arrow_back_ios,
              color:color,
            ),
          ),
          SizedBox(width: 5),
          Text(title, style: TextStyle(color: color))
        ],
      ),
    );
  }
}
