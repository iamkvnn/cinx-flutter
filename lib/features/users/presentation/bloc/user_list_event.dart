import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_event.freezed.dart';

@freezed
class UserListEvent with _$UserListEvent {
  const factory UserListEvent.fetch({
    String? query,
    String? role,
    bool? isInstructorVerified,
    Map<String, String>? sort,
  }) = FetchUsers;
  const factory UserListEvent.loadMore() = LoadMoreUsers;
  const factory UserListEvent.banUser({required String id, required String reason}) = BanUser;
  const factory UserListEvent.unbanUser({required String id}) = UnbanUser;
  const factory UserListEvent.verifyInstructor({required String id}) = VerifyInstructor;
  const factory UserListEvent.rejectInstructor({required String id, required String reason}) = RejectInstructor;
}
