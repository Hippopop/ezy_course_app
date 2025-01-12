// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCommentResponse _$CreateCommentResponseFromJson(
    Map<String, dynamic> json) {
  return _CreateCommentResponse.fromJson(json);
}

/// @nodoc
mixin _$CreateCommentResponse {
  @JsonKey(name: 'comment_txt')
  String? get commentTxt => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_id')
  int? get feedId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_id')
  int? get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_author_and_anonymous')
  bool? get isAuthorAndAnonymous => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  int? get id => throw _privateConstructorUsedError;
  List<dynamic>? get replies => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  dynamic get commentlike => throw _privateConstructorUsedError;
  @JsonKey(name: 'reaction_types')
  List<LikeType>? get reactionTypes => throw _privateConstructorUsedError;

  /// Serializes this CreateCommentResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CreateCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateCommentResponseCopyWith<CreateCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCommentResponseCopyWith<$Res> {
  factory $CreateCommentResponseCopyWith(CreateCommentResponse value,
          $Res Function(CreateCommentResponse) then) =
      _$CreateCommentResponseCopyWithImpl<$Res, CreateCommentResponse>;
  @useResult
  $Res call(
      {@JsonKey(name: 'comment_txt') String? commentTxt,
      @JsonKey(name: 'feed_id') int? feedId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'school_id') int? schoolId,
      @JsonKey(name: 'is_author_and_anonymous') bool? isAuthorAndAnonymous,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      int? id,
      List<dynamic>? replies,
      User? user,
      dynamic commentlike,
      @JsonKey(name: 'reaction_types') List<LikeType>? reactionTypes});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$CreateCommentResponseCopyWithImpl<$Res,
        $Val extends CreateCommentResponse>
    implements $CreateCommentResponseCopyWith<$Res> {
  _$CreateCommentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentTxt = freezed,
    Object? feedId = freezed,
    Object? userId = freezed,
    Object? schoolId = freezed,
    Object? isAuthorAndAnonymous = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
    Object? replies = freezed,
    Object? user = freezed,
    Object? commentlike = freezed,
    Object? reactionTypes = freezed,
  }) {
    return _then(_value.copyWith(
      commentTxt: freezed == commentTxt
          ? _value.commentTxt
          : commentTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      feedId: freezed == feedId
          ? _value.feedId
          : feedId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAuthorAndAnonymous: freezed == isAuthorAndAnonymous
          ? _value.isAuthorAndAnonymous
          : isAuthorAndAnonymous // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      replies: freezed == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      commentlike: freezed == commentlike
          ? _value.commentlike
          : commentlike // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reactionTypes: freezed == reactionTypes
          ? _value.reactionTypes
          : reactionTypes // ignore: cast_nullable_to_non_nullable
              as List<LikeType>?,
    ) as $Val);
  }

  /// Create a copy of CreateCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $UserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateCommentResponseImplCopyWith<$Res>
    implements $CreateCommentResponseCopyWith<$Res> {
  factory _$$CreateCommentResponseImplCopyWith(
          _$CreateCommentResponseImpl value,
          $Res Function(_$CreateCommentResponseImpl) then) =
      __$$CreateCommentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'comment_txt') String? commentTxt,
      @JsonKey(name: 'feed_id') int? feedId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'school_id') int? schoolId,
      @JsonKey(name: 'is_author_and_anonymous') bool? isAuthorAndAnonymous,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      int? id,
      List<dynamic>? replies,
      User? user,
      dynamic commentlike,
      @JsonKey(name: 'reaction_types') List<LikeType>? reactionTypes});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$CreateCommentResponseImplCopyWithImpl<$Res>
    extends _$CreateCommentResponseCopyWithImpl<$Res,
        _$CreateCommentResponseImpl>
    implements _$$CreateCommentResponseImplCopyWith<$Res> {
  __$$CreateCommentResponseImplCopyWithImpl(_$CreateCommentResponseImpl _value,
      $Res Function(_$CreateCommentResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? commentTxt = freezed,
    Object? feedId = freezed,
    Object? userId = freezed,
    Object? schoolId = freezed,
    Object? isAuthorAndAnonymous = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? id = freezed,
    Object? replies = freezed,
    Object? user = freezed,
    Object? commentlike = freezed,
    Object? reactionTypes = freezed,
  }) {
    return _then(_$CreateCommentResponseImpl(
      commentTxt: freezed == commentTxt
          ? _value.commentTxt
          : commentTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      feedId: freezed == feedId
          ? _value.feedId
          : feedId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      isAuthorAndAnonymous: freezed == isAuthorAndAnonymous
          ? _value.isAuthorAndAnonymous
          : isAuthorAndAnonymous // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      replies: freezed == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      commentlike: freezed == commentlike
          ? _value.commentlike
          : commentlike // ignore: cast_nullable_to_non_nullable
              as dynamic,
      reactionTypes: freezed == reactionTypes
          ? _value._reactionTypes
          : reactionTypes // ignore: cast_nullable_to_non_nullable
              as List<LikeType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCommentResponseImpl implements _CreateCommentResponse {
  _$CreateCommentResponseImpl(
      {@JsonKey(name: 'comment_txt') this.commentTxt,
      @JsonKey(name: 'feed_id') this.feedId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'school_id') this.schoolId,
      @JsonKey(name: 'is_author_and_anonymous') this.isAuthorAndAnonymous,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.id,
      final List<dynamic>? replies,
      this.user,
      this.commentlike,
      @JsonKey(name: 'reaction_types') final List<LikeType>? reactionTypes})
      : _replies = replies,
        _reactionTypes = reactionTypes;

  factory _$CreateCommentResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCommentResponseImplFromJson(json);

  @override
  @JsonKey(name: 'comment_txt')
  final String? commentTxt;
  @override
  @JsonKey(name: 'feed_id')
  final int? feedId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'school_id')
  final int? schoolId;
  @override
  @JsonKey(name: 'is_author_and_anonymous')
  final bool? isAuthorAndAnonymous;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final int? id;
  final List<dynamic>? _replies;
  @override
  List<dynamic>? get replies {
    final value = _replies;
    if (value == null) return null;
    if (_replies is EqualUnmodifiableListView) return _replies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final User? user;
  @override
  final dynamic commentlike;
  final List<LikeType>? _reactionTypes;
  @override
  @JsonKey(name: 'reaction_types')
  List<LikeType>? get reactionTypes {
    final value = _reactionTypes;
    if (value == null) return null;
    if (_reactionTypes is EqualUnmodifiableListView) return _reactionTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CreateCommentResponse(commentTxt: $commentTxt, feedId: $feedId, userId: $userId, schoolId: $schoolId, isAuthorAndAnonymous: $isAuthorAndAnonymous, createdAt: $createdAt, updatedAt: $updatedAt, id: $id, replies: $replies, user: $user, commentlike: $commentlike, reactionTypes: $reactionTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCommentResponseImpl &&
            (identical(other.commentTxt, commentTxt) ||
                other.commentTxt == commentTxt) &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.isAuthorAndAnonymous, isAuthorAndAnonymous) ||
                other.isAuthorAndAnonymous == isAuthorAndAnonymous) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other.commentlike, commentlike) &&
            const DeepCollectionEquality()
                .equals(other._reactionTypes, _reactionTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      commentTxt,
      feedId,
      userId,
      schoolId,
      isAuthorAndAnonymous,
      createdAt,
      updatedAt,
      id,
      const DeepCollectionEquality().hash(_replies),
      user,
      const DeepCollectionEquality().hash(commentlike),
      const DeepCollectionEquality().hash(_reactionTypes));

  /// Create a copy of CreateCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCommentResponseImplCopyWith<_$CreateCommentResponseImpl>
      get copyWith => __$$CreateCommentResponseImplCopyWithImpl<
          _$CreateCommentResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCommentResponseImplToJson(
      this,
    );
  }
}

abstract class _CreateCommentResponse implements CreateCommentResponse {
  factory _CreateCommentResponse(
      {@JsonKey(name: 'comment_txt') final String? commentTxt,
      @JsonKey(name: 'feed_id') final int? feedId,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'school_id') final int? schoolId,
      @JsonKey(name: 'is_author_and_anonymous')
      final bool? isAuthorAndAnonymous,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final int? id,
      final List<dynamic>? replies,
      final User? user,
      final dynamic commentlike,
      @JsonKey(name: 'reaction_types')
      final List<LikeType>? reactionTypes}) = _$CreateCommentResponseImpl;

  factory _CreateCommentResponse.fromJson(Map<String, dynamic> json) =
      _$CreateCommentResponseImpl.fromJson;

  @override
  @JsonKey(name: 'comment_txt')
  String? get commentTxt;
  @override
  @JsonKey(name: 'feed_id')
  int? get feedId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'school_id')
  int? get schoolId;
  @override
  @JsonKey(name: 'is_author_and_anonymous')
  bool? get isAuthorAndAnonymous;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  int? get id;
  @override
  List<dynamic>? get replies;
  @override
  User? get user;
  @override
  dynamic get commentlike;
  @override
  @JsonKey(name: 'reaction_types')
  List<LikeType>? get reactionTypes;

  /// Create a copy of CreateCommentResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateCommentResponseImplCopyWith<_$CreateCommentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
