import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key key, this.title, this.value,
  }) : super(key: key);
  final String title;
  final String value;
  @override
  Widget build(BuildContext context) {
    return  Container(
        //height: 40,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical:10,horizontal:10.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(title),
                    Text(
                      value,
                      style: TextStyle(color: Colors.grey),
                    )
                  ],
                ),
            ),
            Divider()
          ],
        ),
      );
  }
}