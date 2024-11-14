import 'package:ecommerce_app/src/feature/product/data/models/product_stock_model.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_detail.dart';
import 'package:ecommerce_app/src/feature/review/data/model/review_model.dart';

class ProductDetailModel extends ProductDetail {
  
  const ProductDetailModel({
    required super.prodId,
    required super.categoryName,
    required super.subCategoryName,
    required super.productName,
    super.productHighLight,
    required super.productDescription,
    super.productSpecification,
    super.brandName,
    super.productUnit,
    super.youtubeLink,
    super.range,
    super.capacityInHp,
    super.capacityInKw,
    super.modelNo,
    required super.productImage,
    super.productImages,
    required super.productStock,
    super.relatedProducts,
    required super.reviews,
  });

  factory ProductDetailModel.fromJson(Map<String, dynamic> json){
    return ProductDetailModel(
      prodId: json['id'],
      categoryName: json['category_name'],
      subCategoryName: json['sub_category_name'],
      productName: json['product_name'],
      productHighLight: json['producthighlight'],
      productDescription: json['description'],
      productSpecification: json['specification'],
      brandName: json['brand']['name'],
      productUnit: json['productUnit']['name'],
      youtubeLink: json['youtubeUrl'],
      range: json['range'],
      capacityInHp: json['capacityInHps'],
      capacityInKw: json['capacityInKw'],
      modelNo: json['modelno'],
      productImage: json['image'],
      productImages: (json['product_images'] as List?)
      ?.map((e) => e['file'].toString())
      .toList() ?? [],
      productStock: (json['product_stock'] as List).map((e) => ProductStockModel.fromJson(e)).toList(),
      // relatedProducts: json['related_products'] != null
      //   ? (json['related_products'] as List).map((e) => ProductModel.fromJson(e)).toList()
      //    : [],
      relatedProducts: const [],
      reviews: (json['comments'] as List).map((e) => ReviewModel.fromJson(e)).toList(),
    );
  }
}
