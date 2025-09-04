import 'package:flutter/material.dart';
import 'package:nectar_ui/core/functions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/features/home/explore_page.dart';
import 'package:nectar_ui/features/home/home_screen.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        title: const Text(
          "My Cart",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black),
      ),

      body: ListView(
        padding: const EdgeInsets.fromLTRB(16, 16, 16, 100), // عشان نسيب مساحة للزرار
        children: [
          cartItem("assets/images/7.png", "Bell Pepper Red", "1kg, Price", 4.99),
          cartItem("assets/images/8.png", "Egg Chicken Red", "4pcs, Price", 1.99),
          cartItem("assets/images/banan.png", "Organic Bananas", "12kg, Price", 3.00),
          cartItem("assets/images/9.png", "Ginger", "250gm, Price", 2.99),
        ],
      ),

      // زرار Go to Checkout
      bottomSheet: Container(
        padding: const EdgeInsets.all(16),
        decoration: const BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 6,
              offset: Offset(0, -2),
            )
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolor.primarycolor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  "Go to Checkout",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 12),
            const Text(
              "\$12.96",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            )
          ],
        ),
      ),

      // الـ Bottom Navigation Bar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2, // Cart selected
        selectedItemColor: Appcolor.primarycolor,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          if (index == 0) {
            pushWithReplacement(context, const HomeScreen());
          } else if (index == 1) {
            pushWithReplacement(context, const ExplorePage());
          } else if (index == 2) {
            // Cart نفسها
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.storefront),
            label: "Shop",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Explore",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: "Favourite",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Account",
          ),
        ],
      ),
    );
  }

  // ويدجت خاصة بعرض عنصر في الكارت
  Widget cartItem(String image, String name, String qty, double price) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Appcolor.bordecolor),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Image.asset(image, height: 50),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(qty, style: const TextStyle(color: Colors.grey)),
              ],
            ),
          ),
          Row(
            children: [
              const Icon(Icons.remove, size: 18),
              const SizedBox(width: 8),
              const Text("1"),
              const SizedBox(width: 8),
              const Icon(Icons.add, size: 18, color: Appcolor.primarycolor),
            ],
          ),
          const SizedBox(width: 12),
          Text(
            "\$$price",
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          const Icon(Icons.close, color: Colors.grey),
        ],
      ),
    );
  }
}
