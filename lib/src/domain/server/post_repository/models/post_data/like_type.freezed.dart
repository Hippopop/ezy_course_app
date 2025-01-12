// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'like_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LikeType _$LikeTypeFromJson(Map<String, dynamic> json) {
  return _LikeType.fromJson(json);
}

/// @nodoc
mixin _$LikeType {
  @JsonKey(name: 'reaction_type')
  String? get reactionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_id')
  int? get feedId => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  /// Serializes this LikeType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LikeType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LikeTypeCopyWith<LikeType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LikeTypeCopyWith<$Res> {
  factory $LikeTypeCopyWith(LikeType value, $Res Function(LikeType) then) =
      _$LikeTypeCopyWithImpl<$Res, LikeType>;
  @useResult
  $Res call(
      {@JsonKey(name: 'reaction_type') String? reactionType,
      @JsonKey(name: 'feed_id') int? feedId,
      Meta? meta});
}

/// @nodoc
class _$LikeTypeCopyWithImpl<$Res, $Val extends LikeType>
    implements $LikeTypeCopyWith<$Res> {
  _$LikeTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LikeType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reactionType = freezed,
    Object? feedId = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      reactionType: freezed == reactionType
          ? _value.reactionType
          : reactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      feedId: freezed == feedId
          ? _value.feedId
          : feedId // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LikeTypeImplCopyWith<$Res>
    implements $LikeTypeCopyWith<$Res> {
  factory _$$LikeTypeImplCopyWith(
          _$LikeTypeImpl value, $Res Function(_$LikeTypeImpl) then) =
      __$$LikeTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'reaction_type') String? reactionType,
      @JsonKey(name: 'feed_id') int? feedId,
      Meta? meta});
}

/// @nodoc
class __$$LikeTypeImplCopyWithImpl<$Res>
    extends _$LikeTypeCopyWithImpl<$Res, _$LikeTypeImpl>
    implements _$$LikeTypeImplCopyWith<$Res> {
  __$$LikeTypeImplCopyWithImpl(
      _$LikeTypeImpl _value, $Res Function(_$LikeTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of LikeType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reactionType = freezed,
    Object? feedId = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$LikeTypeImpl(
      reactionType: freezed == reactionType
          ? _value.reactionType
          : reactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      feedId: freezed == feedId
          ? _value.feedId
          : feedId // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LikeTypeImpl implements _LikeType {
  _$LikeTypeImpl(
      {@JsonKey(name: 'reaction_type') this.reactionType,
      @JsonKey(name: 'feed_id') this.feedId,
      this.meta});

  factory _$LikeTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$LikeTypeImplFromJson(json);

  @override
  @JsonKey(name: 'reaction_type')
  final String? reactionType;
  @override
  @JsonKey(name: 'feed_id')
  final int? feedId;
  @override
  final Meta? meta;

  @override
  String toString() {
    return 'LikeType(reactionType: $reactionType, feedId: $feedId, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LikeTypeImpl &&
            (identical(other.reactionType, reactionType) ||
                other.reactionType == reactionType) &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reactionType, feedId, meta);

  /// Create a copy of LikeType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LikeTypeImplCopyWith<_$LikeTypeImpl> get copyWith =>
      __$$LikeTypeImplCopyWithImpl<_$LikeTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LikeTypeImplToJson(
      this,
    );
  }
}

abstract class _LikeType implements LikeType {
  factory _LikeType(
      {@JsonKey(name: 'reaction_type') final String? reactionType,
      @JsonKey(name: 'feed_id') final int? feedId,
      final Meta? meta}) = _$LikeTypeImpl;

  factory _LikeType.fromJson(Map<String, dynamic> json) =
      _$LikeTypeImpl.fromJson;

  @override
  @JsonKey(name: 'reaction_type')
  String? get reactionType;
  @override
  @JsonKey(name: 'feed_id')
  int? get feedId;
  @override
  Meta? get meta;

  /// Create a copy of LikeType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LikeTypeImplCopyWith<_$LikeTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
