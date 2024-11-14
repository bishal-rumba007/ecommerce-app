import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ecommerce_app/src/feature/categories/domain/entities/category.dart';
import 'package:ecommerce_app/src/feature/categories/domain/usecases/get_categories_usecase.dart';
import 'package:ecommerce_app/src/shared/exceptions/http_exception.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final GetCategoriesUsecase getCategoriesUsecase;
  CategoryBloc({
    required this.getCategoriesUsecase,
  }) : super(const _Initial()) {
    on<FetchedCategory>(_fetchCategory);
  }

  Future<void> _fetchCategory(
    FetchedCategory event,
    Emitter<CategoryState> emit,
  ) async {
    emit(const CategoryState.loading());
    final response = await getCategoriesUsecase.call();
    response.fold(
      (exception) => emit(CategoryState.error(exception)),
      (categories) => emit(CategoryState.loaded(categories)),
    );
  }
}
