import 'package:education_design/const.dart';
import 'package:flutter/material.dart';

import 'status_card.dart';

class LessonsCard extends StatelessWidget {
  final String lessonCod;
  final String lessonName;
  final String lessonClass;
  final String lessonTime;

  const LessonsCard({Key key, this.lessonCod, this.lessonName, this.lessonClass, this.lessonTime}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
           Container(
              color: lightBlue,
              width: MediaQuery.of(context).size.width,
              height: 40,
              child: Align(child: Text("Ders Kodu :SF78",style: TextStyle(color: Colors.white),)),
            ),

          StatusCard(title: "Şube Kodu",value: lessonCod,),
          StatusCard(title: "Ders Adı",value: lessonName,),
          StatusCard(title: "Sınıfı",value: lessonClass,),
          StatusCard(title: "Saat",value: lessonTime,),

        ],
      ),
    );
  }
}
