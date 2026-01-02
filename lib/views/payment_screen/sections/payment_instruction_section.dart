import '../../../consts/consts.dart';

class PaymentInstructionSection extends StatefulWidget {
  const PaymentInstructionSection({super.key});

  @override
  State<PaymentInstructionSection> createState() =>
      _PaymentInstructionSectionState();
}

class _PaymentInstructionSectionState extends State<PaymentInstructionSection> {
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
                      tataCaraPayment.text.bold
                          .color(blackColor)
                          .size(17)
                          .make(),
                      Icon(
                        isExpanded
                            ? Icons.keyboard_arrow_down_rounded
                            : Icons.arrow_forward_ios_rounded,
                        color: blackColor,
                        size: 25,
                      ),
                    ],
                  ),
                  if (isExpanded) ...[
                    Column(
                      children: [
                        tacapem1.text.color(blackColor).size(14).make(),
                        tacapem2.text.color(blackColor).size(14).make(),
                        tacapem3.text.color(blackColor).size(14).make(),
                        tacapem4.text.color(blackColor).size(14).make(),
                        tacapem5.text.color(blackColor).size(14).make(),
                        tacapem6.text.color(blackColor).size(14).make(),
                      ],
                    ).box.padding(EdgeInsets.symmetric(vertical: 5)).make(),
                  ],
                ],
              ).box
              .color(whiteColorP)
              .padding(EdgeInsets.symmetric(vertical: 10))
              .margin(EdgeInsets.symmetric(vertical: 10))
              .make(),
    );
  }
}
