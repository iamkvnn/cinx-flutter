import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import '../../domain/usecases/get_categories_usecase.dart';
import '../../domain/usecases/create_category_usecase.dart';
import '../../domain/usecases/update_category_usecase.dart';
import 'category_list_event.dart';
import 'category_list_state.dart';

@injectable
class CategoryListBloc extends Bloc<CategoryListEvent, CategoryListState> {
  final GetCategoriesUseCase _getCategories;
  final CreateCategoryUseCase _createCategory;
  final UpdateCategoryUseCase _updateCategory;

  CategoryListBloc(
    this._getCategories,
    this._createCategory,
    this._updateCategory,
  ) : super(const CategoryListState()) {
    on<CategoryListEvent>((event, emit) async {
      await event.map(
        fetch: (e) => _onFetch(e, emit),
        create: (e) => _onCreate(e, emit),
        update: (e) => _onUpdate(e, emit),
      );
    });
  }

  Future<void> _onFetch(
    FetchCategories event,
    Emitter<CategoryListState> emit,
  ) async {
    emit(
      state.copyWith(
        isLoading: true,
        errorMessage: null,
        categories: [],
        isActionLoading: false,
        actionSuccessMessage: null,
        actionErrorMessage: null,
      ),
    );

    final result = await _getCategories();

    result.fold(
      (failure) =>
          emit(state.copyWith(isLoading: false, errorMessage: failure.message)),
      (response) =>
          emit(state.copyWith(isLoading: false, categories: response.data!)),
    );
  }

  Future<void> _onCreate(
    CreateCategory event,
    Emitter<CategoryListState> emit,
  ) async {
    emit(
      state.copyWith(
        isActionLoading: true,
        actionErrorMessage: null,
        actionSuccessMessage: null,
      ),
    );
    final result = await _createCategory(event.request);
    await result.fold(
      (failure) async {
        emit(
          state.copyWith(
            isActionLoading: false,
            actionErrorMessage: failure.message,
          ),
        );
      },
      (_) async {
        emit(
          state.copyWith(
            isActionLoading: false,
            actionSuccessMessage: 'Category created successfully',
          ),
        );
        add(const CategoryListEvent.fetch());
      },
    );
  }

  Future<void> _onUpdate(
    UpdateCategory event,
    Emitter<CategoryListState> emit,
  ) async {
    emit(
      state.copyWith(
        isActionLoading: true,
        actionErrorMessage: null,
        actionSuccessMessage: null,
      ),
    );
    final result = await _updateCategory(event.id, event.request);
    await result.fold(
      (failure) async {
        emit(
          state.copyWith(
            isActionLoading: false,
            actionErrorMessage: failure.message,
          ),
        );
      },
      (_) async {
        emit(
          state.copyWith(
            isActionLoading: false,
            actionSuccessMessage: 'Category updated successfully',
          ),
        );
        add(const CategoryListEvent.fetch());
      },
    );
  }
}
