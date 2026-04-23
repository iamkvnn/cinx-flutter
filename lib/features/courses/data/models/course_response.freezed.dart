// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CourseResponse {

 String get id; String get title; String? get description; CategoryResponse? get category; InstructorResponse? get instructor; List<CourseImageResponse>? get images; int? get price; int? get discountedPrice; int? get discountRate; double? get rating; int? get enrollmentCount; bool? get isInSubscription; int? get duration; bool? get hasCertificate; String? get certificateTitle; String? get status;// DRAFT, WAITING_APPROVAL, PUBLISHED, REJECTED, ARCHIVED
 String? get createdAt; String? get updatedAt; List<SectionResponse>? get sections;
/// Create a copy of CourseResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CourseResponseCopyWith<CourseResponse> get copyWith => _$CourseResponseCopyWithImpl<CourseResponse>(this as CourseResponse, _$identity);

  /// Serializes this CourseResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&const DeepCollectionEquality().equals(other.images, images)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountedPrice, discountedPrice) || other.discountedPrice == discountedPrice)&&(identical(other.discountRate, discountRate) || other.discountRate == discountRate)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.enrollmentCount, enrollmentCount) || other.enrollmentCount == enrollmentCount)&&(identical(other.isInSubscription, isInSubscription) || other.isInSubscription == isInSubscription)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.hasCertificate, hasCertificate) || other.hasCertificate == hasCertificate)&&(identical(other.certificateTitle, certificateTitle) || other.certificateTitle == certificateTitle)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other.sections, sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,category,instructor,const DeepCollectionEquality().hash(images),price,discountedPrice,discountRate,rating,enrollmentCount,isInSubscription,duration,hasCertificate,certificateTitle,status,createdAt,updatedAt,const DeepCollectionEquality().hash(sections)]);

@override
String toString() {
  return 'CourseResponse(id: $id, title: $title, description: $description, category: $category, instructor: $instructor, images: $images, price: $price, discountedPrice: $discountedPrice, discountRate: $discountRate, rating: $rating, enrollmentCount: $enrollmentCount, isInSubscription: $isInSubscription, duration: $duration, hasCertificate: $hasCertificate, certificateTitle: $certificateTitle, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, sections: $sections)';
}


}

/// @nodoc
abstract mixin class $CourseResponseCopyWith<$Res>  {
  factory $CourseResponseCopyWith(CourseResponse value, $Res Function(CourseResponse) _then) = _$CourseResponseCopyWithImpl;
@useResult
$Res call({
 String id, String title, String? description, CategoryResponse? category, InstructorResponse? instructor, List<CourseImageResponse>? images, int? price, int? discountedPrice, int? discountRate, double? rating, int? enrollmentCount, bool? isInSubscription, int? duration, bool? hasCertificate, String? certificateTitle, String? status, String? createdAt, String? updatedAt, List<SectionResponse>? sections
});


$CategoryResponseCopyWith<$Res>? get category;$InstructorResponseCopyWith<$Res>? get instructor;

}
/// @nodoc
class _$CourseResponseCopyWithImpl<$Res>
    implements $CourseResponseCopyWith<$Res> {
  _$CourseResponseCopyWithImpl(this._self, this._then);

  final CourseResponse _self;
  final $Res Function(CourseResponse) _then;

/// Create a copy of CourseResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? category = freezed,Object? instructor = freezed,Object? images = freezed,Object? price = freezed,Object? discountedPrice = freezed,Object? discountRate = freezed,Object? rating = freezed,Object? enrollmentCount = freezed,Object? isInSubscription = freezed,Object? duration = freezed,Object? hasCertificate = freezed,Object? certificateTitle = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? sections = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryResponse?,instructor: freezed == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as InstructorResponse?,images: freezed == images ? _self.images : images // ignore: cast_nullable_to_non_nullable
as List<CourseImageResponse>?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,discountedPrice: freezed == discountedPrice ? _self.discountedPrice : discountedPrice // ignore: cast_nullable_to_non_nullable
as int?,discountRate: freezed == discountRate ? _self.discountRate : discountRate // ignore: cast_nullable_to_non_nullable
as int?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,enrollmentCount: freezed == enrollmentCount ? _self.enrollmentCount : enrollmentCount // ignore: cast_nullable_to_non_nullable
as int?,isInSubscription: freezed == isInSubscription ? _self.isInSubscription : isInSubscription // ignore: cast_nullable_to_non_nullable
as bool?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,hasCertificate: freezed == hasCertificate ? _self.hasCertificate : hasCertificate // ignore: cast_nullable_to_non_nullable
as bool?,certificateTitle: freezed == certificateTitle ? _self.certificateTitle : certificateTitle // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,sections: freezed == sections ? _self.sections : sections // ignore: cast_nullable_to_non_nullable
as List<SectionResponse>?,
  ));
}
/// Create a copy of CourseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryResponseCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryResponseCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of CourseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InstructorResponseCopyWith<$Res>? get instructor {
    if (_self.instructor == null) {
    return null;
  }

  return $InstructorResponseCopyWith<$Res>(_self.instructor!, (value) {
    return _then(_self.copyWith(instructor: value));
  });
}
}


