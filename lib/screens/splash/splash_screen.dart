import 'package:flutter/material.dart';
import 'package:orzugrand/screens/app_router.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_text_style/app_text_style.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 5)).then(
      (value) => Navigator.pushReplacementNamed(context, RouteName.tabBox),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 350, bottom: 64),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 12),
                Text(
                  "ORZUGRAND",
                  style: OrzugrandTextStyle.openSansExtraBold.copyWith(
                    fontSize: 45,
                    color: AppColors.cFF7011,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
