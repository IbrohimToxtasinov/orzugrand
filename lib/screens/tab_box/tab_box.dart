import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orzugrand/cubit/tab/tab_cubit.dart';
import 'package:orzugrand/screens/tab_box/cart/cart_screen.dart';
import 'package:orzugrand/screens/tab_box/catalog/catalog_screen.dart';
import 'package:orzugrand/screens/tab_box/favorites/favorites_screen.dart';
import 'package:orzugrand/screens/tab_box/home/home_screen.dart';
import 'package:orzugrand/screens/tab_box/profile/profile_screen.dart';
import 'package:orzugrand/screens/tab_box/widgets/bottom_navigation_bar_item.dart';
import 'package:orzugrand/utils/app_colors/app_colors.dart';
import 'package:orzugrand/utils/app_icons/app_icons.dart';
import 'package:orzugrand/utils/app_icons/app_icons.dart';
import 'package:orzugrand/utils/app_icons/app_icons.dart';
import 'package:orzugrand/utils/app_icons/app_icons.dart';
import 'package:orzugrand/utils/app_icons/app_icons.dart';

class TabBox extends StatefulWidget {
  const TabBox({Key? key}) : super(key: key);

  @override
  State<TabBox> createState() => _TabBoxState();
}

class _TabBoxState extends State<TabBox> {
  List<Widget> screens = [];

  @override
  void initState() {
    screens = [
      const HomeScreen(),
      const CatalogScreen(),
      const CartScreen(),
      const FavoritesScreen(),
      const ProfileScreen(),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TabCubit(),
      child: BlocBuilder<TabCubit, TabsState>(
        builder: (context, state) {
          var index = context.watch<TabCubit>().state.currentPage;
          return Scaffold(
            body: screens[index],
            bottomNavigationBar: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              currentIndex: index,
              selectedItemColor: AppColors.cFF7011,
              unselectedItemColor: AppColors.c7B7B7B,
              selectedFontSize: 12,
              unselectedFontSize: 12,
              onTap: (value) {
                context.read<TabCubit>().changeTabState(value);
              },
              items: [
                bottomNavigationBarItemWidget(icon: AppIcons.icHome ,label: "home",),
                bottomNavigationBarItemWidget(icon: AppIcons.icCatalog ,label: "catalog"),
                bottomNavigationBarItemWidget(icon: AppIcons.icCart ,label: "cart"),
                bottomNavigationBarItemWidget(icon: AppIcons.icFavorites ,label: "favorites"),
                bottomNavigationBarItemWidget(icon: AppIcons.icProfile ,label: "profile"),
              ],
            ),
          );
        },
      ),
    );
  }
}
