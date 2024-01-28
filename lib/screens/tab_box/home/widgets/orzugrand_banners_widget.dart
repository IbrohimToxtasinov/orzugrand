import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orzugrand/screens/widgets/buttons/orzugrand_main_action_button.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_icons/app_icons.dart';
import 'package:orzugrand/utils/app_text_style/app_text_style.dart';

class OrzugrandBannersWidget extends StatelessWidget {
  const OrzugrandBannersWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 152,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Container(
                width: 292,
                height: 152,
                decoration: BoxDecoration(
                  color: AppColors.orzugrandWhite,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      top: 15,
                      left: 15,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Готов к выдаче",
                            style: OrzugrandTextStyle.openSansBold.copyWith(
                              fontSize: 16,
                              color: AppColors.cFF7011,
                            ),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            "Заказ №10021122",
                            style: OrzugrandTextStyle.openSansSemiBold.copyWith(
                              fontSize: 14,
                              color: AppColors.c7B7B7B,
                            ),
                          ),
                          const SizedBox(height: 13),
                          Text(
                            "Самовывоз до 29 марта",
                            style: OrzugrandTextStyle.openSansSemiBold.copyWith(
                              fontSize: 14,
                              color: AppColors.orzugrandBlack,
                            ),
                          ),
                          const SizedBox(height: 10),
                          OrzugrandMainActionButton(
                            height: 34,
                            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                            labelStyle: OrzugrandTextStyle.openSansBold
                                .copyWith(fontSize: 14, color: AppColors.orzugrandWhite),
                            label: "Забрать заказ",
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      top: 15,
                      right: 10,
                      child: Image.asset(AppIcons.icTickSquare),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Column(
                        children: [
                          SvgPicture.asset(AppIcons.icBox),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
            itemCount: 5,
            separatorBuilder: (context, index) => const SizedBox(width: 15),
          ),
        ),
      ],
    );
  }
}
