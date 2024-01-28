import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orzugrand/screens/widgets/buttons/orzugrand_main_action_button.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_icons/app_icons.dart';
import 'package:orzugrand/utils/app_text_style/app_text_style.dart';

class HomeScreenCatalogWidget extends StatelessWidget {
  const HomeScreenCatalogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          Container(
            height: 120,
            width: double.infinity,
            margin: const EdgeInsets.only(left: 16, right: 30, top: 50),
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 7),
            decoration: BoxDecoration(
              color: AppColors.orzugrandWhite,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 8,
                  offset: const Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "У нас всё!",
                  maxLines: 1,
                  style: OrzugrandTextStyle.openSansBold.copyWith(
                    fontSize: 16,
                    color: AppColors.c14A23C,
                  ),
                ),
                const SizedBox(height: 6),
                SizedBox(
                  width: 150,
                  child: Text(
                    "Хватит листать, переходи в каталог.",
                    maxLines: 2,
                    style: OrzugrandTextStyle.openSansSemiBold.copyWith(
                      fontSize: 14,
                      color: AppColors.orzugrandBlack,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                OrzugrandMainActionButton(
                  height: 34,
                  width: 183,
                  padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                  labelStyle: OrzugrandTextStyle.openSansBold
                      .copyWith(fontSize: 14, color: AppColors.orzugrandWhite),
                  label: "catalog".tr(),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            right: 35,
            child: SvgPicture.asset(AppIcons.icCatalogEmpty),
          ),
        ],
      ),
    );
  }
}
