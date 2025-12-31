import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/models/order_item.dart';
import 'package:awor_coffee/views/checkout_screen/sections/checkout_address_section.dart';
import 'package:awor_coffee/views/checkout_screen/sections/checkout_method_section.dart';
import 'package:awor_coffee/views/checkout_screen/sections/checkout_order_detail_section.dart';
import 'package:awor_coffee/views/checkout_screen/sections/checkout_payment_section.dart';
import 'package:awor_coffee/views/checkout_screen/sections/checkout_summary_section.dart';
import 'package:awor_coffee/views/checkout_screen/sections/checkout_voucher_section.dart';
import 'package:awor_coffee/views/widget_common/our_button.dart';

class CheckoutScreen extends StatefulWidget {
  final List<OrderItem> orderItems;

  const CheckoutScreen({super.key, required this.orderItems});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  late List<OrderItem> orderItems;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    orderItems = widget.orderItems;
  }

  void increaseQty(int index) {
    setState(() {
      orderItems[index].quantity++;
    });
  }

  void decreaseQty(int index) {
    if (orderItems[index].quantity > 1) {
      setState(() {
        orderItems[index].quantity--;
      });
    }
  }

  int get totalPrice => orderItems.fold(0, (sum, item) => (sum + (item.price * item.quantity)).toInt());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: checkout.text.fontFamily(bold).color(brownColor).make(),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Bagian alamat pemesanan
              CheckoutAddressSection(),
              //Metode Pemesanan
              CheckoutMethodSection(),
              //Voucher Belanja
              CheckoutVoucherSection(),
              //Detail Pesanan
              CheckoutOrderDetailSection(orderItems: orderItems, onAdd: increaseQty, onRemove: decreaseQty),
              //Metode Pembayaran
              CheckoutPaymentSection(),
              //Rincinan Pesanan
              CheckoutSummarySection(totalHarga: totalPrice,),
            ],
          ),
        ),
      ),
      bottomNavigationBar:
          ourButton(
                title: lanjutkan,
                color: brownColor,
                textColor: whiteColorP,
                onPress: () {},
              ).box
              .padding(EdgeInsets.all(25))
              .height(context.screenHeight * 0.12)
              .topRounded()
              .make(),
    );
  }
}
