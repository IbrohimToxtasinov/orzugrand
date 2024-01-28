import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:orzugrand/screens/widgets/buttons/orzugrand_main_action_button.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_images/app_images.dart';
import 'package:orzugrand/utils/app_text_style/app_text_style.dart';

class OrzuBlogWidget extends StatelessWidget {
  const OrzuBlogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "ORZU",
                    style: OrzugrandTextStyle.openSansBold.copyWith(
                      fontSize: 22,
                      color: AppColors.c14A23C,
                    ),
                  ),
                  TextSpan(
                    text: "BLOG",
                    style: OrzugrandTextStyle.openSansBold.copyWith(
                      fontSize: 22,
                      color: AppColors.cFF7011,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 166,
            child: ListView.separated(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Container(
                      width: 292,
                      height: 166,
                      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                      decoration: BoxDecoration(
                        color: AppColors.cF0F0F0,
                        borderRadius: BorderRadius.circular(8),
                        image: const DecorationImage(
                          image: AssetImage(AppImages.imgFirstContent),
                          fit: BoxFit.fill,
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          OrzugrandMainActionButton(
                            height: 20,
                            width: 73,
                            colorButton: AppColors.orzugrandWhite.withOpacity(0.8),
                            margin: const EdgeInsets.only(right: 200),
                            labelStyle: OrzugrandTextStyle.openSansSemiBold
                                .copyWith(fontSize: 14, color: AppColors.orzugrandBlack),
                            label: "Статья",
                          ),
                          Text(
                            "Топ-20 лучших недорогих планшетов на сегодняшний день",
                            maxLines: 2,
                            style: OrzugrandTextStyle.openSansSemiBold.copyWith(
                              fontSize: 14,
                              color: AppColors.orzugrandWhite,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
              itemCount: 5,
              separatorBuilder: (context, index) => const SizedBox(width: 15),
            ),
          ),
          OrzugrandMainActionButton(
            margin: const EdgeInsets.only(left: 16, bottom: 40, right: 16),
            padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
            labelStyle: OrzugrandTextStyle.openSansBold.copyWith(
              fontSize: 14,
              color: AppColors.orzugrandWhite,
            ),
            label: "Читать все",
          ),
        ],
      ),
    );
  }
}
