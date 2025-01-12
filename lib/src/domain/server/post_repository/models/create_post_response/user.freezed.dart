// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'full_name')
  String? get fullName => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_pic')
  String? get profilePic => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_private_chat')
  int? get isPrivateChat => throw _privateConstructorUsedError;
  @JsonKey(name: 'expire_date')
  dynamic get expireDate => throw _privateConstructorUsedError;
  dynamic get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'pause_date')
  dynamic get pauseDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_type')
  String? get userType => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  /// Serializes this User to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'profile_pic') String? profilePic,
      @JsonKey(name: 'is_private_chat') int? isPrivateChat,
      @JsonKey(name: 'expire_date') dynamic expireDate,
      dynamic status,
      @JsonKey(name: 'pause_date') dynamic pauseDate,
      @JsonKey(name: 'user_type') String? userType,
      Meta? meta});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? profilePic = freezed,
    Object? isPrivateChat = freezed,
    Object? expireDate = freezed,
    Object? status = freezed,
    Object? pauseDate = freezed,
    Object? userType = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivateChat: freezed == isPrivateChat
          ? _value.isPrivateChat
          : isPrivateChat // ignore: cast_nullable_to_non_nullable
              as int?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pauseDate: freezed == pauseDate
          ? _value.pauseDate
          : pauseDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserImplCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$UserImplCopyWith(
          _$UserImpl value, $Res Function(_$UserImpl) then) =
      __$$UserImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'full_name') String? fullName,
      @JsonKey(name: 'profile_pic') String? profilePic,
      @JsonKey(name: 'is_private_chat') int? isPrivateChat,
      @JsonKey(name: 'expire_date') dynamic expireDate,
      dynamic status,
      @JsonKey(name: 'pause_date') dynamic pauseDate,
      @JsonKey(name: 'user_type') String? userType,
      Meta? meta});
}

/// @nodoc
class __$$UserImplCopyWithImpl<$Res>
    extends _$UserCopyWithImpl<$Res, _$UserImpl>
    implements _$$UserImplCopyWith<$Res> {
  __$$UserImplCopyWithImpl(_$UserImpl _value, $Res Function(_$UserImpl) _then)
      : super(_value, _then);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? fullName = freezed,
    Object? profilePic = freezed,
    Object? isPrivateChat = freezed,
    Object? expireDate = freezed,
    Object? status = freezed,
    Object? pauseDate = freezed,
    Object? userType = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$UserImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      isPrivateChat: freezed == isPrivateChat
          ? _value.isPrivateChat
          : isPrivateChat // ignore: cast_nullable_to_non_nullable
              as int?,
      expireDate: freezed == expireDate
          ? _value.expireDate
          : expireDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pauseDate: freezed == pauseDate
          ? _value.pauseDate
          : pauseDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      userType: freezed == userType
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as String?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserImpl implements _User {
  _$UserImpl(
      {this.id,
      @JsonKey(name: 'full_name') this.fullName,
      @JsonKey(name: 'profile_pic') this.profilePic,
      @JsonKey(name: 'is_private_chat') this.isPrivateChat,
      @JsonKey(name: 'expire_date') this.expireDate,
      this.status,
      @JsonKey(name: 'pause_date') this.pauseDate,
      @JsonKey(name: 'user_type') this.userType,
      this.meta});

  factory _$UserImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'full_name')
  final String? fullName;
  @override
  @JsonKey(name: 'profile_pic')
  final String? profilePic;
  @override
  @JsonKey(name: 'is_private_chat')
  final int? isPrivateChat;
  @override
  @JsonKey(name: 'expire_date')
  final dynamic expireDate;
  @override
  final dynamic status;
  @override
  @JsonKey(name: 'pause_date')
  final dynamic pauseDate;
  @override
  @JsonKey(name: 'user_type')
  final String? userType;
  @override
  final Meta? meta;

  @override
  String toString() {
    return 'User(id: $id, fullName: $fullName, profilePic: $profilePic, isPrivateChat: $isPrivateChat, expireDate: $expireDate, status: $status, pauseDate: $pauseDate, userType: $userType, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.isPrivateChat, isPrivateChat) ||
                other.isPrivateChat == isPrivateChat) &&
            const DeepCollectionEquality()
                .equals(other.expireDate, expireDate) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.pauseDate, pauseDate) &&
            (identical(other.userType, userType) ||
                other.userType == userType) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      fullName,
      profilePic,
      isPrivateChat,
      const DeepCollectionEquality().hash(expireDate),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(pauseDate),
      userType,
      meta);

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      __$$UserImplCopyWithImpl<_$UserImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserImplToJson(
      this,
    );
  }
}

abstract class _User implements User {
  factory _User(
      {final int? id,
      @JsonKey(name: 'full_name') final String? fullName,
      @JsonKey(name: 'profile_pic') final String? profilePic,
      @JsonKey(name: 'is_private_chat') final int? isPrivateChat,
      @JsonKey(name: 'expire_date') final dynamic expireDate,
      final dynamic status,
      @JsonKey(name: 'pause_date') final dynamic pauseDate,
      @JsonKey(name: 'user_type') final String? userType,
      final Meta? meta}) = _$UserImpl;

  factory _User.fromJson(Map<String, dynamic> json) = _$UserImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'full_name')
  String? get fullName;
  @override
  @JsonKey(name: 'profile_pic')
  String? get profilePic;
  @override
  @JsonKey(name: 'is_private_chat')
  int? get isPrivateChat;
  @override
  @JsonKey(name: 'expire_date')
  dynamic get expireDate;
  @override
  dynamic get status;
  @override
  @JsonKey(name: 'pause_date')
  dynamic get pauseDate;
  @override
  @JsonKey(name: 'user_type')
  String? get userType;
  @override
  Meta? get meta;

  /// Create a copy of User
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserImplCopyWith<_$UserImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
