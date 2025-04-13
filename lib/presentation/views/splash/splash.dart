import 'package:coffee_shope/core/utils/app_color.dart';
import 'package:coffee_shope/core/utils/app_image.dart';
import 'package:coffee_shope/presentation/providers/splash_provider.dart';
import 'package:coffee_shope/presentation/views/onbording/onbording.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Splash extends ConsumerWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isLoaded = ref.watch(splashProvider);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (isLoaded) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Onboarding()),
        );
      }
    });
    return Scaffold(
      backgroundColor: AppColor.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImage.appIcon,
              width: 280,
              height: 150,
              fit: BoxFit.fitWidth,
            ),
            const Text(
              "By Bhuvan",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
