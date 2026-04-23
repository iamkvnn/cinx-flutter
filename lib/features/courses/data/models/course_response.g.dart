// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'course_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CourseResponse _$CourseResponseFromJson(Map<String, dynamic> json) =>
    _CourseResponse(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String?,
      category: json['category'] == null
          ? null
          : CategoryResponse.fromJson(json['category'] as Map<String, dynamic>),
      instructor: json['instructor'] == null
          ? null
          : InstructorResponse.fromJson(
              json['instructor'] as Map<String, dynamic>,
            ),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => CourseImageResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      price: (json['price'] as num?)?.toInt(),
      discountedPrice: (json['discountedPrice'] as num?)?.toInt(),
      discountRate: (json['discountRate'] as num?)?.toInt(),
      rating: (json['rating'] as num?)?.toDouble(),
      enrollmentCount: (json['enrollmentCount'] as num?)?.toInt(),
      isInSubscription: json['isInSubscription'] as bool?,
      duration: (json['duration'] as num?)?.toInt(),
      hasCertificate: json['hasCertificate'] as bool?,
      certificateTitle: json['certificateTitle'] as String?,
      status: json['status'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      sections: (json['sections'] as List<dynamic>?)
          ?.map((e) => SectionResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CourseResponseToJson(_CourseResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'instructor': instance.instructor,
      'images': instance.images,
      'price': instance.price,
      'discountedPrice': instance.discountedPrice,
      'discountRate': instance.discountRate,
      'rating': instance.rating,
      'enrollmentCount': instance.enrollmentCount,
      'isInSubscription': instance.isInSubscription,
      'duration': instance.duration,
      'hasCertificate': instance.hasCertificate,
      'certificateTitle': instance.certificateTitle,
      'status': instance.status,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'sections': instance.sections,
    };
