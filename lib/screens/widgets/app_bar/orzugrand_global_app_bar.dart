import 'package:flutter/material.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_constants/app_constants.dart';
import 'package:orzugrand/utils/app_text_style/app_text_style.dart';

class OrzugrandGlobalAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  final Widget? leading;

  final List<Widget>? actions;

  final TextStyle? titleStyle;

  final bool? centerTitle;

  const OrzugrandGlobalAppBar({
    Key? key,
    this.title,
    this.titleStyle,
    this.leading,
    this.actions,
    this.centerTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: AppColors.orzugrandTransparent,
      backgroundColor: AppColors.cF0F0F0,
      leading: leading,
      automaticallyImplyLeading: false,
      title: Text(
        title ?? AppConstant.empty,
        style: titleStyle ??
            OrzugrandTextStyle.openSansExtraBold.copyWith(
              color: AppColors.cFF7011,
              fontSize: 18,
            ),
      ),
      centerTitle: centerTitle,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
