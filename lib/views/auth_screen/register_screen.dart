import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/auth_screen/login_screen.dart';
import 'package:awor_coffee/views/widget_common/applogo2_widget.dart';
import 'package:awor_coffee/views/widget_common/custom_textfield.dart';
import 'package:awor_coffee/views/widget_common/our_button.dart';
import 'package:flutter/gestures.dart';
import 'package:get/get.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: whiteColorP,
      body: Center(
        child: Column(
          children: [
            (context.screenHeight * 0.05).heightBox,
            applogo2Widget(),
            20.heightBox,
            register.text.fontFamily(bold).size(30).make(),
            15.heightBox,
            Align(
              alignment: Alignment.centerLeft,
              child: started.text
                  .fontFamily(semibold)
                  .size(25)
                  .make()
                  .marginOnly(left: 22),
            ),
            15.heightBox,
            Column(
              children: [
                customTextField(title: fullName),
                customTextField(title: email),
                customTextField(title: password),
                customTextField(title: passVer),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child:
                        forgetPass.text
                            .color(lightBlue)
                            .fontFamily(regular)
                            .make(),
                  ),
                ),
                ourButton(
                  onPress: () {},
                  color: lightBrownColor,
                  textColor: whiteColorP,
                  title: register,
                ).box.width(context.screenWidth - 50).make(),
                15.heightBox,
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: sudahMemilikiAkun,
                        style: TextStyle(
                          fontFamily: regular,
                          color: blackColor,
                        ),
                      ),
                      TextSpan(
                        text: " $login",
                        style: TextStyle(fontFamily: regular, color: lightBlue),
                        recognizer:
                            TapGestureRecognizer()
                              ..onTap = () {
                                Get.to(() => LoginScreen());
                              },
                      ),
                    ],
                  ),
                ),
                15.heightBox,
                or.text.fontFamily(regular).size(16).make(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    2,
                    (index) => Padding(
                      padding: EdgeInsets.all(3),
                      child: CircleAvatar(
                        backgroundColor: whiteColorP,
                        radius: 25,
                        child: Image.asset(socialIconList[index], width: 35),
                      ),
                    ),
                  ),
                ),
              ],
            ).box.margin(EdgeInsets.symmetric(horizontal: 22)).make(),
          ],
        ),
      ),
    );
  }
}
