
import 'package:equatable/equatable.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product.dart';
import 'package:ecommerce_app/src/feature/product/domain/entities/product_stock.dart';
import 'package:ecommerce_app/src/feature/review/domain/entities/review.dart';

class ProductDetail extends Equatable{

  final String prodId;
  final String categoryName;
  final String subCategoryName;
  final String productName;
  final String? productHighLight;
  final String productDescription;
  final String? productSpecification;
  final String? brandName;
  final String? productUnit;
  final String? youtubeLink;
  final String? range;
  final String? capacityInHp;
  final String? capacityInKw;
  final String? modelNo;
  final String productImage;
  final List<String>? productImages;
  final List<ProductStock> productStock;
  final List<Product>? relatedProducts;
  final List<Review> reviews;

  const ProductDetail({
    required this.prodId,
    required this.categoryName,
    required this.subCategoryName,
    required this.productName,
    this.productHighLight,
    required this.productDescription,
    this.productSpecification,
    this.brandName,
    this.productUnit,
    this.youtubeLink,
    this.range,
    this.capacityInHp,
    this.capacityInKw,
    this.modelNo,
    required this.productImage,
    this.productImages,
    required this.productStock,
    this.relatedProducts,
    required this.reviews,
  });

  @override
  List<Object?> get props => [
    prodId,
    categoryName,
    subCategoryName,
    productName,
    productHighLight,
    productDescription,
    productSpecification,
    brandName,
    productUnit,
    youtubeLink,
    range,
    capacityInHp,
    capacityInKw,
    modelNo,
    productImage,
    productImages,
    productStock,
    relatedProducts,
    reviews,
  ];
}