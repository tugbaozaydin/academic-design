import 'package:flutter/material.dart';

import 'const.dart';

class DashboardItem extends StatelessWidget {
  final Function onTap;
  final String icon;
  final String title;
  const DashboardItem({Key key, this.onTap, this.icon, this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(icon,width: 50,height: 50,),
            SizedBox(height: 5),
            Text(
              title,
              style: TextStyle(fontSize: 12,color: blue),
            )
          ],
        ),
      ),
    );
  }
}
