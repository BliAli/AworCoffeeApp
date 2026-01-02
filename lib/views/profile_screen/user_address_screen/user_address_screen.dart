import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/profile_screen/user_address_screen/components/card_address.dart';

class UserAddressScreen extends StatefulWidget {
  const UserAddressScreen({super.key});

  @override
  State<UserAddressScreen> createState() => _UserAddressScreenState();
}

class _UserAddressScreenState extends State<UserAddressScreen> {
  bool isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: alamatTersimpan.text.fontFamily(semibold).size(18).make(),
        centerTitle: true,
      ),
      body: SafeArea(
        child:
            Column(
                  children: [
                    CardAddress(headerAddress: headerAlamat1, bodyAddress: bodyAlamat1, mapAddress: mapKosKuning,),
                    CardAddress(headerAddress: headerAlamat2, bodyAddress: bodyAlamat2, mapAddress: mapKosWarungPojok,)
                  ],
                ).box
                .margin(EdgeInsets.symmetric(horizontal: 20, vertical: 10))
                .make(),
      ),
    );
  }
}
