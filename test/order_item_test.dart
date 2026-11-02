import 'package:awor_coffee/models/order_item.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('Two Rp25000 items have a Rp50000 subtotal', () {
    final item = _orderItem(unitPrice: 25000, quantity: 2);

    expect(item.subtotal, 50000);
    expect(item.unitPrice, 25000);
  });

  test('Changing quantity preserves the customized unit price', () {
    final item = _orderItem(unitPrice: 44000, quantity: 2);

    expect(item.subtotal, 88000);
    item.quantity = 3;
    expect(item.subtotal, 132000);
    item.quantity = 1;
    expect(item.subtotal, 44000);
    expect(item.unitPrice, 44000);
  });
}

OrderItem _orderItem({required int unitPrice, required int quantity}) {
  return OrderItem(
    name: 'Palmeira',
    pict: 'unused-in-unit-test.png',
    size: 'regular',
    ice: 'normal',
    sugar: 'normal',
    quantity: quantity,
    unitPrice: unitPrice,
  );
}
