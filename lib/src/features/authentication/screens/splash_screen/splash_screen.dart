import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_flutter_app/src/features/authentication/controllers/splash_screen_controller.dart';
import '../../../../utils/theme/widget_theme/text_theme.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();
    return Scaffold(
      body: Stack(
        children: [
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: splashController.animate.value ? -20 : -60,
              left: splashController.animate.value ? -20 : -60,
              child: Image(image: AssetImage(tSplashTopIcon)),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 1600),
              top: 90,
              left: splashController.animate.value ? tDefaultSize : -80,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 1600),
                opacity: splashController.animate.value ? 1 : 0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      tAppName,
                      style: Theme.of(context).brightness == Brightness.light
                          ? TTextTheme.lightTextTheme.headline2
                          : TTextTheme.darkTextTheme.headline2,
                    ),
                    Text(tAppTagLine,
                        style: Theme.of(context).brightness == Brightness.light
                            ? TTextTheme.lightTextTheme.subtitle2
                            : TTextTheme.darkTextTheme.subtitle2),
                  ],
                ),
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              bottom: splashController.animate.value ? 150 : 0,
              left: 0,
              right: 0,
              child: SvgPicture.asset(
                tSplashImage,
                semanticsLabel: 'SVG Image',
                width: 200, // Dostosuj rozmiar SVG według potrzeb
                height: 200,
              ),
            ),
          ),
          Obx(
            () => AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              bottom: splashController.animate.value ? 40 : 0,
              right: tDefaultSize,
              child: Container(
                width: tSplashContainerSize,
                height: tSplashContainerSize,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: tPrimaryColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
