// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'category_list_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CategoryListEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CategoryListEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CategoryListEvent()';
}


}

/// @nodoc
class $CategoryListEventCopyWith<$Res>  {
$CategoryListEventCopyWith(CategoryListEvent _, $Res Function(CategoryListEvent) __);
}


/// Adds pattern-matching-related methods to [CategoryListEvent].
extension CategoryListEventPatterns on CategoryListEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchCategories value)?  fetch,TResult Function( CreateCategory value)?  create,TResult Function( UpdateCategory value)?  update,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchCategories() when fetch != null:
return fetch(_that);case CreateCategory() when create != null:
return create(_that);case UpdateCategory() when update != null:
return update(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchCategories value)  fetch,required TResult Function( CreateCategory value)  create,required TResult Function( UpdateCategory value)  update,}){
final _that = this;
switch (_that) {
case FetchCategories():
return fetch(_that);case CreateCategory():
return create(_that);case UpdateCategory():
return update(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchCategories value)?  fetch,TResult? Function( CreateCategory value)?  create,TResult? Function( UpdateCategory value)?  update,}){
final _that = this;
switch (_that) {
case FetchCategories() when fetch != null:
return fetch(_that);case CreateCategory() when create != null:
return create(_that);case UpdateCategory() when update != null:
return update(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String? search)?  fetch,TResult Function( CreateCategoryRequest request)?  create,TResult Function( String id,  CreateCategoryRequest request)?  update,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchCategories() when fetch != null:
return fetch(_that.search);case CreateCategory() when create != null:
return create(_that.request);case UpdateCategory() when update != null:
return update(_that.id,_that.request);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String? search)  fetch,required TResult Function( CreateCategoryRequest request)  create,required TResult Function( String id,  CreateCategoryRequest request)  update,}) {final _that = this;
switch (_that) {
case FetchCategories():
return fetch(_that.search);case CreateCategory():
return create(_that.request);case UpdateCategory():
return update(_that.id,_that.request);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String? search)?  fetch,TResult? Function( CreateCategoryRequest request)?  create,TResult? Function( String id,  CreateCategoryRequest request)?  update,}) {final _that = this;
switch (_that) {
case FetchCategories() when fetch != null:
return fetch(_that.search);case CreateCategory() when create != null:
return create(_that.request);case UpdateCategory() when update != null:
return update(_that.id,_that.request);case _:
  return null;

}
}

}

/// @nodoc


class FetchCategories implements CategoryListEvent {
  const FetchCategories({this.search});
  

 final  String? search;

/// Create a copy of CategoryListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchCategoriesCopyWith<FetchCategories> get copyWith => _$FetchCategoriesCopyWithImpl<FetchCategories>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchCategories&&(identical(other.search, search) || other.search == search));
}


@override
int get hashCode => Object.hash(runtimeType,search);

@override
String toString() {
  return 'CategoryListEvent.fetch(search: $search)';
}


}

/// @nodoc
abstract mixin class $FetchCategoriesCopyWith<$Res> implements $CategoryListEventCopyWith<$Res> {
  factory $FetchCategoriesCopyWith(FetchCategories value, $Res Function(FetchCategories) _then) = _$FetchCategoriesCopyWithImpl;
@useResult
$Res call({
 String? search
});




}
/// @nodoc
class _$FetchCategoriesCopyWithImpl<$Res>
    implements $FetchCategoriesCopyWith<$Res> {
  _$FetchCategoriesCopyWithImpl(this._self, this._then);

  final FetchCategories _self;
  final $Res Function(FetchCategories) _then;

/// Create a copy of CategoryListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? search = freezed,}) {
  return _then(FetchCategories(
search: freezed == search ? _self.search : search // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CreateCategory implements CategoryListEvent {
  const CreateCategory(this.request);
  

 final  CreateCategoryRequest request;

/// Create a copy of CategoryListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCategoryCopyWith<CreateCategory> get copyWith => _$CreateCategoryCopyWithImpl<CreateCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateCategory&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,request);

@override
String toString() {
  return 'CategoryListEvent.create(request: $request)';
}


}

/// @nodoc
abstract mixin class $CreateCategoryCopyWith<$Res> implements $CategoryListEventCopyWith<$Res> {
  factory $CreateCategoryCopyWith(CreateCategory value, $Res Function(CreateCategory) _then) = _$CreateCategoryCopyWithImpl;
@useResult
$Res call({
 CreateCategoryRequest request
});


$CreateCategoryRequestCopyWith<$Res> get request;

}
/// @nodoc
class _$CreateCategoryCopyWithImpl<$Res>
    implements $CreateCategoryCopyWith<$Res> {
  _$CreateCategoryCopyWithImpl(this._self, this._then);

  final CreateCategory _self;
  final $Res Function(CreateCategory) _then;

/// Create a copy of CategoryListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? request = null,}) {
  return _then(CreateCategory(
null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as CreateCategoryRequest,
  ));
}

/// Create a copy of CategoryListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateCategoryRequestCopyWith<$Res> get request {
  
  return $CreateCategoryRequestCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}

/// @nodoc


class UpdateCategory implements CategoryListEvent {
  const UpdateCategory(this.id, this.request);
  

 final  String id;
 final  CreateCategoryRequest request;

/// Create a copy of CategoryListEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCategoryCopyWith<UpdateCategory> get copyWith => _$UpdateCategoryCopyWithImpl<UpdateCategory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateCategory&&(identical(other.id, id) || other.id == id)&&(identical(other.request, request) || other.request == request));
}


@override
int get hashCode => Object.hash(runtimeType,id,request);

@override
String toString() {
  return 'CategoryListEvent.update(id: $id, request: $request)';
}


}

/// @nodoc
abstract mixin class $UpdateCategoryCopyWith<$Res> implements $CategoryListEventCopyWith<$Res> {
  factory $UpdateCategoryCopyWith(UpdateCategory value, $Res Function(UpdateCategory) _then) = _$UpdateCategoryCopyWithImpl;
@useResult
$Res call({
 String id, CreateCategoryRequest request
});


$CreateCategoryRequestCopyWith<$Res> get request;

}
/// @nodoc
class _$UpdateCategoryCopyWithImpl<$Res>
    implements $UpdateCategoryCopyWith<$Res> {
  _$UpdateCategoryCopyWithImpl(this._self, this._then);

  final UpdateCategory _self;
  final $Res Function(UpdateCategory) _then;

/// Create a copy of CategoryListEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? request = null,}) {
  return _then(UpdateCategory(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,null == request ? _self.request : request // ignore: cast_nullable_to_non_nullable
as CreateCategoryRequest,
  ));
}

/// Create a copy of CategoryListEvent
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CreateCategoryRequestCopyWith<$Res> get request {
  
  return $CreateCategoryRequestCopyWith<$Res>(_self.request, (value) {
    return _then(_self.copyWith(request: value));
  });
}
}

// dart format on
