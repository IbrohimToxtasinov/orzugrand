import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:orzugrand/bloc/app_language/app_language_bloc.dart';
import 'package:orzugrand/bloc/categories/categories_bloc.dart';
import 'package:orzugrand/cubit/tab/tab_cubit.dart';
import 'package:orzugrand/data/repositories/app_language.dart';
import 'package:orzugrand/data/repositories/category.dart';
import 'package:orzugrand/screens/app_router.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(create: (context) => CategoryRepository()),
        RepositoryProvider(create: (context) => AppLanguageRepository()),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (context) => TabCubit()),
          BlocProvider(
            create: (context) =>
                AppLanguageBloc(context.read<AppLanguageRepository>())..add(GetAppLanguage()),
          ),
          BlocProvider(
            create: (context) => CategoriesBloc(context.read<CategoryRepository>())
              ..add(
                FetchCategories(),
              ),
          ),
        ],
        child: const MyApp(),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'Orzugrand',
      theme: ThemeData(primarySwatch: Colors.amber),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRoutes.generateRoute,
      initialRoute: RouteName.splash,
    );
  }
}
