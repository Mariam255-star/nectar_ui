import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/core/functions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/core/utils/text_style.dart';
import 'package:nectar_ui/features/auth/pages/login_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/images/Welcome.png',
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                /// 🔹 هنا تحطي لوجو الجزرة
                SvgPicture.asset(
                  'assets/images/carrot.svg',
                  height: 40,
                ),
                const SizedBox(height: 20),
                Text(
                  'Welcome to our store',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  'Get your groceries in as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStyles.bodyStyle(
                    fontSize: 14,
                    color: Appcolor.textwelcomepagecolor,
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Appcolor.primarycolor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {
                      pushTo(context, const LoginScreen());
                    },
                    child: const Text(
                      'Get Started',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
