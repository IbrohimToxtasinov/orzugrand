import 'package:orzugrand/data/models/category/category_model.dart';
import 'package:orzugrand/data/models/product/product_model.dart';
import 'package:orzugrand/utils/app_images/app_images.dart';

final List<OrzuGrandCategoryModel> orzuGrandCategories = [
  OrzuGrandCategoryModel(
    name: [
      "News items",
      "Новинки",
      "Yangi elementlar",
    ],
    categoryId: 0,
  ),
  OrzuGrandCategoryModel(
    name: [
      "Popular",
      "Популярное",
      "Ommabop",
    ],
    categoryId: 1,
  ),
  OrzuGrandCategoryModel(
    name: [
      "Discounts + Installments",
      "Скидки + Рассрочка",
      "Chegirmalar + To'lovlar",
    ],
    categoryId: 2,
  ),
];

final List<OrzugrandProductModel> orzuGrandProducts = [
  OrzugrandProductModel(
    categoryId: 0,
    name: [
      "Electric hob MAUNFELD EEHE.32.4B",
      "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
      "Elektr plitasi MAUNFELD EEHE.32.4B"
    ],
    image: AppImages.imgVacumCleaner,
    oldPrice: "2 000 000",
    price: "1 750 000",
  ),
  OrzugrandProductModel(
    categoryId: 0,
    name: [
      "Game console Sony PlayStation PS5 DIGITAL EDITION 825Gb/Go",
      "Игровая приставка Sony PlayStation PS5 DIGITAL EDITION 825Gb/Go",
      "O'yin konsoli Sony PlayStation PS5 DIGITAL EDITION 825Gb/Go"
    ],
    image: AppImages.imgPlaystation,
    price: "1 750 000",
  ),
  OrzugrandProductModel(
    categoryId: 0,
    name: [
      "Electric hob MAUNFELD EEHE.32.4B",
      "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
      "Elektr plitasi MAUNFELD EEHE.32.4B"
    ],
    image: AppImages.imgRefrigerator,
    price: "1 750 000",
  ),
  OrzugrandProductModel(
    categoryId: 1,
    name: [
      "Electric hob MAUNFELD EEHE.32.4B",
      "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
      "Elektr plitasi MAUNFELD EEHE.32.4B"
    ],
    image: AppImages.imgVacumCleaner,
    oldPrice: "2 000 000",
    price: "1 750 000",
  ),
  OrzugrandProductModel(
    categoryId: 1,
    name: [
      "Game console Sony PlayStation PS5 DIGITAL EDITION 825Gb/Go",
      "Игровая приставка Sony PlayStation PS5 DIGITAL EDITION 825Gb/Go",
      "O'yin konsoli Sony PlayStation PS5 DIGITAL EDITION 825Gb/Go"
    ],
    image: AppImages.imgPlaystation,
    price: "1 750 000",
  ),
  OrzugrandProductModel(
    categoryId: 1,
    name: [
      "Electric hob MAUNFELD EEHE.32.4B",
      "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
      "Elektr plitasi MAUNFELD EEHE.32.4B"
    ],
    image: AppImages.imgRefrigerator,
    price: "1 750 000",
  ),
  OrzugrandProductModel(
    categoryId: 2,
    name: [
      "Electric hob MAUNFELD EEHE.32.4B",
      "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
      "Elektr plitasi MAUNFELD EEHE.32.4B"
    ],
    image: AppImages.imgVacumCleaner,
    oldPrice: "2 000 000",
    price: "1 750 000",
  ),
  OrzugrandProductModel(
    categoryId: 2,
    name: [
      "Game console Sony PlayStation PS5 DIGITAL EDITION 825Gb/Go",
      "Игровая приставка Sony PlayStation PS5 DIGITAL EDITION 825Gb/Go",
      "O'yin konsoli Sony PlayStation PS5 DIGITAL EDITION 825Gb/Go"
    ],
    image: AppImages.imgPlaystation,
    price: "1 750 000",
  ),
  OrzugrandProductModel(
    categoryId: 2,
    name: [
      "Electric hob MAUNFELD EEHE.32.4B",
      "Электрическая варочная поверхность MAUNFELD EEHE.32.4B",
      "Elektr plitasi MAUNFELD EEHE.32.4B"
    ],
    image: AppImages.imgRefrigerator,
    price: "1 750 000",
  ),
];
