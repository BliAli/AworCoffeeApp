class OrderItem {
  final String name;
  final String pict;
  final String size;
  final String ice;
  final String sugar;
  int quantity;
  final int unitPrice;

  OrderItem({
    required this.name,
    required this.pict,
    required this.size,
    required this.ice,
    required this.sugar,
    required this.quantity,
    required this.unitPrice,
  });

  int get subtotal => unitPrice * quantity;
}
