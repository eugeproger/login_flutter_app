import 'package:flutter/material.dart';
import 'package:login_flutter_app/src/constants/colors.dart';
import 'package:login_flutter_app/src/constants/image_strings.dart';
import 'package:login_flutter_app/src/constants/sizes.dart';
import 'package:login_flutter_app/src/constants/text_strings.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Positioned(
            top: 0,
            left: 0,
            child: Image(image: AssetImage(tSplashTopIcon)),
          ),
          Positioned(
            top: 110,
            left: tDefaultSize,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(tAppName, style: Theme.of(context).textTheme.headline5),
                Text(tAppTagLine, style: Theme.of(context).textTheme.headline6),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 100,
            child: SvgPicture.asset(
              tSplashImage,
              semanticsLabel: 'SVG Image',
              width: 250, // Dostosuj rozmiar SVG według potrzeb
              height: 250,
            ),
          ),
          Positioned(
            bottom: 40,
            right: tDefaultSize,
            child: Container(
              width: tSplashContainerSize,
              height: tSplashContainerSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
              color: tPrimaryColor,),
            ),
          ),
        ],
      ),
    );
  }
}
