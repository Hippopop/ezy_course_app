// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_like.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLike _$UserLikeFromJson(Map<String, dynamic> json) {
  return _UserLike.fromJson(json);
}

/// @nodoc
mixin _$UserLike {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_id')
  int? get feedId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reaction_type')
  String? get reactionType => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_anonymous')
  int? get isAnonymous => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  /// Serializes this UserLike to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLikeCopyWith<UserLike> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLikeCopyWith<$Res> {
  factory $UserLikeCopyWith(UserLike value, $Res Function(UserLike) then) =
      _$UserLikeCopyWithImpl<$Res, UserLike>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'feed_id') int? feedId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'reaction_type') String? reactionType,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'is_anonymous') int? isAnonymous,
      Meta? meta});
}

/// @nodoc
class _$UserLikeCopyWithImpl<$Res, $Val extends UserLike>
    implements $UserLikeCopyWith<$Res> {
  _$UserLikeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? feedId = freezed,
    Object? userId = freezed,
    Object? reactionType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isAnonymous = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      feedId: freezed == feedId
          ? _value.feedId
          : feedId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      reactionType: freezed == reactionType
          ? _value.reactionType
          : reactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAnonymous: freezed == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLikeImplCopyWith<$Res>
    implements $UserLikeCopyWith<$Res> {
  factory _$$UserLikeImplCopyWith(
          _$UserLikeImpl value, $Res Function(_$UserLikeImpl) then) =
      __$$UserLikeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'feed_id') int? feedId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'reaction_type') String? reactionType,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'is_anonymous') int? isAnonymous,
      Meta? meta});
}

/// @nodoc
class __$$UserLikeImplCopyWithImpl<$Res>
    extends _$UserLikeCopyWithImpl<$Res, _$UserLikeImpl>
    implements _$$UserLikeImplCopyWith<$Res> {
  __$$UserLikeImplCopyWithImpl(
      _$UserLikeImpl _value, $Res Function(_$UserLikeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLike
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? feedId = freezed,
    Object? userId = freezed,
    Object? reactionType = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? isAnonymous = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$UserLikeImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      feedId: freezed == feedId
          ? _value.feedId
          : feedId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      reactionType: freezed == reactionType
          ? _value.reactionType
          : reactionType // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isAnonymous: freezed == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
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
class _$UserLikeImpl extends _UserLike {
  _$UserLikeImpl(
      {this.id,
      @JsonKey(name: 'feed_id') this.feedId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'reaction_type') this.reactionType,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'is_anonymous') this.isAnonymous,
      this.meta})
      : super._();

  factory _$UserLikeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLikeImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'feed_id')
  final int? feedId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'reaction_type')
  final String? reactionType;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'is_anonymous')
  final int? isAnonymous;
  @override
  final Meta? meta;

  @override
  String toString() {
    return 'UserLike(id: $id, feedId: $feedId, userId: $userId, reactionType: $reactionType, createdAt: $createdAt, updatedAt: $updatedAt, isAnonymous: $isAnonymous, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLikeImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.reactionType, reactionType) ||
                other.reactionType == reactionType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, feedId, userId, reactionType,
      createdAt, updatedAt, isAnonymous, meta);

  /// Create a copy of UserLike
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLikeImplCopyWith<_$UserLikeImpl> get copyWith =>
      __$$UserLikeImplCopyWithImpl<_$UserLikeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLikeImplToJson(
      this,
    );
  }
}

abstract class _UserLike extends UserLike {
  factory _UserLike(
      {final int? id,
      @JsonKey(name: 'feed_id') final int? feedId,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'reaction_type') final String? reactionType,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'is_anonymous') final int? isAnonymous,
      final Meta? meta}) = _$UserLikeImpl;
  _UserLike._() : super._();

  factory _UserLike.fromJson(Map<String, dynamic> json) =
      _$UserLikeImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'feed_id')
  int? get feedId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'reaction_type')
  String? get reactionType;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'is_anonymous')
  int? get isAnonymous;
  @override
  Meta? get meta;

  /// Create a copy of UserLike
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLikeImplCopyWith<_$UserLikeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
