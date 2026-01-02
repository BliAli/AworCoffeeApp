import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/models/order_item.dart';
import 'package:awor_coffee/views/payment_screen/sections/payment_card_date.dart';
import 'package:awor_coffee/views/payment_screen/sections/payment_card_via_pesanan.dart';
import 'package:awor_coffee/views/payment_screen/sections/payment_detail_pesanan_section.dart';
import 'package:awor_coffee/views/payment_screen/sections/payment_header_section.dart';
import 'package:awor_coffee/views/payment_screen/sections/payment_instruction_section.dart';
import 'package:awor_coffee/views/payment_screen/sections/payment_method_pay_section.dart';
import 'package:awor_coffee/views/payment_screen/sections/payment_qr_section.dart';
import 'package:awor_coffee/views/payment_screen/sections/payment_totalpay_section.dart';

class PaymentScreen extends StatefulWidget {
  final List<OrderItem> orderItems;
  final int totalPrice;
  const PaymentScreen({
    super.key,
    required this.orderItems,
    required this.totalPrice,
  });

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: qrcode.text.color(brownColor).make()),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Tulisan paling atas (deadline pembayran)
              PaymentHeaderSection(),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //Qr code
                  PaymentQrSection(),
                  //Total Pembayran
                  PaymentTotalpaySection(totalPrice: widget.totalPrice),
                  //Tata cara pembayaran
                  PaymentInstructionSection(),
                  //card via pemesanan
                  PaymentCardViaPesanan(),
                  //card date pemesanan
                  PaymentCardDate(),
                  //Rincian Pemesanan
                  PaymentDetailPesananSection(orderItems: widget.orderItems),                  
                  //Metode Pembayaran
                  PaymentMethodPaySection(),
                ],
              ).box.padding(EdgeInsets.symmetric(horizontal: 20, vertical: 10)).make(),
            ],
          ),
        ),
      ),
    );
  }
}
