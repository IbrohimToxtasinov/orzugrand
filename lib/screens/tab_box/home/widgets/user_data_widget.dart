import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_icons/app_icons.dart';
import 'package:orzugrand/utils/app_text_style/app_text_style.dart';

class UserDataWidget extends StatelessWidget {
  const UserDataWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, top: 17, bottom: 18, right: 16),
      child: Row(
        children: [
          SvgPicture.asset(AppIcons.icUser),
          const SizedBox(width: 10),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "${"hello".tr()}, ",
                  style: OrzugrandTextStyle.openSansSemiBold.copyWith(
                    fontSize: 16,
                    color: AppColors.orzugrandBlack,
                  ),
                ),
                TextSpan(
                  text: "Дониёр",
                  style: OrzugrandTextStyle.openSansSemiBold.copyWith(
                    fontSize: 16,
                    color: AppColors.c14A23C,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
