import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  final String? btnText;
  final EdgeInsetsGeometry? padding;
  final Function()? btnClick;
  final BorderRadiusGeometry? borderRadius;
  final double? elevation;
  final TextStyle? textStyle;
  final Color? btnColor;
  final Color? borderColor;
  final bool? showImageInBtn;
  final Color? shadowColor;
  final String? image;
  final double? imageWidth;
  final double? imageHeight;
  final double? distanceBetweenImage;
  final double? horizontalPadding;
  final double? verticalPadding;
  final TextAlign? textAlign;
  final Color? imageColor;

  const ButtonWidget(
      {this.btnText,
      this.btnClick,
      this.elevation,
      this.textStyle,
      this.borderRadius,
      this.padding = EdgeInsets.zero,
      this.btnColor = Colors.red,
      this.borderColor,
      this.shadowColor = Colors.grey,
      this.showImageInBtn = false,
      this.image,
      this.textAlign,
      this.imageWidth = 18,
      this.imageHeight = 18,
      this.distanceBetweenImage = 8,
      this.horizontalPadding = 0,
      this.verticalPadding = 14,
      this.imageColor = Colors.red});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(btnColor),
        shape: MaterialStateProperty.all(RoundedRectangleBorder(
          borderRadius: borderRadius ?? BorderRadius.circular(15),
        )),
        elevation: MaterialStateProperty.all(elevation ?? 0),
        overlayColor: MaterialStateProperty.all(
          Colors.transparent,
        ),
        splashFactory: NoSplash.splashFactory,
      ))),
      child: ElevatedButton(
        onPressed: btnClick!,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: horizontalPadding!, vertical: verticalPadding!),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                btnText ?? "",
                textAlign: textAlign ?? TextAlign.start,
                style: textStyle ??
                    Theme.of(context)
                        .textTheme
                        .button!
                        .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
              ),
              SizedBox(
                width: showImageInBtn! ? distanceBetweenImage : 0,
              ),
              showImageInBtn!
                  ? Image.asset(
                      image!,
                      height: imageHeight,
                      width: imageWidth,
                      color: imageColor,
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
