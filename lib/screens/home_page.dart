import 'package:flutter/material.dart';
import '../widgets/product_card.dart'; // Import widget kartu
import '../models/product_model.dart'; // Import model dan data dummy
import 'cart_screen.dart'; // Sesuaikan nama file jika menggunakan underscore
import 'profile_screen.dart'; // Sesuaikan nama file jika menggunakan underscore

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Indeks halaman yang sedang aktif (0: Produk, 1: Keranjang, 2: Profil)
  int _selectedIndex = 0;

  // Daftar halaman yang akan ditampilkan sesuai menu navigasi
  final List<Widget> _pages = [
    ProductGridScreen(), 
    CartScreen(),    
    ProfileScreen(), 
  ];

  // Fungsi untuk mengubah status indeks saat ikon ditekan
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // AppBar hanya ditampilkan jika pengguna berada di halaman Produk (Indeks 0)
      appBar: _selectedIndex == 0 
        ? AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: SizedBox(
              height: 45,
              child: TextField(
                decoration: InputDecoration(
                  hintText: "Cari produk impian...",
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[100],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ) 
        : null,
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.blueAccent,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed, // Menjaga posisi ikon tetap stabil
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Produk',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            activeIcon: Icon(Icons.shopping_cart),
            label: 'Keranjang',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}

// --- Komponen Halaman 1: Produk ---
class ProductGridScreen extends StatelessWidget {
  const ProductGridScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Produk Terbaru",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          Expanded(
            child: GridView.builder(
              // Menggunakan panjang data dari dummyProducts.length
              itemCount: dummyProducts.length, 
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 0.75,
              ),
              itemBuilder: (context, index) {
                // Memberikan data produk spesifik ke ProductCard
                return ProductCard(product: dummyProducts[index]); 
              },
            ),
          ),
        ],
      ),
    );
  }
}