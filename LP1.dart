class Product {
  int id;
  String name;
  int price;

  Product(this.id, this.name, this.price);
}

class Cashier {
  String cashierName;
  List<Product> productList;
  int receivedMoney;

  Cashier(this.cashierName, this.productList, this.receivedMoney);

  Future<void> takeOrder(Customer customer) async {
    print('Hi, welcome to out beauty salon. Order will taken by me, $cashierName.\n');

    int totalPrice = 0;
    customer.selectedProducts.forEach((product) {
      print('Product: ${product.name}, Price: ${product.price}');
      totalPrice += product.price; // menghitung total customer
      print('-> Display total price: $totalPrice');
});
   print('\nYou have to pay: $totalPrice');

    if (totalPrice <= customer.wallet) {
      print('Payment received from ${customer.name}');
      receivedMoney += totalPrice;
      customer.wallet -= totalPrice;
      print('Change given: ${customer.wallet}\n');
      print('Thank you for your purchase, ${customer.name}! Have a nice day!');
    } else {
      print('Insufficient funds!'); // jika uang customer tidak cukup
    }
  }
}

class Customer {
  String name;
  List<Product> selectedProducts;
  int wallet;

  Customer(this.name, this.selectedProducts, this.wallet);
}

void main() async {
  List<Product> availableProducts = [
    Product(1, 'Nail Gel', 30),
    Product(2, 'Lash Lift', 60),
    Product(3, 'Creambath', 50),
    Product(4, 'Eyelash Extension', 50),
    Product(5, 'Facelift', 150)
  ];

  Cashier cashier = Cashier('Arya', availableProducts, 0);

  List<Product> selectedProducts = [availableProducts[0], availableProducts[2]];
  Customer customer = Customer('Tattha', selectedProducts, 300);

  await cashier.takeOrder(customer);
}