// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'paginated_api_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PaginatedMetadata {

 int get page; int get limit; int get totalElements; int get totalPages;
/// Create a copy of PaginatedMetadata
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedMetadataCopyWith<PaginatedMetadata> get copyWith => _$PaginatedMetadataCopyWithImpl<PaginatedMetadata>(this as PaginatedMetadata, _$identity);

  /// Serializes this PaginatedMetadata to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedMetadata&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,totalElements,totalPages);

@override
String toString() {
  return 'PaginatedMetadata(page: $page, limit: $limit, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class $PaginatedMetadataCopyWith<$Res>  {
  factory $PaginatedMetadataCopyWith(PaginatedMetadata value, $Res Function(PaginatedMetadata) _then) = _$PaginatedMetadataCopyWithImpl;
@useResult
$Res call({
 int page, int limit, int totalElements, int totalPages
});




}
/// @nodoc
class _$PaginatedMetadataCopyWithImpl<$Res>
    implements $PaginatedMetadataCopyWith<$Res> {
  _$PaginatedMetadataCopyWithImpl(this._self, this._then);

  final PaginatedMetadata _self;
  final $Res Function(PaginatedMetadata) _then;

/// Create a copy of PaginatedMetadata
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? page = null,Object? limit = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_self.copyWith(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [PaginatedMetadata].
extension PaginatedMetadataPatterns on PaginatedMetadata {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedMetadata value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedMetadata() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedMetadata value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedMetadata():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedMetadata value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedMetadata() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int page,  int limit,  int totalElements,  int totalPages)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedMetadata() when $default != null:
return $default(_that.page,_that.limit,_that.totalElements,_that.totalPages);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int page,  int limit,  int totalElements,  int totalPages)  $default,) {final _that = this;
switch (_that) {
case _PaginatedMetadata():
return $default(_that.page,_that.limit,_that.totalElements,_that.totalPages);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int page,  int limit,  int totalElements,  int totalPages)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedMetadata() when $default != null:
return $default(_that.page,_that.limit,_that.totalElements,_that.totalPages);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PaginatedMetadata implements PaginatedMetadata {
  const _PaginatedMetadata({required this.page, required this.limit, required this.totalElements, required this.totalPages});
  factory _PaginatedMetadata.fromJson(Map<String, dynamic> json,) => _$PaginatedMetadataFromJson(json,);

@override final  int page;
@override final  int limit;
@override final  int totalElements;
@override final  int totalPages;

/// Create a copy of PaginatedMetadata
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedMetadataCopyWith<_PaginatedMetadata> get copyWith => __$PaginatedMetadataCopyWithImpl<_PaginatedMetadata>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PaginatedMetadataToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedMetadata&&(identical(other.page, page) || other.page == page)&&(identical(other.limit, limit) || other.limit == limit)&&(identical(other.totalElements, totalElements) || other.totalElements == totalElements)&&(identical(other.totalPages, totalPages) || other.totalPages == totalPages));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,page,limit,totalElements,totalPages);

@override
String toString() {
  return 'PaginatedMetadata(page: $page, limit: $limit, totalElements: $totalElements, totalPages: $totalPages)';
}


}

/// @nodoc
abstract mixin class _$PaginatedMetadataCopyWith<$Res> implements $PaginatedMetadataCopyWith<$Res> {
  factory _$PaginatedMetadataCopyWith(_PaginatedMetadata value, $Res Function(_PaginatedMetadata) _then) = __$PaginatedMetadataCopyWithImpl;
@override @useResult
$Res call({
 int page, int limit, int totalElements, int totalPages
});




}
/// @nodoc
class __$PaginatedMetadataCopyWithImpl<$Res>
    implements _$PaginatedMetadataCopyWith<$Res> {
  __$PaginatedMetadataCopyWithImpl(this._self, this._then);

  final _PaginatedMetadata _self;
  final $Res Function(_PaginatedMetadata) _then;

/// Create a copy of PaginatedMetadata
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? page = null,Object? limit = null,Object? totalElements = null,Object? totalPages = null,}) {
  return _then(_PaginatedMetadata(
page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,limit: null == limit ? _self.limit : limit // ignore: cast_nullable_to_non_nullable
as int,totalElements: null == totalElements ? _self.totalElements : totalElements // ignore: cast_nullable_to_non_nullable
as int,totalPages: null == totalPages ? _self.totalPages : totalPages // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$PaginatedApiResponse<T> {

 bool get success; String get message; T? get data; PaginatedMetadata? get meta;
/// Create a copy of PaginatedApiResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PaginatedApiResponseCopyWith<T, PaginatedApiResponse<T>> get copyWith => _$PaginatedApiResponseCopyWithImpl<T, PaginatedApiResponse<T>>(this as PaginatedApiResponse<T>, _$identity);

  /// Serializes this PaginatedApiResponse to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT);


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PaginatedApiResponse<T>&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'PaginatedApiResponse<$T>(success: $success, message: $message, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class $PaginatedApiResponseCopyWith<T,$Res>  {
  factory $PaginatedApiResponseCopyWith(PaginatedApiResponse<T> value, $Res Function(PaginatedApiResponse<T>) _then) = _$PaginatedApiResponseCopyWithImpl;
@useResult
$Res call({
 bool success, String message, T? data, PaginatedMetadata? meta
});


$PaginatedMetadataCopyWith<$Res>? get meta;

}
/// @nodoc
class _$PaginatedApiResponseCopyWithImpl<T,$Res>
    implements $PaginatedApiResponseCopyWith<T, $Res> {
  _$PaginatedApiResponseCopyWithImpl(this._self, this._then);

  final PaginatedApiResponse<T> _self;
  final $Res Function(PaginatedApiResponse<T>) _then;

/// Create a copy of PaginatedApiResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? success = null,Object? message = null,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_self.copyWith(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginatedMetadata?,
  ));
}
/// Create a copy of PaginatedApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedMetadataCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $PaginatedMetadataCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}


