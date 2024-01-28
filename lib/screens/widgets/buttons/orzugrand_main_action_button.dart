import 'package:flutter/material.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_constants/app_constants.dart';
import 'package:orzugrand/utils/app_text_style/app_text_style.dart';

class OrzugrandMainActionButton extends StatelessWidget {
  final String? label;

  final TextStyle? labelStyle;

  final Widget? labelWidget;

  final Color? colorText;

  final Color? colorButton;

  final void Function()? onTap;

  final bool enabled;

  final EdgeInsetsGeometry padding;

  final EdgeInsetsGeometry margin;

  final double? height;
  final double? width;

  const OrzugrandMainActionButton({
    Key? key,
    this.label,
    this.labelWidget,
    this.onTap,
    this.colorText,
    this.colorButton,
    this.labelStyle,
    this.height,
    this.width,
    this.enabled = true,
    this.padding = EdgeInsets.zero,
    this.margin = EdgeInsets.zero,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: enabled ? onTap : null,
      child: Container(
        height: height ?? 40,
        width: width,
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
          color: colorButton ?? AppColors.cFF7011,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: labelWidget ??
              Text(
                label ?? AppConstant.empty,
                style: labelStyle ??
                    OrzugrandTextStyle.openSansBold.copyWith(
                      fontSize: 16,
                      color: AppColors.orzugrandWhite,
                    ),
              ),
        ),
      ),
    );
  }
}
