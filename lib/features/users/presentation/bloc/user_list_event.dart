import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_list_event.freezed.dart';

@freezed
class UserListEvent with _$UserListEvent {
  const factory UserListEvent.fetch({String? query}) = FetchUsers;
  const factory UserListEvent.loadMore() = LoadMoreUsers;
}
