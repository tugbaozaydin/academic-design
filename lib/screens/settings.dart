import 'package:education_design/check_and_title.dart';
import 'package:flutter/material.dart';

import '../const.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool newValue=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: blue,
        title: Text("Ayarlar",style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                 CheckAndTitle(title: "Email gönderilmesini onaylıyorum",value: false,),
                CheckAndTitle(title: "SMS gönderilmesini onaylıyorum",value: false,),
                  CheckAndTitle(title: "Kişisel verilerimin saklanmasını onaylıyorum",value: newValue,onChanged: (val){
                    setState(() {
                      newValue=val;
                    });
                  },)

                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ElevatedButton(

                  onPressed: () {},
                  style: ElevatedButton.styleFrom(primary: blue),
                  child: Text("Güncelle",style: TextStyle(color: Colors.white),)),
            )
          ],
        ),
      ),
    );
  }
}
