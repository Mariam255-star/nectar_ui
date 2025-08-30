import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nectar_ui/core/constants/app_images.dart';
import 'package:nectar_ui/core/functions/navigation.dart';
import 'package:nectar_ui/core/utils/colors.dart';
import 'package:nectar_ui/features/home/home_screen.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Appcolor.darkcolor),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppImages.location),
            const SizedBox(height: 20),
            Text(
              'Select Your Location',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w600,
                color: Appcolor.darkcolor,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              'Switch on your location to stay in tune with what’s happening in your area',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Appcolor.graycolor,
              ),
            ),
            const SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TextFormField(
                decoration: InputDecoration(
                  labelText: 'Address',
                  labelStyle: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.graycolor,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            
            // هنا الزرار الجديد بدل الـ Container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Appcolor.primarycolor,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                
                    pushWithReplacement(context, const HomeScreen());
                },
                child: Text(
                  'Submit',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Appcolor.whitecolor,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
