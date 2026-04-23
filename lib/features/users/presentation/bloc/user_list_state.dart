import 'package:freezed_annotation/freezed_annotation.dart';
import '../../data/models/user_dto.dart';

part 'user_list_state.freezed.dart';

@freezed
sealed class UserListState with _$UserListState {
  const factory UserListState({
    @Default([]) List<UserDto> users,
    @Default(true) bool isLoading,
    @Default(false) bool isFetchingMore,
    @Default(false) bool hasReachedMax,
    @Default(1) int currentPage,
    String? currentQuery,
    String? currentRole,
    bool? currentIsInstructorVerified,
    Map<String, String>? currentSort,
    String? errorMessage,
    @Default(false) bool isActionLoading,
    String? actionErrorMessage,
    String? actionSuccessMessage,
  }) = _UserListState;
}
