import 'package:orzugrand/data/models/category/category_model.dart';
import 'package:orzugrand/data/orzugrand_data/orzugrand_data.dart';

class CategoryRepository {
  /// GET ALL ADDRESSES
  List<OrzuGrandCategoryModel> getAllCategory() {
    return orzuGrandCategories;
  }
}
