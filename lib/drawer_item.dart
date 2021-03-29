import 'package:flutter/material.dart';

class DrawerItem extends StatelessWidget {
  final IconData icon;
  final String text;
final Function onTap;
  const DrawerItem({Key key, this.icon, this.text, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Column(
        children: [
          InkWell(
            onTap: onTap,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Icon(icon,color: Colors.grey,),
                  Text(text),
                ],
              ),
            ),
          ),
          Divider()
        ],
      ),
    );
  }
}
