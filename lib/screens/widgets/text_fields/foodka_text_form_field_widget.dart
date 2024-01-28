import 'package:flutter/material.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_text_style/app_text_style.dart';

class OrzugrandTexFormFiledWidget extends StatelessWidget {
  final TextEditingController? controller;

  final FormFieldValidator<String?>? validator;

  final String? hintText;

  final TextInputAction? textInputAction;

  final Widget? prefixIcon;

  const OrzugrandTexFormFiledWidget({
    Key? key,
    this.controller,
    this.hintText,
    this.validator,
    this.prefixIcon,
    this.textInputAction = TextInputAction.done,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textInputAction: textInputAction,
      style: OrzugrandTextStyle.openSansMedium.copyWith(
        fontSize: 14,
        color: AppColors.orzugrandBlack,
      ),
      autovalidateMode: AutovalidateMode.onUserInteraction,
      validator: validator,
      controller: controller,
      keyboardType: TextInputType.text,
      cursorColor: AppColors.orzugrandBlack,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: hintText,
        labelStyle: OrzugrandTextStyle.openSansMedium.copyWith(
          color: AppColors.orzugrandBlack,
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
        errorStyle: OrzugrandTextStyle.openSansMedium.copyWith(
          color: AppColors.orzugrandBlack,
          fontSize: 12,
        ),
        contentPadding: const EdgeInsets.only(left: 20, right: 20),
        hintStyle: OrzugrandTextStyle.openSansSemiBold.copyWith(
          fontSize: 14,
          color: AppColors.c7B7B7B,
        ),
        fillColor: AppColors.cF0F0F0,
        filled: true,
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.orzugrandTransparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.orzugrandTransparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.orzugrandTransparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.orzugrandTransparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.orzugrandTransparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.orzugrandTransparent),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
    );
  }
}
