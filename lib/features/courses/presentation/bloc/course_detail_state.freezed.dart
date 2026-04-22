// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'course_detail_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CourseDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CourseDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseDetailState()';
}


}

/// @nodoc
class $CourseDetailStateCopyWith<$Res>  {
$CourseDetailStateCopyWith(CourseDetailState _, $Res Function(CourseDetailState) __);
}


/// Adds pattern-matching-related methods to [CourseDetailState].
extension CourseDetailStatePatterns on CourseDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _Loaded value)?  loaded,TResult Function( _ActionLoading value)?  actionLoading,TResult Function( _ActionSuccess value)?  actionSuccess,TResult Function( _Failure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _ActionLoading() when actionLoading != null:
return actionLoading(_that);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _Loaded value)  loaded,required TResult Function( _ActionLoading value)  actionLoading,required TResult Function( _ActionSuccess value)  actionSuccess,required TResult Function( _Failure value)  failure,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _Loaded():
return loaded(_that);case _ActionLoading():
return actionLoading(_that);case _ActionSuccess():
return actionSuccess(_that);case _Failure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _Loaded value)?  loaded,TResult? Function( _ActionLoading value)?  actionLoading,TResult? Function( _ActionSuccess value)?  actionSuccess,TResult? Function( _Failure value)?  failure,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _Loaded() when loaded != null:
return loaded(_that);case _ActionLoading() when actionLoading != null:
return actionLoading(_that);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that);case _Failure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( CourseResponse course)?  loaded,TResult Function( CourseResponse course)?  actionLoading,TResult Function( CourseResponse course)?  actionSuccess,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.course);case _ActionLoading() when actionLoading != null:
return actionLoading(_that.course);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that.course);case _Failure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( CourseResponse course)  loaded,required TResult Function( CourseResponse course)  actionLoading,required TResult Function( CourseResponse course)  actionSuccess,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _Loaded():
return loaded(_that.course);case _ActionLoading():
return actionLoading(_that.course);case _ActionSuccess():
return actionSuccess(_that.course);case _Failure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( CourseResponse course)?  loaded,TResult? Function( CourseResponse course)?  actionLoading,TResult? Function( CourseResponse course)?  actionSuccess,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _Loaded() when loaded != null:
return loaded(_that.course);case _ActionLoading() when actionLoading != null:
return actionLoading(_that.course);case _ActionSuccess() when actionSuccess != null:
return actionSuccess(_that.course);case _Failure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CourseDetailState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseDetailState.initial()';
}


}




/// @nodoc


class _Loading implements CourseDetailState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CourseDetailState.loading()';
}


}




/// @nodoc


class _Loaded implements CourseDetailState {
  const _Loaded(this.course);
  

 final  CourseResponse course;

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadedCopyWith<_Loaded> get copyWith => __$LoadedCopyWithImpl<_Loaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loaded&&(identical(other.course, course) || other.course == course));
}


@override
int get hashCode => Object.hash(runtimeType,course);

@override
String toString() {
  return 'CourseDetailState.loaded(course: $course)';
}


}

/// @nodoc
abstract mixin class _$LoadedCopyWith<$Res> implements $CourseDetailStateCopyWith<$Res> {
  factory _$LoadedCopyWith(_Loaded value, $Res Function(_Loaded) _then) = __$LoadedCopyWithImpl;
@useResult
$Res call({
 CourseResponse course
});


$CourseResponseCopyWith<$Res> get course;

}
/// @nodoc
class __$LoadedCopyWithImpl<$Res>
    implements _$LoadedCopyWith<$Res> {
  __$LoadedCopyWithImpl(this._self, this._then);

  final _Loaded _self;
  final $Res Function(_Loaded) _then;

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? course = null,}) {
  return _then(_Loaded(
null == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as CourseResponse,
  ));
}

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseResponseCopyWith<$Res> get course {
  
  return $CourseResponseCopyWith<$Res>(_self.course, (value) {
    return _then(_self.copyWith(course: value));
  });
}
}

