import 'package:flutter/material.dart';
import 'package:river_pod/customized_widget/color_config.dart';
import 'package:river_pod/customized_widget/size_config.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({super.key, required this.btnText, this.buttonIcon = Icons.navigate_next_rounded, required this.onPressed, this.isPrimaryButton = true, this.btnColor});

  String btnText;
  IconData? buttonIcon;
  final Function()? onPressed;
  bool? isPrimaryButton;
  double? textSize;
  Color? btnColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: isPrimaryButton!
          ? Container(
              // margin: const EdgeInsets.all(kDefaultPadding),
              height: getProportionateScreenHeight(50),
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), color: btnColor ?? ColorConfig.primaryColor),
              child: Center(
                child: Icon(buttonIcon, size: 35, color: ColorConfig.whiteColor,),
              ),
            )
          : Container(
              // margin: const EdgeInsets.all(kDefaultPadding),
              height: getProportionateScreenHeight(20),
              width: SizeConfig.screenWidth,
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: ColorConfig.primaryColor),
                  borderRadius: BorderRadius.circular(15),
                  color: ColorConfig.backgroundColorPrimary),
              child: Center(
                child: Icon(buttonIcon, size: 50, color: ColorConfig.whiteColor,),
              ),
            ),
    );
  }
}
