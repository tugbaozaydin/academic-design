import 'package:education_design/dashboard_item.dart';
import 'package:education_design/drawer_item.dart';
import 'package:flutter/material.dart';

import '../const.dart';
import '../custom_back_button.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<DashboardItem> list = [
      DashboardItem(
        title: "AKADEMİK DURUM",
        onTap: () => Navigator.pushNamed(context, "/academic_status"),
        icon: "assets/academic.png",
      ),
      DashboardItem(
        title: "DÖNEM DERS PROGRAMI",
        onTap: () => Navigator.pushNamed(context, "/lessons_schedule"),
        icon: "assets/lessons.png",
      ),
      DashboardItem(
        title: "EtKİNLİKLER",
        onTap: () => Navigator.pushNamed(context, "/events"),
        icon: "assets/events.png",
      ),
      DashboardItem(
        title: "TRANSKRİPT",
        icon:"assets/trans.png",
      ),
      DashboardItem(
        title: "DANIŞMANA MAİL \nGÖNDER",
        icon: "assets/mail.png",
      ),
      DashboardItem(
        title: "İŞLEMLER",
        icon: "assets/process.png",
      )
    ];
    return Scaffold(
        appBar: AppBar(
            backgroundColor: blue,
            title: Text(
              "TUĞBA ÜNİVERSİTESİ",
              style: TextStyle(fontSize: 15),
            ),
            actions: [
              Icon(Icons.person),
            ]),
        drawer: Drawer(
          child: Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 200,
                color: blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        children: [
                          Spacer(),
                          Image.asset("assets/logo.png",width: 75,height: 75),

                          SizedBox(height: 5),
                          Text(
                            "Tuğba Özaydın",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(height: 5),
                          Text("tugbaozaydin@edu.com.tr",
                              style: TextStyle(color: Colors.white)),
                          SizedBox(height: 5),
                        ],
                      ),
                    ),
                    Align(
                        alignment: Alignment.topRight,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: IconButton(
                            icon: Icon(
                              Icons.close,
                              color: Colors.white,
                            ),
                            onPressed: () => Navigator.pop(context),
                          ),
                        ))
                  ],
                ),
              ),
              CustomBackButton(
                title: "Profilim",
                colorContainer: Colors.grey[200],
                color: Colors.black,
              ),
              DrawerItem(
                icon: Icons.perm_contact_cal_outlined,
                text: "Kişisel Bilgilerim",
              ),
              DrawerItem(
                icon: Icons.settings,
                text: "Ayarlar",
                onTap: ()=>Navigator.pushNamed(context, "/settings"),
              ),
              DrawerItem(
                icon: Icons.vpn_key,
                text: "Şifre Güncelle",
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
              color: blue,
              width: MediaQuery.of(context).size.width,
              height: 180,
              child: Stack(
                children: [
                  Image.asset("assets/dashlogo.jpg",width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
                /*  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                        "Tuğba Özaydın",
                        style: TextStyle(color: Colors.brown, fontSize: 20,),
                      ),
                  ),*/

                ],
              ),
            ),
            Container(
              color: Colors.grey[200],
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 3,
                    childAspectRatio: 1.5,
                    mainAxisSpacing: 3),
                itemBuilder: (BuildContext context, int index) {
                  return DashboardItem(
                    title: list[index].title,
                    onTap: list[index].onTap,
                    icon: list[index].icon,
                  );
                },
              ),
            )
          ]),
        ));
  }
}
