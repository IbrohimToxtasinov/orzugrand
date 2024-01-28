import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';

BottomNavigationBarItem bottomNavigationBarItemWidget({
  required String icon,
  required String label,
}) {
  return BottomNavigationBarItem(
    icon: SvgPicture.asset(
      icon,
      width: 26,
      height: 26,
      colorFilter: const ColorFilter.mode(AppColors.c7B7B7B, BlendMode.srcIn),
    ),
    activeIcon: SvgPicture.asset(
      icon,
      width: 26,
      height: 26,
      colorFilter: const ColorFilter.mode(AppColors.cFF7011, BlendMode.srcIn),
    ),
    label: label.tr(),
  );
}
