
import 'package:flutter/material.dart';

import '../const.dart';
import '../status_card.dart';

class AcademicStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: blue,
          title: Text("Akademik Durumu"),
          bottom: TabBar(
            labelColor: Colors.white,
            indicatorColor: Colors.white,
            tabs: [
              Tab(
                text: "Akademik Durumu",
              ),
              Tab(
                text: "Finansal Bilgiler",
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
                    StatusCard(title: "Öğrenci Numarası",value: "201513171002",),
                    StatusCard(title: "Akademik Birim",value: "Fakülte",),
                    StatusCard(title: "Bölüm",value: "Bilgisayar Mühendisliği",),
                    StatusCard(title: "Program",value: "Lisans Derecesi",),
                    StatusCard(title: "Akademik Danışman",value: "Doç.Dr. Tuğba Özaydın",),
                    StatusCard(title: "GANO",value: "3.02",),
                    StatusCard(title: "Bulunduğu Sınıf",value: "4",),
                    StatusCard(title: "Kayıt Yılı",value: "2015",),

                  ],
                ),
              ),
            ),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}


