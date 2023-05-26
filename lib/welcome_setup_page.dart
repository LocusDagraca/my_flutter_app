import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:permission_handler/permission_handler.dart';
import 'dart:io' show Platform; // Import at the top of your file
import 'package:usage_stats/usage_stats.dart';



class WelcomeSetupPage extends StatelessWidget {
  const WelcomeSetupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Align(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Welcome to Locus',
              style: TextStyle(
                fontFamily: 'titillium_regular',
                fontSize: 20,
              ),
            ),


            Stack(
              alignment: Alignment.center,
              children: [
                Transform.scale(
                  scale: 1.25,
                  child: SvgPicture.asset(
                    'assets/images/circles.svg',
                    width: 200,
                    height: 200,
                    color: Colors.white,
                  ),
                ),
                Transform.scale(
                  scale: 2.750,
                  child: CircularProgressIndicator(
                    value: 0.25,  // Adjust this value to show the progress
                  ),
                ),
                Container(
                  width: 100,
                  height: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  ),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage(
                        'assets/images/logo_jet.png'),
                    radius: 50,
                  ),
                ),
              ],
            ),



            const SizedBox(height: 20),
            const Text(
              'In order to use Locus,\n please grant all necessary permissions below.',
              style: TextStyle(
                fontFamily: 'titillium_regular',
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 15),

          Padding(  // Add Padding here
            padding: const EdgeInsets.symmetric(horizontal: 70.0),  // Adjust the padding as needed
            child: Align(
              alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      buttonWithEllipse('Access Settings', () async {
                        /* Open access settings */
                        if (Platform.isAndroid) {
                          // grant usage permission - opens Usage Settings
                          UsageStats.grantUsagePermission();

                          //bool? isPermission = await UsageStats.checkUsagePermission();

                          // Check status of permission
                          if (true) {
                            // Permission granted
                          } else {
                            // Permission denied
                          }

                        }else if (Platform.isIOS) {
                          // iOS-specific code
                          // Navigate to settings, show an alert, etc.
                        }
                      }),
                      buttonWithEllipse('Notification Settings', () { /* Open notification settings */ }),
                      buttonWithEllipse('Overlay Settings', () { /* Open overlay settings */ }),
                      buttonWithEllipse('Accessibility Settings', () { /* Open accessibility settings */ }),
                    ]
                  ),
                ),
              ),
            const SizedBox(height: 15),
            Center(
              child: ElevatedButton(
                onPressed: () { /* Trigger navigation to the next page */ },
                child: const Text('Validate'),
              ),
            ),
          ],
        ),
      ),
    );
  }


  /// New widget
  Widget buttonWithEllipse(String buttonText, VoidCallback onPressed) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         ElevatedButton(
            onPressed: onPressed,
            child: Text(buttonText),
          ),
        SvgPicture.asset('assets/images/ellipse.svg', width: 20, height: 20),
      ],
    );
  }


}