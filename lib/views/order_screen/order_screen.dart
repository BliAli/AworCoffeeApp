import 'package:awor_coffee/consts/consts.dart';

class OrderScreen extends StatelessWidget {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: pesanan.text.fontFamily(bold).color(brownColor).make(),
        centerTitle: true,
      ),
      body: Expanded(
        child: Align(
          alignment: Alignment.topCenter,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                iconOrder,
                height: 70,
                width: 70,
              ),
              belumPesanan.text.color(greyCDateColor).fontFamily(regular).size(15).make()
            ],
          ),
        )
      ).box.margin(EdgeInsets.only(top: 35)).make(),
    );
  }
}