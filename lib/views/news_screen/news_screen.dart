import 'package:awor_coffee/consts/consts.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  const NewsScreen({super.key, this.newsImage, this.newsCaption});

  final String? newsImage;
  final String? newsCaption;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: aworNews.text.fontFamily(bold).color(brownColor).make(),
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              newsImage!,
              width: context.screenWidth,
              height: context.screenHeight * 0.40,
              fit: BoxFit.cover,
            ).box.margin(EdgeInsets.symmetric(vertical: 10)).make(),
            SizedBox(
              child: newsCaption!.text.fontFamily(regular).size(15).color(blackColor).make()
            ).box.margin(EdgeInsets.symmetric(horizontal: 10, vertical: 10)).padding(EdgeInsets.symmetric(horizontal: 5)).make()
          ],
        ),
      ),
    );
  }
}
