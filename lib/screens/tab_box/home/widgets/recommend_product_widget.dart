import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orzugrand/data/orzugrand_data/orzugrand_data.dart';
import 'package:orzugrand/screens/widgets/buttons/orzugrand_main_action_button.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_icons/app_icons.dart';
import 'package:orzugrand/utils/app_text_style/app_text_style.dart';

class RecommendProductWidget extends StatefulWidget {
  const RecommendProductWidget({Key? key}) : super(key: key);

  @override
  State<RecommendProductWidget> createState() => _RecommendProductWidgetState();
}

class _RecommendProductWidgetState extends State<RecommendProductWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 16, right: 16, bottom: 22),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "recommended".tr(),
                style: OrzugrandTextStyle.openSansBold.copyWith(
                  fontSize: 22,
                  color: AppColors.orzugrandBlack,
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
        SizedBox(
          height: 20,
          child: ListView.separated(
            padding: const EdgeInsets.only(right: 16, left: 16),
            scrollDirection: Axis.horizontal,
            itemCount: orzuGrandCategories.length,
            itemBuilder: (context, index) {
              return Text(
                orzuGrandCategories[index].name[1],
                style: OrzugrandTextStyle.openSansSemiBold.copyWith(
                  fontSize: 16,
                  color: AppColors.c7B7B7B,
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(width: 25);
            },
          ),
        ),
        const SizedBox(height: 24),
        SizedBox(
          height: 480,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            padding: const EdgeInsets.symmetric(horizontal: 16),
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  Container(
                    width: 320,
                    height: 400,
                    decoration: BoxDecoration(
                      color: AppColors.orzugrandWhite,
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.3),
                          blurRadius: 8,
                          offset: const Offset(0, 0),
                        ),
                      ],
                    ),
                    child: ListView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        var product = orzuGrandProducts[index];
                        return _productItemWidget(
                          title: product.name[1],
                          icon: product.image,
                          price: "${product.price} ",
                          oldPrice: product.oldPrice,
                        );
                      },
                      itemCount: 3,
                    ),
                  ),
                  const SizedBox(height: 16),
                  OrzugrandMainActionButton(
                    width: 320,
                    padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
                    labelStyle: OrzugrandTextStyle.openSansBold
                        .copyWith(fontSize: 14, color: AppColors.orzugrandWhite),
                    label: "Смотреть все 15",
                  ),
                ],
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

Widget _productItemWidget(
    {required String title, required String icon, required String price, String? oldPrice}) {
  return Padding(
    padding: const EdgeInsets.all(15),
    child: Row(
      children: [
        Image.asset(icon, width: 91, height: 81),
        Expanded(
          child: Column(
            children: [
              Text(
                title,
                style: OrzugrandTextStyle.openSansSemiBold.copyWith(
                  fontSize: 14,
                  color: AppColors.orzugrandBlack,
                ),
              ),
              const SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (oldPrice != null && oldPrice.isNotEmpty)
                        Text(
                          "$oldPrice сум",
                          style: OrzugrandTextStyle.openSansSemiBold.copyWith(
                            decoration: TextDecoration.lineThrough,
                            decorationColor: AppColors.orzugrandBlack,
                            decorationThickness: 2,
                            fontSize: 14,
                            color: AppColors.orzugrandBlack,
                          ),
                        ),
                      Text(
                        "$price сум",
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
  );
}
