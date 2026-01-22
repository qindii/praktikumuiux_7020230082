class Product {
  final String name;
  final String price;
  final String image;
  final String description;

  Product({
    required this.name, 
    required this.price, 
    required this.image,
    required this.description,
  });
}

List<Product> dummyProducts = [
  Product(
    name: "MacBook Pro M2", 
    price: "Rp 20.000.000", 
    image: "",
    description: "Laptop bertenaga dengan chip M2 terbaru dari Apple, sangat cocok untuk profesional kreatif dan developer.",
  ),
  Product(
    name: "iPhone 14 Pro", 
    price: "Rp 18.000.000", 
    image: "",
    description: "Smartphone flagship dengan kamera 48MP dan fitur Dynamic Island yang revolusioner.",
  ),
  Product(
    name: "Apple Watch S8", 
    price: "Rp 7.000.000", 
    image: "",
    description: "Smartwatch canggih untuk memantau kesehatan Anda setiap saat dengan sensor suhu dan deteksi tabrakan.",
  ),
  Product(
    name: "AirPods Pro", 
    price: "Rp 4.000.000", 
    image: "",
    description: "Earphone nirkabel dengan Active Noise Cancellation yang membuat Anda tetap fokus pada musik.",
  ),
];