import 'package:flutter/cupertino.dart';
import 'package:orzugrand/screens/widgets/buttons/orzugrand_main_action_button.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_images/app_images.dart';
import 'package:orzugrand/utils/app_text_style/app_text_style.dart';

class OrzugrandAllPromotionsWidget extends StatelessWidget {
  const OrzugrandAllPromotionsWidget({Key? key}) : super(key: key);

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
                  color: AppColors.cF0F0F0,
                  borderRadius: BorderRadius.circular(8),
                  image: const DecorationImage(
                      image: AssetImage(AppImages.imgFirstBanner), fit: BoxFit.fill),
                ),
              );
            },
            itemCount: 5,
            separatorBuilder: (context, index) => const SizedBox(width: 15),
          ),
        ),
        OrzugrandMainActionButton(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 18),
          labelStyle: OrzugrandTextStyle.openSansBold
              .copyWith(fontSize: 14, color: AppColors.orzugrandWhite),
          label: "Все акции",
        ),
      ],
    );
  }
}