/// @nodoc


class _ActionLoading implements CourseDetailState {
  const _ActionLoading(this.course);
  

 final  CourseResponse course;

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionLoadingCopyWith<_ActionLoading> get copyWith => __$ActionLoadingCopyWithImpl<_ActionLoading>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionLoading&&(identical(other.course, course) || other.course == course));
}


@override
int get hashCode => Object.hash(runtimeType,course);

@override
String toString() {
  return 'CourseDetailState.actionLoading(course: $course)';
}


}

/// @nodoc
abstract mixin class _$ActionLoadingCopyWith<$Res> implements $CourseDetailStateCopyWith<$Res> {
  factory _$ActionLoadingCopyWith(_ActionLoading value, $Res Function(_ActionLoading) _then) = __$ActionLoadingCopyWithImpl;
@useResult
$Res call({
 CourseResponse course
});


$CourseResponseCopyWith<$Res> get course;

}
/// @nodoc
class __$ActionLoadingCopyWithImpl<$Res>
    implements _$ActionLoadingCopyWith<$Res> {
  __$ActionLoadingCopyWithImpl(this._self, this._then);

  final _ActionLoading _self;
  final $Res Function(_ActionLoading) _then;

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? course = null,}) {
  return _then(_ActionLoading(
null == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as CourseResponse,
  ));
}

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseResponseCopyWith<$Res> get course {
  
  return $CourseResponseCopyWith<$Res>(_self.course, (value) {
    return _then(_self.copyWith(course: value));
  });
}
}

/// @nodoc


class _ActionSuccess implements CourseDetailState {
  const _ActionSuccess(this.course);
  

 final  CourseResponse course;

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ActionSuccessCopyWith<_ActionSuccess> get copyWith => __$ActionSuccessCopyWithImpl<_ActionSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ActionSuccess&&(identical(other.course, course) || other.course == course));
}


@override
int get hashCode => Object.hash(runtimeType,course);

@override
String toString() {
  return 'CourseDetailState.actionSuccess(course: $course)';
}


}

/// @nodoc
abstract mixin class _$ActionSuccessCopyWith<$Res> implements $CourseDetailStateCopyWith<$Res> {
  factory _$ActionSuccessCopyWith(_ActionSuccess value, $Res Function(_ActionSuccess) _then) = __$ActionSuccessCopyWithImpl;
@useResult
$Res call({
 CourseResponse course
});


$CourseResponseCopyWith<$Res> get course;

}
/// @nodoc
class __$ActionSuccessCopyWithImpl<$Res>
    implements _$ActionSuccessCopyWith<$Res> {
  __$ActionSuccessCopyWithImpl(this._self, this._then);

  final _ActionSuccess _self;
  final $Res Function(_ActionSuccess) _then;

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? course = null,}) {
  return _then(_ActionSuccess(
null == course ? _self.course : course // ignore: cast_nullable_to_non_nullable
as CourseResponse,
  ));
}

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CourseResponseCopyWith<$Res> get course {
  
  return $CourseResponseCopyWith<$Res>(_self.course, (value) {
    return _then(_self.copyWith(course: value));
  });
}
}

/// @nodoc


class _Failure implements CourseDetailState {
  const _Failure(this.message);
  

 final  String message;

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FailureCopyWith<_Failure> get copyWith => __$FailureCopyWithImpl<_Failure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Failure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CourseDetailState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FailureCopyWith<$Res> implements $CourseDetailStateCopyWith<$Res> {
  factory _$FailureCopyWith(_Failure value, $Res Function(_Failure) _then) = __$FailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FailureCopyWithImpl<$Res>
    implements _$FailureCopyWith<$Res> {
  __$FailureCopyWithImpl(this._self, this._then);

  final _Failure _self;
  final $Res Function(_Failure) _then;

/// Create a copy of CourseDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Failure(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
