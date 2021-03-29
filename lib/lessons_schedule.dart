import 'package:education_design/lessons_card.dart';
import 'package:flutter/material.dart';

import 'const.dart';

class LessonsSchedule extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: blue,
          title: Text("Dönem Ders Planı-I.Dönem"),
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "Pazartesi",
              ),
              Tab(
                text: "Salı",
              ),
              Tab(
                text: "Çarşamba",
              ),
              Tab(
                text: "Perşembe",
              ),
              Tab(
                text: "Cuma",
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              child: Container(
                child: Column(
                  children: [
                    LessonsCard(
                      lessonCod: "1",
                      lessonName: "Nesne Programlama",
                      lessonClass: "A205",
                      lessonTime: "12:00",
                    ),
                    LessonsCard(
                      lessonCod: "2",
                      lessonName: "Bilgisayar Ağları",
                      lessonClass: "A206",
                      lessonTime: "09:00",)
                  ],
                ),
              ),
            ),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}
