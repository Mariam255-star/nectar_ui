import 'package:flutter/material.dart';
import 'package:nectar_ui/core/functions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nectar_ui/features/auth/pages/login_screen.dart';
import 'package:nectar_ui/features/home/welcome_screen.dart';

class SplashScreen extends StatefulWidget{

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Start any animations or timers here
    Future.delayed(const Duration(seconds: 6), () {

     pushWithReplacement(context, const WelcomeScreen());
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.primarycolor,
      body: Center(
        child: SvgPicture.asset(
          'assets/images/logo.svg',
        ),
      ),
    );
  }
}