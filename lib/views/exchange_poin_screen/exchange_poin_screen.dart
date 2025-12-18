import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/exchange_poin_screen/components/card_reward.dart';

class ExchangePoinScreen extends StatefulWidget {
  const ExchangePoinScreen({super.key});

  @override
  State<ExchangePoinScreen> createState() => _ExchangePoinScreenState();
}

class _ExchangePoinScreenState extends State<ExchangePoinScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
          
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  pointKamu.text.color(whiteColorP).fontFamily(bold).size(16).make(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(icLogoAwor2, width: 26,),
                      5.widthBox,
                      poin.text.fontFamily(bold).size(17).color(blackColor).make()
                    ],
                  ).box.roundedLg.color(whiteColorP).margin(EdgeInsets.only(top: 10, bottom: 20)).padding(EdgeInsets.all(10)).make(),
                  dapatkanPoin.text.color(whiteColorS).fontFamily(regular).size(12).makeCentered()
                ],
              ).box.rounded.color(brownColor).width(context.screenWidth).padding(EdgeInsets.symmetric(horizontal: 25, vertical: 20)).margin(EdgeInsets.only(bottom: 20)).make(),
          
              reward.text.color(blackColor).fontFamily(bold).size(16).make(),
          
              CardReward(icon: icFreeCoffee, titleReward: reward1, expReward: dateReward1, poinReward: poinReward1, panduan: panduan1,),
              CardReward(icon: icDiscount, titleReward: reward2, expReward: dateReward2, poinReward: poinReward2, panduan: panduan2,),
              CardReward(icon: icFreeCroissant, titleReward: reward3, expReward: dateReward3, poinReward: poinReward3, panduan: panduan3,),
              
            ],
          ).box.padding(EdgeInsets.symmetric(horizontal: 20, vertical: 25)).make(),
        ),
      )
    );
  }
}