/// Adds pattern-matching-related methods to [CourseResponse].
extension CourseResponsePatterns on CourseResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CourseResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CourseResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CourseResponse value)  $default,){
final _that = this;
switch (_that) {
case _CourseResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CourseResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CourseResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String title,  String? description,  CategoryResponse? category,  InstructorResponse? instructor,  List<CourseImageResponse>? images,  int? price,  int? discountedPrice,  int? discountRate,  double? rating,  int? enrollmentCount,  bool? isInSubscription,  int? duration,  bool? hasCertificate,  String? certificateTitle,  String? status,  String? createdAt,  String? updatedAt,  List<SectionResponse>? sections)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CourseResponse() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.category,_that.instructor,_that.images,_that.price,_that.discountedPrice,_that.discountRate,_that.rating,_that.enrollmentCount,_that.isInSubscription,_that.duration,_that.hasCertificate,_that.certificateTitle,_that.status,_that.createdAt,_that.updatedAt,_that.sections);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String title,  String? description,  CategoryResponse? category,  InstructorResponse? instructor,  List<CourseImageResponse>? images,  int? price,  int? discountedPrice,  int? discountRate,  double? rating,  int? enrollmentCount,  bool? isInSubscription,  int? duration,  bool? hasCertificate,  String? certificateTitle,  String? status,  String? createdAt,  String? updatedAt,  List<SectionResponse>? sections)  $default,) {final _that = this;
switch (_that) {
case _CourseResponse():
return $default(_that.id,_that.title,_that.description,_that.category,_that.instructor,_that.images,_that.price,_that.discountedPrice,_that.discountRate,_that.rating,_that.enrollmentCount,_that.isInSubscription,_that.duration,_that.hasCertificate,_that.certificateTitle,_that.status,_that.createdAt,_that.updatedAt,_that.sections);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String title,  String? description,  CategoryResponse? category,  InstructorResponse? instructor,  List<CourseImageResponse>? images,  int? price,  int? discountedPrice,  int? discountRate,  double? rating,  int? enrollmentCount,  bool? isInSubscription,  int? duration,  bool? hasCertificate,  String? certificateTitle,  String? status,  String? createdAt,  String? updatedAt,  List<SectionResponse>? sections)?  $default,) {final _that = this;
switch (_that) {
case _CourseResponse() when $default != null:
return $default(_that.id,_that.title,_that.description,_that.category,_that.instructor,_that.images,_that.price,_that.discountedPrice,_that.discountRate,_that.rating,_that.enrollmentCount,_that.isInSubscription,_that.duration,_that.hasCertificate,_that.certificateTitle,_that.status,_that.createdAt,_that.updatedAt,_that.sections);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CourseResponse implements CourseResponse {
  const _CourseResponse({required this.id, required this.title, this.description, this.category, this.instructor, final  List<CourseImageResponse>? images, this.price, this.discountedPrice, this.discountRate, this.rating, this.enrollmentCount, this.isInSubscription, this.duration, this.hasCertificate, this.certificateTitle, this.status, this.createdAt, this.updatedAt, final  List<SectionResponse>? sections}): _images = images,_sections = sections;
  factory _CourseResponse.fromJson(Map<String, dynamic> json) => _$CourseResponseFromJson(json);

@override final  String id;
@override final  String title;
@override final  String? description;
@override final  CategoryResponse? category;
@override final  InstructorResponse? instructor;
 final  List<CourseImageResponse>? _images;
@override List<CourseImageResponse>? get images {
  final value = _images;
  if (value == null) return null;
  if (_images is EqualUnmodifiableListView) return _images;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  int? price;
@override final  int? discountedPrice;
@override final  int? discountRate;
@override final  double? rating;
@override final  int? enrollmentCount;
@override final  bool? isInSubscription;
@override final  int? duration;
@override final  bool? hasCertificate;
@override final  String? certificateTitle;
@override final  String? status;
// DRAFT, WAITING_APPROVAL, PUBLISHED, REJECTED, ARCHIVED
@override final  String? createdAt;
@override final  String? updatedAt;
 final  List<SectionResponse>? _sections;
@override List<SectionResponse>? get sections {
  final value = _sections;
  if (value == null) return null;
  if (_sections is EqualUnmodifiableListView) return _sections;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of CourseResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CourseResponseCopyWith<_CourseResponse> get copyWith => __$CourseResponseCopyWithImpl<_CourseResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CourseResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CourseResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.category, category) || other.category == category)&&(identical(other.instructor, instructor) || other.instructor == instructor)&&const DeepCollectionEquality().equals(other._images, _images)&&(identical(other.price, price) || other.price == price)&&(identical(other.discountedPrice, discountedPrice) || other.discountedPrice == discountedPrice)&&(identical(other.discountRate, discountRate) || other.discountRate == discountRate)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.enrollmentCount, enrollmentCount) || other.enrollmentCount == enrollmentCount)&&(identical(other.isInSubscription, isInSubscription) || other.isInSubscription == isInSubscription)&&(identical(other.duration, duration) || other.duration == duration)&&(identical(other.hasCertificate, hasCertificate) || other.hasCertificate == hasCertificate)&&(identical(other.certificateTitle, certificateTitle) || other.certificateTitle == certificateTitle)&&(identical(other.status, status) || other.status == status)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.updatedAt, updatedAt) || other.updatedAt == updatedAt)&&const DeepCollectionEquality().equals(other._sections, _sections));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,category,instructor,const DeepCollectionEquality().hash(_images),price,discountedPrice,discountRate,rating,enrollmentCount,isInSubscription,duration,hasCertificate,certificateTitle,status,createdAt,updatedAt,const DeepCollectionEquality().hash(_sections)]);

