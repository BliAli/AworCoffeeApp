import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/auth_screen/login_screen.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: profile.text.color(brownColor).fontFamily(bold).make(),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(profileImage, width: 45, height: 45)
                      .box
                      .roundedFull
                      .clip(Clip.antiAlias)
                      .margin(EdgeInsets.only(right: 20))
                      .make(),

                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            userProfileName.text
                                .color(whiteColorP)
                                .fontFamily(regular)
                                .size(16)
                                .make(),
                            userNoProfile.text
                                .color(whiteColorP)
                                .fontFamily(regular)
                                .size(14)
                                .make(),
                          ],
                        ),
                        Icon(
                          Icons.arrow_forward_ios_sharp,
                          color: whiteColorP,
                          size: 22,
                        ),
                      ],
                    ),
                  ),
                ],
              ).box.rounded
              .color(brownColor)
              .padding(EdgeInsets.symmetric(horizontal: 20, vertical: 10))
              .margin(EdgeInsets.symmetric(horizontal: 30, vertical: 10))
              .make(),

          Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  kodeRefHint.text
                      .color(greyPoinColor)
                      .fontFamily(regular)
                      .size(12)
                      .make(),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        kodeRef.text
                            .color(greyPoinColor)
                            .fontFamily(regular)
                            .size(12)
                            .make(),
                        10.widthBox,
                        Icon(Icons.copy_outlined, color: brownColor, size: 22),
                      ],
                    ),
                  ),
                ],
              ).box.rounded
              .color(whiteColorP)
              .padding(EdgeInsets.symmetric(horizontal: 20, vertical: 5))
              .margin(EdgeInsets.only(right: 30, left: 30, top: 10, bottom: 20))
              .make(),

          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext context, index) {
                return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        profileList[index].text
                            .color(brownColor)
                            .fontFamily(regular)
                            .size(16)
                            .make(),
                        if (profileList[index] == 'Media Sosial') ...[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: List.generate(
                              medSosIconList.length,
                              (index) => Image.asset(
                                medSosIconList[index],
                                width: 30,
                                height: 30,
                              ).box.roundedFull.clip(Clip.antiAlias).margin(EdgeInsets.symmetric(horizontal: 2)).make()
                            ),
                          ),
                        ],
                      ],
                    ).box
                    .withDecoration(
                      BoxDecoration(
                        border: Border(
                          top: BorderSide(color: brownColor, width: 1),
                        ),
                      ),
                    )
                    .padding(EdgeInsets.symmetric(horizontal: 35, vertical: 15))
                    .make();
              },
              itemCount: profileList.length,
            ),
          ),

          Row(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: brownColor,
                ),
                onPressed: () {
                  Get.to(() => LoginScreen());
                },
                child: keluar.text.color(whiteColorP).fontFamily(bold).make(),
              ).box.margin(EdgeInsets.symmetric(horizontal: 15)).make(),
              verApp.text.color(greyCDateColor).fontFamily(regular).size(14).make()
            ],
          ).box.margin(EdgeInsets.symmetric(horizontal: 15)).make(),
        ],
      ).box.height(context.screenHeight * 0.75).make(),
    );
  }
}
