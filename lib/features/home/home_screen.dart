import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/constants/app_images.dart';
import 'package:nectar_ui/core/functions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/utils/text_style.dart';
import 'package:nectar_ui/features/home/cart_page.dart';
import 'package:nectar_ui/features/home/explore_page.dart';
import 'package:nectar_ui/features/home/models/product_model.dart';
import 'package:nectar_ui/features/home/models/produt_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        backgroundColor: Appcolor.whitecolor,
        centerTitle: true, // خليت اللوجو يتوسّط أحسن من Center()
        title: SvgPicture.asset(
          'assets/images/logo.svg',
          height: 50,
          colorFilter: ColorFilter.mode(
            Appcolor.primarycolor,
            BlendMode.srcIn,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            // القسم الأول
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Exclusive Offer',
                  style: TextStyles.titleStyle(),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'See All',
                    style: TextStyles.bodyStyle(
                      color: Appcolor.primarycolor,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: 250,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemCount: produts.length, // تأكد إنها مكتوبة products لو عندك كده
                separatorBuilder: (context, index) =>
                    const SizedBox(width: 12),
                itemBuilder: (context, index) {
                  final product = produts[index];
                  return Container(
                    width: 160,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: Appcolor.bordecolor,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          child: Center(
                            child: Image.asset(product.image),
                          ),
                        ),
                        const SizedBox(height: 25),
                        Padding(
                          padding:
                              const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: TextStyles.bodyStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                product.quantity,
                                style: TextStyles.smallStyle(
                                  color: Appcolor.graycolor,
                                ),
                              ),
                              const SizedBox(height: 20),
                              Row(
                                children: [
                                  Text(
                                    '\$ ${product.price}',
                                    style: TextStyles.bodyStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Appcolor.primarycolor,
                                    ),
                                  ),
                                  const Spacer(),
                                  Material(
                                    color: Colors.transparent,
                                    child: InkWell(
                                      borderRadius:
                                          BorderRadius.circular(17),
                                      onTap: () {
                                        pushTo(
                                            context, const ProdutDetails());
                                      },
                                      child: Container(
                                        padding: const EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                          color: Appcolor.primarycolor,
                                          borderRadius:
                                              BorderRadius.circular(17),
                                        ),
                                        child: Icon(
                                          Icons.add,
                                          color: Appcolor.whitecolor,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            Text(
              'Best Selling',
              style: TextStyles.titleStyle(),
            ),
            const SizedBox(height: 15),
            Expanded(
              child: GridView.builder(
                itemCount: produts.length,
                gridDelegate:
                    const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) {
                  final product = produts[index];
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: Appcolor.bordecolor,
                        width: 1,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 100,
                          child: Image.asset(product.image),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                product.name,
                                style: TextStyles.bodyStyle(
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                product.quantity,
                                style: TextStyles.smallStyle(
                                  color: Appcolor.graycolor,
                                ),
                              ),
                              const SizedBox(height: 10),
                              Row(
                                children: [
                                  Text(
                                    '\$ ${product.price}',
                                    style: TextStyles.bodyStyle(
                                      fontWeight: FontWeight.w600,
                                      color: Appcolor.primarycolor,
                                    ),
                                  ),
                                  const Spacer(),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Container(
                                      padding: const EdgeInsets.all(8),
                                      decoration: BoxDecoration(
                                        color: Appcolor.primarycolor,
                                        borderRadius:
                                            BorderRadius.circular(12),
                                      ),
                                      child: Icon(
                                        Icons.add,
                                        color: Appcolor.whitecolor,
                                        size: 18,
                                      ),
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Appcolor.primarycolor,
        unselectedItemColor: Colors.black,
        onTap: (index) {
          if (index == 1) {
            pushTo(context, const ExplorePage());
          } else if (index == 2) {
            pushTo(context, const CartPage());
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
}
