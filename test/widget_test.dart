import 'package:awor_coffee/consts/consts.dart';
import 'package:awor_coffee/views/checkout_screen/checkout_screen.dart';
import 'package:awor_coffee/views/checkout_screen/sections/checkout_order_detail_section.dart';
import 'package:awor_coffee/views/checkout_screen/sections/checkout_summary_section.dart';
import 'package:awor_coffee/views/delivery_screen/menu_detail.dart' as delivery;
import 'package:awor_coffee/views/order_screen/order_screen.dart';
import 'package:awor_coffee/views/payment_screen/payment_screen.dart';
import 'package:awor_coffee/views/payment_screen/sections/payment_detail_pesanan_section.dart';
import 'package:awor_coffee/views/payment_screen/sections/payment_totalpay_section.dart';
import 'package:awor_coffee/views/pickup_screen/menu_detail.dart' as pickup;
import 'package:awor_coffee/views/widget_common/cup_size_selector.dart';
import 'package:awor_coffee/views/widget_common/espresso_selector.dart';
import 'package:awor_coffee/views/widget_common/ice_level_selector.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  setUpAll(() async {
    // Use the app fonts so layout checks reflect the actual interface.
    for (final family in [regular, semibold, bold, extralight]) {
      final loader = FontLoader(family)
        ..addFont(rootBundle.load('assets/fonts/$family.ttf'));
      await loader.load();
    }
  });

  setUp(() {
    Get.testMode = true;
  });
  tearDown(() => Get.reset());

  testWidgets('Order screen shows the empty state without layout errors', (
    tester,
  ) async {
    await tester.pumpWidget(const MaterialApp(home: OrderScreen()));

    expect(find.text(belumPesanan), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  final detailScreens = <String, Widget>{
    'Pickup': const pickup.MenuDetail(
      menuPic: picPalmeira,
      menuName: palmeira,
      menuDes: desPalmeira,
      menuPrice: '25000',
      menuType: signatures,
    ),
    'Delivery': const delivery.MenuDetail(
      menuPic: picPalmeira,
      menuName: palmeira,
      menuDes: desPalmeira,
      menuPrice: '25000',
      menuType: signatures,
    ),
  };

  for (final entry in detailScreens.entries) {
    testWidgets('${entry.key}: quantity updates totals through payment', (
      tester,
    ) async {
      await _pumpDetail(tester, entry.value);
      await _addTwoItems(tester, expectedTotal: 50000);
      _expectCheckoutTotal(50000);

      final orderDetails = find.byType(CheckoutOrderDetailSection);
      final addButton = find.descendant(
        of: orderDetails,
        matching: find.byIcon(Icons.add),
      );
      final removeButton = find.descendant(
        of: orderDetails,
        matching: find.byIcon(Icons.remove),
      );

      await _tapVisible(tester, addButton);
      _expectCheckoutTotal(75000);
      await _tapVisible(tester, removeButton);
      _expectCheckoutTotal(50000);
      await _tapVisible(tester, removeButton);
      _expectCheckoutTotal(25000);
      await _tapVisible(tester, removeButton);
      _expectCheckoutTotal(25000);
      await _tapVisible(tester, addButton);

      await tester.tap(find.text(lanjutkan));
      await tester.pumpAndSettle();
      await tester.tap(find.text('Yakin'));
      await tester.pumpAndSettle();

      expect(find.byType(PaymentScreen), findsOneWidget);
      for (final section in [
        find.byType(PaymentTotalpaySection),
        find.byType(PaymentDetailPesananSection),
      ]) {
        expect(
          find.descendant(of: section, matching: find.text('Rp50000')),
          findsOneWidget,
        );
      }
      expect(tester.takeException(), isNull);
    });

    testWidgets('${entry.key}: add-on prices are charged per item once', (
      tester,
    ) async {
      await _pumpDetail(tester, entry.value);
      await _tapVisible(
        tester,
        find.byWidgetPredicate(
          (widget) => widget is Radio<CupSize> && widget.value == CupSize.large,
        ),
      );
      await _tapVisible(
        tester,
        find.byWidgetPredicate(
          (widget) =>
              widget is Radio<AddEspresso> &&
              widget.value == AddEspresso.singleShot,
        ),
      );
      await _tapVisible(
        tester,
        find.byWidgetPredicate(
          (widget) =>
              widget is Radio<IceLevel> && widget.value == IceLevel.separate,
        ),
      );

      // (25000 base + 5000 large + 9000 espresso + 5000 ice) * 2.
      await _addTwoItems(tester, expectedTotal: 88000);
      _expectCheckoutTotal(88000);
      expect(tester.takeException(), isNull);
    });
  }
}

Future<void> _pumpDetail(WidgetTester tester, Widget detail) async {
  tester.view.physicalSize = const Size(430, 960);
  tester.view.devicePixelRatio = 1;
  addTearDown(tester.view.resetPhysicalSize);
  addTearDown(tester.view.resetDevicePixelRatio);
  await tester.pumpWidget(
    GetMaterialApp(theme: ThemeData(fontFamily: regular), home: detail),
  );
}

Future<void> _tapVisible(WidgetTester tester, Finder finder) async {
  await tester.ensureVisible(finder);
  await tester.pumpAndSettle();
  await tester.tap(finder);
  await tester.pumpAndSettle();
}

Future<void> _addTwoItems(
  WidgetTester tester, {
  required int expectedTotal,
}) async {
  for (var i = 0; i < 2; i++) {
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();
  }
  await tester.tap(find.text('Tambahkan Pesanan - Rp$expectedTotal'));
  await tester.pumpAndSettle();
  expect(find.byType(CheckoutScreen), findsOneWidget);
}

void _expectCheckoutTotal(int amount) {
  expect(find.text('Rp $amount'), findsOneWidget);
  expect(
    find.descendant(
      of: find.byType(CheckoutSummarySection),
      matching: find.text('$amount'),
    ),
    findsWidgets,
  );
}
