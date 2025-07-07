import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/notif_screen/components/card_notif.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class NotifScreen extends StatefulWidget {
  const NotifScreen({super.key});

  @override
  State<NotifScreen> createState() => _NotifScreenState();
}

class _NotifScreenState extends State<NotifScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: kotakMasuk.text.make().centered(),
        titleTextStyle: TextStyle(
          fontFamily: regular,
          color: brownColor,
          fontSize: 20,
        ),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.delete))],
      ),

      body: Container(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              cardNotif(context, image: comingSoon, description: deskripsi1, date: date1),
              cardNotif(context, image: manualBrewPromo, description: deskripsi2, date: date2),
            ],
          ),
        ),
      ),
    );
  }
}
