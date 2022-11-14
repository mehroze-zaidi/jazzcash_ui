import 'package:flutter/material.dart';


class ButtonWithLeadingIcon extends StatelessWidget {
  final Widget? icon;
  final String? btnText;
  final TextStyle? textStyle;
  final Function()? btnClick;
  final Color? btnColor;
  final BorderRadiusGeometry? borderRadius;
  final double? elevation;
  final double? borderWidth;
  final Color? shadowColor;
  final Color? borderColor;
  final EdgeInsetsGeometry? padding;

  const ButtonWithLeadingIcon(
      {Key? key,
      this.icon,
      this.btnText,
      this.textStyle,
      this.borderRadius,
      this.elevation,
      this.btnClick,
      this.btnColor,
      this.borderWidth,
      this.borderColor,
      this.shadowColor,
      this.padding})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: () => btnClick!(),
      child: IntrinsicWidth(
        child: Container(
          decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: shadowColor ?? Colors.black26,
                  spreadRadius: 1,
                  blurRadius: elevation ?? 12,
                  offset: const Offset(0, 2), // changes position of shadow
                ),
              ],
              color: btnColor ?? Colors.redAccent,
              borderRadius: borderRadius ?? const BorderRadius.all(Radius.circular(33))),
          child: Padding(
            padding: padding ?? const EdgeInsets.symmetric(vertical: 12.0, horizontal: 15),
            child: Row(
              children: [
                icon ??
                    const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  btnText ?? 'no text',
                  style: textStyle ??
                      Theme.of(context)
                          .textTheme
                          .button!
                          .copyWith(color: Colors.white, fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
