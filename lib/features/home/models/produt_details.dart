import 'package:flutter/material.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/utils/text_style.dart';

class ProdutDetails extends StatelessWidget {
  const ProdutDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
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
                  onPressed: () {},
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

            // باقي التفاصيل تحت الصورة
            Positioned(
              bottom: 20,
              left: 16,
              right: 16,
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // النصوص
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Natural Red Apple",
                        style: TextStyles.titleStyle(
                          fontSize: 22,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '1 kg , price',
                        style: TextStyles.bodyStyle(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  // أيقونة المفضلة
                  CircleAvatar(
                    backgroundColor: Appcolor.whitecolor,
                    child: Icon(
                      Icons.favorite_border,
                      color: Appcolor.darkcolor,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
