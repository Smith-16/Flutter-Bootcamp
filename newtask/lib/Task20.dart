void main() {
  Product p1 = Product("Laptop", 55000);
  Product p2 = Product("Mouse", 1500);

  Cart cart = Cart();
  cart.addProduct(p1);
  cart.addProduct(p2);

  Order order = Order(cart);
  order.showTotal();
}

class Product {
  String name;
  double price;

  Product(this.name, this.price);
}

class Cart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    print("${product.name} added to cart.");
  }

  double getTotal() {
    return products.fold(0, (sum, item) => sum + item.price);
  }
}

class Order {
  Cart cart;

  Order(this.cart);

  void showTotal() {
    print("Total Price: ₹${cart.getTotal()}");
  }
}
