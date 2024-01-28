import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orzugrand/screens/widgets/buttons/orzugrand_main_action_button.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_icons/app_icons.dart';
import 'package:orzugrand/utils/app_images/app_images.dart';
import 'package:orzugrand/utils/app_text_style/app_text_style.dart';

class ProductOfTheDayWidget extends StatelessWidget {
  const ProductOfTheDayWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "productDay".tr(),
                style: OrzugrandTextStyle.openSansBold.copyWith(
                  fontSize: 22,
                  color: AppColors.orzugrandBlack,
                ),
              ),
              Text(
                "22 : 33 : 15",
                style: OrzugrandTextStyle.openSansSemiBold.copyWith(
                  fontSize: 15,
                  color: AppColors.c7B7B7B,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 16),
          padding: const EdgeInsets.only(top: 11, right: 15, bottom: 19),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: AppColors.orzugrandWhite,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.3),
                blurRadius: 8,
                offset: const Offset(0, 0),
              ),
            ],
          ),
          child: Stack(
            children: [
              Positioned(
                left: 0,
                child: SvgPicture.asset(
                  AppIcons.icVector,
                ),
              ),
              Positioned(
                top: 1.5,
                left: 8,
                child: Text(
                  "Хит".tr(),
                  style: OrzugrandTextStyle.openSansBold.copyWith(
                    fontSize: 14,
                    color: AppColors.orzugrandWhite,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(child: Image.asset(AppImages.imgPlaystation)),
                    const SizedBox(height: 6),
                    Text(
                      "Микроволновая печь соло Gorenje MO17E1W",
                      style: OrzugrandTextStyle.openSansSemiBold.copyWith(
                        fontSize: 14,
                        color: AppColors.orzugrandBlack,
                      ),
                    ),
                    const SizedBox(height: 22),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "2 000 000 сум",
                              style: OrzugrandTextStyle.openSansSemiBold.copyWith(
                                decoration: TextDecoration.lineThrough,
                                decorationColor: AppColors.orzugrandBlack,
                                decorationThickness: 2,
                                fontSize: 14,
                                color: AppColors.orzugrandBlack,
                              ),
                            ),
                            Text(
                              "1 750 000 сум",
                              style: OrzugrandTextStyle.openSansBold.copyWith(
                                fontSize: 16,
                                color: AppColors.cFF7011,
                              ),
                            ),
                          ],
                        ),
                        OrzugrandMainActionButton(
                          width: 60,
                          height: 32,
                          labelWidget: SvgPicture.asset(AppIcons.icCartBold),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 11),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.cFF9F60,
                    width: 2,
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppImages.imgPlaystation,
                    ),
                  )),
            ),
            Container(
              width: 34,
              height: 34,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.cF0F0F0,
                    width: 2,
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppImages.imgRefrigerator,
                    ),
                  )),
            ),
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: AppColors.cF0F0F0,
                    width: 2,
                  ),
                  image: const DecorationImage(
                    image: AssetImage(
                      AppImages.imgVacumCleaner,
                    ),
                  )),
            ),
          ],
        ),
      ],
    );
  }
}
