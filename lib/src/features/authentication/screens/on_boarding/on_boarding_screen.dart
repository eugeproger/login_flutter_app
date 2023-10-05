import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:login_flutter_app/src/utils/theme/widget_theme/text_theme.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(
            pages: [
              Container(
                  padding: const EdgeInsets.all(tDefaultSize),
                  color: tOnBoardingPage1Color,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SvgPicture.asset(tOnBoardingImage1),
                      Column(
                        children: [
                          Text(
                            tOnBoardingTitle1,
                            style:
                                Theme.of(context).brightness == Brightness.light
                                    ? TTextTheme.lightTextTheme.headline3
                                    : TTextTheme.darkTextTheme.headline3,
                          ),
                          Text(tOnBoardingSubTitle1, textAlign: TextAlign.center,),
                        ],
                      ),
                      Text(tOnBoardingCounter1, style: Theme.of(context).brightness == Brightne
                    ],
                  )),
              Container(color: tOnBoardingPage2Color),
              Container(color: tOnBoardingPage3Color),
            ],
          )
        ],
      ),
    );
  }
}
