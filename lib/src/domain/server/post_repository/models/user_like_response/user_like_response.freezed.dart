// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_like_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserLikeResponse _$UserLikeResponseFromJson(Map<String, dynamic> json) {
  return _UserLikeResponse.fromJson(json);
}

/// @nodoc
mixin _$UserLikeResponse {
  @JsonKey(name: 'total_reactions')
  int? get totalReactions => throw _privateConstructorUsedError;
  List<LikeType>? get likeType => throw _privateConstructorUsedError;

  /// Serializes this UserLikeResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserLikeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserLikeResponseCopyWith<UserLikeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLikeResponseCopyWith<$Res> {
  factory $UserLikeResponseCopyWith(
          UserLikeResponse value, $Res Function(UserLikeResponse) then) =
      _$UserLikeResponseCopyWithImpl<$Res, UserLikeResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'total_reactions') int? totalReactions,
      List<LikeType>? likeType});
}

/// @nodoc
class _$UserLikeResponseCopyWithImpl<$Res, $Val extends UserLikeResponse>
    implements $UserLikeResponseCopyWith<$Res> {
  _$UserLikeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserLikeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalReactions = freezed,
    Object? likeType = freezed,
  }) {
    return _then(_value.copyWith(
      totalReactions: freezed == totalReactions
          ? _value.totalReactions
          : totalReactions // ignore: cast_nullable_to_non_nullable
              as int?,
      likeType: freezed == likeType
          ? _value.likeType
          : likeType // ignore: cast_nullable_to_non_nullable
              as List<LikeType>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserLikeResponseImplCopyWith<$Res>
    implements $UserLikeResponseCopyWith<$Res> {
  factory _$$UserLikeResponseImplCopyWith(_$UserLikeResponseImpl value,
          $Res Function(_$UserLikeResponseImpl) then) =
      __$$UserLikeResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'total_reactions') int? totalReactions,
      List<LikeType>? likeType});
}

/// @nodoc
class __$$UserLikeResponseImplCopyWithImpl<$Res>
    extends _$UserLikeResponseCopyWithImpl<$Res, _$UserLikeResponseImpl>
    implements _$$UserLikeResponseImplCopyWith<$Res> {
  __$$UserLikeResponseImplCopyWithImpl(_$UserLikeResponseImpl _value,
      $Res Function(_$UserLikeResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserLikeResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? totalReactions = freezed,
    Object? likeType = freezed,
  }) {
    return _then(_$UserLikeResponseImpl(
      totalReactions: freezed == totalReactions
          ? _value.totalReactions
          : totalReactions // ignore: cast_nullable_to_non_nullable
              as int?,
      likeType: freezed == likeType
          ? _value._likeType
          : likeType // ignore: cast_nullable_to_non_nullable
              as List<LikeType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserLikeResponseImpl implements _UserLikeResponse {
  _$UserLikeResponseImpl(
      {@JsonKey(name: 'total_reactions') this.totalReactions,
      final List<LikeType>? likeType})
      : _likeType = likeType;

  factory _$UserLikeResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserLikeResponseImplFromJson(json);

  @override
  @JsonKey(name: 'total_reactions')
  final int? totalReactions;
  final List<LikeType>? _likeType;
  @override
  List<LikeType>? get likeType {
    final value = _likeType;
    if (value == null) return null;
    if (_likeType is EqualUnmodifiableListView) return _likeType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UserLikeResponse(totalReactions: $totalReactions, likeType: $likeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserLikeResponseImpl &&
            (identical(other.totalReactions, totalReactions) ||
                other.totalReactions == totalReactions) &&
            const DeepCollectionEquality().equals(other._likeType, _likeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, totalReactions,
      const DeepCollectionEquality().hash(_likeType));

  /// Create a copy of UserLikeResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserLikeResponseImplCopyWith<_$UserLikeResponseImpl> get copyWith =>
      __$$UserLikeResponseImplCopyWithImpl<_$UserLikeResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserLikeResponseImplToJson(
      this,
    );
  }
}

abstract class _UserLikeResponse implements UserLikeResponse {
  factory _UserLikeResponse(
      {@JsonKey(name: 'total_reactions') final int? totalReactions,
      final List<LikeType>? likeType}) = _$UserLikeResponseImpl;

  factory _UserLikeResponse.fromJson(Map<String, dynamic> json) =
      _$UserLikeResponseImpl.fromJson;

  @override
  @JsonKey(name: 'total_reactions')
  int? get totalReactions;
  @override
  List<LikeType>? get likeType;

  /// Create a copy of UserLikeResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserLikeResponseImplCopyWith<_$UserLikeResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
