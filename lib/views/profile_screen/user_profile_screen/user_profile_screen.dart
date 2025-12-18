import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/profile_screen/user_profile_screen/components/user_textfield.dart';
import 'package:flutter/material.dart';

class UserProfileScreen extends StatelessWidget {
  const UserProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: akunSaya.text.fontFamily(bold).color(brownColor).make(),
        centerTitle: true,
      ),
      body: 
          Column(
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Stack(
                      children: [
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.black, width: 1),
                          ),
                          child: ClipOval(
                            child: Image.asset(profileImage, fit: BoxFit.cover),
                          ),
                        ).box.margin(EdgeInsets.symmetric(horizontal: 5, vertical: 10)).make(),
                        Positioned(
                          top: 0,
                          right: 0,
                          child: Icon(Icons.edit, color: brownColor, size: 17,).box.roundedFull.color(whiteColorP).padding(EdgeInsets.all(2)).border(color: blackColor).make().onTap((){})
                        ),
                      ],
                    ),
                  ),
                  20.heightBox,
                  userTextField(title: username, dataUser: "Ambatukam"),
                  userTextField(title: email, dataUser: "aliaddamawi@gmail.com"),
                  userTextField(title: tanggalLahir, dataUser: "25/08/2025"),
                  userTextField(title: jenisKelamin, dataUser: "Mechanic"),
                  userTextField(title: noTelp, dataUser: "+6289683052217"),
                ],
              ).box
              .height(context.screenHeight * 0.85)
              .margin(EdgeInsets.symmetric(horizontal: 40, vertical: 20))
              .make(),
    );
  }
}
