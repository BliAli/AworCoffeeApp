import 'package:awor_coffee/consts/consts.dart';

class CardQuestion extends StatefulWidget {
  const CardQuestion({super.key, this.question, this.answer});
  final String? question;
  final String? answer;

  @override
  State<CardQuestion> createState() => _CardQuestionState();
}

class _CardQuestionState extends State<CardQuestion> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child:
          Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child:
                            widget.question!.text
                                .size(15)
                                .fontFamily(regular)
                                .color(blackColor)
                                .make(),
                      ),
                      Icon(Icons.keyboard_arrow_down_outlined, size: 22),
                    ],
                  ),
                  if (isExpanded) ...[
                    15.heightBox,
                    widget.answer!.text
                        .fontFamily(regular)
                        .color(greyPoinColor)
                        .size(13)
                        .make(),
                  ],
                ],
              ).box.rounded.shadowSm
              .color(whiteColorP)
              .padding(EdgeInsets.symmetric(vertical: 10, horizontal: 20))
              .margin(EdgeInsets.symmetric(horizontal: 20, vertical: 10))
              .make(),
    );
  }
}