/// Adds pattern-matching-related methods to [PaginatedApiResponse].
extension PaginatedApiResponsePatterns<T> on PaginatedApiResponse<T> {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PaginatedApiResponse<T> value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PaginatedApiResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PaginatedApiResponse<T> value)  $default,){
final _that = this;
switch (_that) {
case _PaginatedApiResponse():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PaginatedApiResponse<T> value)?  $default,){
final _that = this;
switch (_that) {
case _PaginatedApiResponse() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool success,  String message,  T? data,  PaginatedMetadata? meta)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PaginatedApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.meta);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool success,  String message,  T? data,  PaginatedMetadata? meta)  $default,) {final _that = this;
switch (_that) {
case _PaginatedApiResponse():
return $default(_that.success,_that.message,_that.data,_that.meta);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool success,  String message,  T? data,  PaginatedMetadata? meta)?  $default,) {final _that = this;
switch (_that) {
case _PaginatedApiResponse() when $default != null:
return $default(_that.success,_that.message,_that.data,_that.meta);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)

class _PaginatedApiResponse<T> implements PaginatedApiResponse<T> {
  const _PaginatedApiResponse({required this.success, required this.message, this.data, this.meta});
  factory _PaginatedApiResponse.fromJson(Map<String, dynamic> json,T Function(Object?) fromJsonT) => _$PaginatedApiResponseFromJson(json,fromJsonT);

@override final  bool success;
@override final  String message;
@override final  T? data;
@override final  PaginatedMetadata? meta;

/// Create a copy of PaginatedApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PaginatedApiResponseCopyWith<T, _PaginatedApiResponse<T>> get copyWith => __$PaginatedApiResponseCopyWithImpl<T, _PaginatedApiResponse<T>>(this, _$identity);

@override
Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
  return _$PaginatedApiResponseToJson<T>(this, toJsonT);
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PaginatedApiResponse<T>&&(identical(other.success, success) || other.success == success)&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other.data, data)&&(identical(other.meta, meta) || other.meta == meta));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,success,message,const DeepCollectionEquality().hash(data),meta);

@override
String toString() {
  return 'PaginatedApiResponse<$T>(success: $success, message: $message, data: $data, meta: $meta)';
}


}

/// @nodoc
abstract mixin class _$PaginatedApiResponseCopyWith<T,$Res> implements $PaginatedApiResponseCopyWith<T, $Res> {
  factory _$PaginatedApiResponseCopyWith(_PaginatedApiResponse<T> value, $Res Function(_PaginatedApiResponse<T>) _then) = __$PaginatedApiResponseCopyWithImpl;
@override @useResult
$Res call({
 bool success, String message, T? data, PaginatedMetadata? meta
});


@override $PaginatedMetadataCopyWith<$Res>? get meta;

}
/// @nodoc
class __$PaginatedApiResponseCopyWithImpl<T,$Res>
    implements _$PaginatedApiResponseCopyWith<T, $Res> {
  __$PaginatedApiResponseCopyWithImpl(this._self, this._then);

  final _PaginatedApiResponse<T> _self;
  final $Res Function(_PaginatedApiResponse<T>) _then;

/// Create a copy of PaginatedApiResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? success = null,Object? message = null,Object? data = freezed,Object? meta = freezed,}) {
  return _then(_PaginatedApiResponse<T>(
success: null == success ? _self.success : success // ignore: cast_nullable_to_non_nullable
as bool,message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,data: freezed == data ? _self.data : data // ignore: cast_nullable_to_non_nullable
as T?,meta: freezed == meta ? _self.meta : meta // ignore: cast_nullable_to_non_nullable
as PaginatedMetadata?,
  ));
}

/// Create a copy of PaginatedApiResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PaginatedMetadataCopyWith<$Res>? get meta {
    if (_self.meta == null) {
    return null;
  }

  return $PaginatedMetadataCopyWith<$Res>(_self.meta!, (value) {
    return _then(_self.copyWith(meta: value));
  });
}
}

// dart format on
