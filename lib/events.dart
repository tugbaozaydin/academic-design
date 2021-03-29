import 'package:education_design/status_card.dart';
import 'package:flutter/material.dart';

import 'const.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: blue,
          title: Text(
            "ETKİNLİKLER",
            style: TextStyle(fontSize: 15),
          )),
      body: SingleChildScrollView(
          child: Container(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Container(
                    color: lightBlue,
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    child: Align(
                        child: Text(
                      "Tenserflow Nedir ?",
                      style: TextStyle(color: Colors.white),
                    )),
                  ),
                  StatusCard(
                    title: "İl",
                    value: "Denizli",
                  ),
                  StatusCard(title: "Tarih", value: "29.03.2021"),
                  StatusCard(
                    title: "Saat",
                    value: "10.00-13.00",
                  ),
                  StatusCard(title: "Lokasyon", value: "Pamukkale"),
                  Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 10.0),
                    width: MediaQuery.of(context).size.width,
                    child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, "),
                  ),
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
