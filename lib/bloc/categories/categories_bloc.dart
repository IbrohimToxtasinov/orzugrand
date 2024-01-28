import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:orzugrand/data/models/category/category_model.dart';
import 'package:orzugrand/data/models/form_status.dart';
import 'package:orzugrand/data/repositories/category.dart';
import 'package:orzugrand/utils/app_constants/app_constants.dart';

part 'categories_event.dart';

part 'categories_state.dart';

class CategoriesBloc extends Bloc<CategoriesEvent, CategoriesState> {
  CategoriesBloc(this._categoryRepository) : super(CategoriesState()) {
    on<FetchCategories>(fetchCategories);
  }

  final CategoryRepository _categoryRepository;

  fetchCategories(FetchCategories event, Emitter<CategoriesState> emit) {
    emit(state.copyWith(categoryStatus: FormStatus.getCategoryInProgress));
    List<OrzuGrandCategoryModel> categories = _categoryRepository.getAllCategory();
    if (categories != null) {
      emit(
        state.copyWith(
          categoryStatus: FormStatus.gettingAddressInSuccess,
          categories: categories,
        ),
      );
    } else {
      emit(state.copyWith(categoryStatus: FormStatus.gettingAddressInFailure));
    }
  }
}
