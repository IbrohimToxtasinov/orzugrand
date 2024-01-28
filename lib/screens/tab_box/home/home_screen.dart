import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:orzugrand/screens/tab_box/home/widgets/home_screen_catalog_widget.dart';
import 'package:orzugrand/screens/tab_box/home/widgets/orzublog_widget.dart';
import 'package:orzugrand/screens/tab_box/home/widgets/orzugrand_all_promotions_widget.dart';
import 'package:orzugrand/screens/tab_box/home/widgets/orzugrand_banners_widget.dart';
import 'package:orzugrand/screens/tab_box/home/widgets/product_of_the_day_widget.dart';
import 'package:orzugrand/screens/tab_box/home/widgets/recommend_product_widget.dart';
import 'package:orzugrand/screens/tab_box/home/widgets/user_data_widget.dart';
import 'package:orzugrand/screens/widgets/app_bar/orzugrand_global_app_bar.dart';
import 'package:orzugrand/screens/widgets/text_fields/foodka_text_form_field_widget.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_icons/app_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchTextEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF0F0F0,
      appBar: OrzugrandGlobalAppBar(
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
          child: SvgPicture.asset(AppIcons.icLocation),
        ),
        title: "ORZUGRAND",
        centerTitle: true,
        actions: [
          SvgPicture.asset(AppIcons.icMessages),
          const SizedBox(width: 16),
        ],
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const UserDataWidget(),
            const OrzugrandBannersWidget(),
            const SizedBox(height: 20),
            Container(
              decoration: const BoxDecoration(
                color: AppColors.orzugrandWhite,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(8),
                  topLeft: Radius.circular(8),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
                    child: OrzugrandTexFormFiledWidget(
                      controller: _searchTextEditingController,
                      prefixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
                        child: SvgPicture.asset(AppIcons.icSearch),
                      ),
                      hintText: "searchProducts".tr(),
                    ),
                  ),
                  const OrzugrandAllPromotionsWidget(),
                  const ProductOfTheDayWidget(),
                  const RecommendProductWidget(),
                  const OrzuBlogWidget(),
                  const HomeScreenCatalogWidget()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
