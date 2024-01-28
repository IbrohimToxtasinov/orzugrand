part of 'categories_bloc.dart';

// ignore: must_be_immutable
class CategoriesState extends Equatable {
  String? message;
  FormStatus? categoryStatus;
  List<OrzuGrandCategoryModel>? categories;

  CategoriesState({
    this.message = AppConstant.empty,
    this.categoryStatus = FormStatus.pure,
    this.categories = const [],
  });

  CategoriesState copyWith({
    String? message,
    FormStatus? categoryStatus,
    List<OrzuGrandCategoryModel>? categories,
  }) {
    return CategoriesState(
      message: message ?? this.message,
      categoryStatus: categoryStatus ?? this.categoryStatus,
      categories: categories ?? this.categories,
    );
  }

  @override
  List<Object?> get props => [categoryStatus, message, categories];
}
