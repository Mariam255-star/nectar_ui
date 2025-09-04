import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/utils/text_style.dart';

class ProdutDetails extends StatelessWidget {
  const ProdutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // الجزء العلوي (الصورة + الأيقونات فوقها)
            Stack(
              children: [
                // صورة المنتج
                Center(
                  child: Image.asset(
                    'assets/images/banan.png',
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.contain,
                  ),
                ),

                // زر الرجوع
                Positioned(
                  top: 10,
                  left: 10,
                  child: CircleAvatar(
                    backgroundColor: Appcolor.whitecolor,
                    child: IconButton(
                      icon: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 18,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
                ),

                // زر المشاركة
                Positioned(
                  top: 10,
                  right: 10,
                  child: CircleAvatar(
                    backgroundColor: Appcolor.whitecolor,
                    child: IconButton(
                      icon: const Icon(
                        Icons.share_outlined,
                        size: 18,
                      ),
                      onPressed: () {},
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),

            // باقي التفاصيل تحت الصورة
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // اسم المنتج + أيقونة المفضلة
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Natural Red Apple",
                            style: TextStyles.titleStyle(fontSize: 22),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '1 kg , price',
                            style: TextStyles.bodyStyle(fontSize: 16),
                          ),
                        ],
                      ),
                      const Spacer(),
                      CircleAvatar(
                        backgroundColor: Appcolor.whitecolor,
                        child: Icon(
                          Icons.favorite_border,
                          color: Appcolor.darkcolor,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 20),

                  // الكمية + السعر
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Appcolor.bordecolor),
                          borderRadius: BorderRadius.circular(18),
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.remove),
                            ),
                            const Text(
                              "1",
                              style: TextStyle(fontSize: 16),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.add),
                            ),
                          ],
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$4.99",
                        style: TextStyles.titleStyle(
                          fontSize: 22,
                          color: Appcolor.primarycolor,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 30),

                  // الوصف
                  Text(
                    "Product Detail",
                    style: TextStyles.titleStyle(fontSize: 18),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Apples are nutritious. Apples may be good for weight loss and your heart. "
                    "As part of a healthful and varied diet, they may help reduce the risk of cancer, "
                    "diabetes, and high blood pressure.",
                    style: TextStyles.bodyStyle(fontSize: 14),
                  ),

                  const SizedBox(height: 30),

                  // زر السلة
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Appcolor.primarycolor,
                        padding: const EdgeInsets.symmetric(vertical: 14),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        "Add To Basket",
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