@override
String toString() {
  return 'CourseResponse(id: $id, title: $title, description: $description, category: $category, instructor: $instructor, images: $images, price: $price, discountedPrice: $discountedPrice, discountRate: $discountRate, rating: $rating, enrollmentCount: $enrollmentCount, isInSubscription: $isInSubscription, duration: $duration, hasCertificate: $hasCertificate, certificateTitle: $certificateTitle, status: $status, createdAt: $createdAt, updatedAt: $updatedAt, sections: $sections)';
}


}

/// @nodoc
abstract mixin class _$CourseResponseCopyWith<$Res> implements $CourseResponseCopyWith<$Res> {
  factory _$CourseResponseCopyWith(_CourseResponse value, $Res Function(_CourseResponse) _then) = __$CourseResponseCopyWithImpl;
@override @useResult
$Res call({
 String id, String title, String? description, CategoryResponse? category, InstructorResponse? instructor, List<CourseImageResponse>? images, int? price, int? discountedPrice, int? discountRate, double? rating, int? enrollmentCount, bool? isInSubscription, int? duration, bool? hasCertificate, String? certificateTitle, String? status, String? createdAt, String? updatedAt, List<SectionResponse>? sections
});


@override $CategoryResponseCopyWith<$Res>? get category;@override $InstructorResponseCopyWith<$Res>? get instructor;

}
/// @nodoc
class __$CourseResponseCopyWithImpl<$Res>
    implements _$CourseResponseCopyWith<$Res> {
  __$CourseResponseCopyWithImpl(this._self, this._then);

  final _CourseResponse _self;
  final $Res Function(_CourseResponse) _then;

/// Create a copy of CourseResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = null,Object? description = freezed,Object? category = freezed,Object? instructor = freezed,Object? images = freezed,Object? price = freezed,Object? discountedPrice = freezed,Object? discountRate = freezed,Object? rating = freezed,Object? enrollmentCount = freezed,Object? isInSubscription = freezed,Object? duration = freezed,Object? hasCertificate = freezed,Object? certificateTitle = freezed,Object? status = freezed,Object? createdAt = freezed,Object? updatedAt = freezed,Object? sections = freezed,}) {
  return _then(_CourseResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,title: null == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,category: freezed == category ? _self.category : category // ignore: cast_nullable_to_non_nullable
as CategoryResponse?,instructor: freezed == instructor ? _self.instructor : instructor // ignore: cast_nullable_to_non_nullable
as InstructorResponse?,images: freezed == images ? _self._images : images // ignore: cast_nullable_to_non_nullable
as List<CourseImageResponse>?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int?,discountedPrice: freezed == discountedPrice ? _self.discountedPrice : discountedPrice // ignore: cast_nullable_to_non_nullable
as int?,discountRate: freezed == discountRate ? _self.discountRate : discountRate // ignore: cast_nullable_to_non_nullable
as int?,rating: freezed == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double?,enrollmentCount: freezed == enrollmentCount ? _self.enrollmentCount : enrollmentCount // ignore: cast_nullable_to_non_nullable
as int?,isInSubscription: freezed == isInSubscription ? _self.isInSubscription : isInSubscription // ignore: cast_nullable_to_non_nullable
as bool?,duration: freezed == duration ? _self.duration : duration // ignore: cast_nullable_to_non_nullable
as int?,hasCertificate: freezed == hasCertificate ? _self.hasCertificate : hasCertificate // ignore: cast_nullable_to_non_nullable
as bool?,certificateTitle: freezed == certificateTitle ? _self.certificateTitle : certificateTitle // ignore: cast_nullable_to_non_nullable
as String?,status: freezed == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,updatedAt: freezed == updatedAt ? _self.updatedAt : updatedAt // ignore: cast_nullable_to_non_nullable
as String?,sections: freezed == sections ? _self._sections : sections // ignore: cast_nullable_to_non_nullable
as List<SectionResponse>?,
  ));
}

/// Create a copy of CourseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CategoryResponseCopyWith<$Res>? get category {
    if (_self.category == null) {
    return null;
  }

  return $CategoryResponseCopyWith<$Res>(_self.category!, (value) {
    return _then(_self.copyWith(category: value));
  });
}/// Create a copy of CourseResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InstructorResponseCopyWith<$Res>? get instructor {
    if (_self.instructor == null) {
    return null;
  }

  return $InstructorResponseCopyWith<$Res>(_self.instructor!, (value) {
    return _then(_self.copyWith(instructor: value));
  });
}
}

// dart format on
