// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_comment_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostCommentModel _$PostCommentModelFromJson(Map<String, dynamic> json) {
  return _PostCommentModel.fromJson(json);
}

/// @nodoc
mixin _$PostCommentModel {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_id')
  int? get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_id')
  int? get feedId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'reply_count')
  int? get replyCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'like_count')
  int? get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_txt')
  String? get commentTxt => throw _privateConstructorUsedError;
  @JsonKey(name: 'parrent_id')
  dynamic get parrentId => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  dynamic get file => throw _privateConstructorUsedError;
  @JsonKey(name: 'private_user_id')
  dynamic get privateUserId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_author_and_anonymous')
  int? get isAuthorAndAnonymous => throw _privateConstructorUsedError;
  dynamic get gift => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_id')
  dynamic get sellerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'gifted_coins')
  dynamic get giftedCoins => throw _privateConstructorUsedError;
  List<dynamic>? get replies => throw _privateConstructorUsedError;
  @JsonKey(name: 'private_user')
  dynamic get privateUser => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  dynamic get commentlike => throw _privateConstructorUsedError;
  List<dynamic>? get totalLikes => throw _privateConstructorUsedError;
  @JsonKey(name: 'reaction_types')
  List<LikeType>? get reactionTypes => throw _privateConstructorUsedError;

  /// Serializes this PostCommentModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostCommentModelCopyWith<PostCommentModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCommentModelCopyWith<$Res> {
  factory $PostCommentModelCopyWith(
          PostCommentModel value, $Res Function(PostCommentModel) then) =
      _$PostCommentModelCopyWithImpl<$Res, PostCommentModel>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'school_id') int? schoolId,
      @JsonKey(name: 'feed_id') int? feedId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'reply_count') int? replyCount,
      @JsonKey(name: 'like_count') int? likeCount,
      @JsonKey(name: 'comment_txt') String? commentTxt,
      @JsonKey(name: 'parrent_id') dynamic parrentId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      dynamic file,
      @JsonKey(name: 'private_user_id') dynamic privateUserId,
      @JsonKey(name: 'is_author_and_anonymous') int? isAuthorAndAnonymous,
      dynamic gift,
      @JsonKey(name: 'seller_id') dynamic sellerId,
      @JsonKey(name: 'gifted_coins') dynamic giftedCoins,
      List<dynamic>? replies,
      @JsonKey(name: 'private_user') dynamic privateUser,
      User? user,
      dynamic commentlike,
      List<dynamic>? totalLikes,
      @JsonKey(name: 'reaction_types') List<LikeType>? reactionTypes});

  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class _$PostCommentModelCopyWithImpl<$Res, $Val extends PostCommentModel>
    implements $PostCommentModelCopyWith<$Res> {
  _$PostCommentModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? feedId = freezed,
    Object? userId = freezed,
    Object? replyCount = freezed,
    Object? likeCount = freezed,
    Object? commentTxt = freezed,
    Object? parrentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? file = freezed,
    Object? privateUserId = freezed,
    Object? isAuthorAndAnonymous = freezed,
    Object? gift = freezed,
    Object? sellerId = freezed,
    Object? giftedCoins = freezed,
    Object? replies = freezed,
    Object? privateUser = freezed,
    Object? user = freezed,
    Object? commentlike = freezed,
    Object? totalLikes = freezed,
    Object? reactionTypes = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      feedId: freezed == feedId
          ? _value.feedId
          : feedId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyCount: freezed == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentTxt: freezed == commentTxt
          ? _value.commentTxt
          : commentTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      parrentId: freezed == parrentId
          ? _value.parrentId
          : parrentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as dynamic,
      privateUserId: freezed == privateUserId
          ? _value.privateUserId
          : privateUserId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isAuthorAndAnonymous: freezed == isAuthorAndAnonymous
          ? _value.isAuthorAndAnonymous
          : isAuthorAndAnonymous // ignore: cast_nullable_to_non_nullable
              as int?,
      gift: freezed == gift
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sellerId: freezed == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      giftedCoins: freezed == giftedCoins
          ? _value.giftedCoins
          : giftedCoins // ignore: cast_nullable_to_non_nullable
              as dynamic,
      replies: freezed == replies
          ? _value.replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      privateUser: freezed == privateUser
          ? _value.privateUser
          : privateUser // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      commentlike: freezed == commentlike
          ? _value.commentlike
          : commentlike // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalLikes: freezed == totalLikes
          ? _value.totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reactionTypes: freezed == reactionTypes
          ? _value.reactionTypes
          : reactionTypes // ignore: cast_nullable_to_non_nullable
              as List<LikeType>?,
    ) as $Val);
  }

  /// Create a copy of PostCommentModel
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
abstract class _$$PostCommentModelImplCopyWith<$Res>
    implements $PostCommentModelCopyWith<$Res> {
  factory _$$PostCommentModelImplCopyWith(_$PostCommentModelImpl value,
          $Res Function(_$PostCommentModelImpl) then) =
      __$$PostCommentModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'school_id') int? schoolId,
      @JsonKey(name: 'feed_id') int? feedId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'reply_count') int? replyCount,
      @JsonKey(name: 'like_count') int? likeCount,
      @JsonKey(name: 'comment_txt') String? commentTxt,
      @JsonKey(name: 'parrent_id') dynamic parrentId,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      dynamic file,
      @JsonKey(name: 'private_user_id') dynamic privateUserId,
      @JsonKey(name: 'is_author_and_anonymous') int? isAuthorAndAnonymous,
      dynamic gift,
      @JsonKey(name: 'seller_id') dynamic sellerId,
      @JsonKey(name: 'gifted_coins') dynamic giftedCoins,
      List<dynamic>? replies,
      @JsonKey(name: 'private_user') dynamic privateUser,
      User? user,
      dynamic commentlike,
      List<dynamic>? totalLikes,
      @JsonKey(name: 'reaction_types') List<LikeType>? reactionTypes});

  @override
  $UserCopyWith<$Res>? get user;
}

/// @nodoc
class __$$PostCommentModelImplCopyWithImpl<$Res>
    extends _$PostCommentModelCopyWithImpl<$Res, _$PostCommentModelImpl>
    implements _$$PostCommentModelImplCopyWith<$Res> {
  __$$PostCommentModelImplCopyWithImpl(_$PostCommentModelImpl _value,
      $Res Function(_$PostCommentModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? feedId = freezed,
    Object? userId = freezed,
    Object? replyCount = freezed,
    Object? likeCount = freezed,
    Object? commentTxt = freezed,
    Object? parrentId = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? file = freezed,
    Object? privateUserId = freezed,
    Object? isAuthorAndAnonymous = freezed,
    Object? gift = freezed,
    Object? sellerId = freezed,
    Object? giftedCoins = freezed,
    Object? replies = freezed,
    Object? privateUser = freezed,
    Object? user = freezed,
    Object? commentlike = freezed,
    Object? totalLikes = freezed,
    Object? reactionTypes = freezed,
  }) {
    return _then(_$PostCommentModelImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      feedId: freezed == feedId
          ? _value.feedId
          : feedId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      replyCount: freezed == replyCount
          ? _value.replyCount
          : replyCount // ignore: cast_nullable_to_non_nullable
              as int?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentTxt: freezed == commentTxt
          ? _value.commentTxt
          : commentTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      parrentId: freezed == parrentId
          ? _value.parrentId
          : parrentId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as dynamic,
      privateUserId: freezed == privateUserId
          ? _value.privateUserId
          : privateUserId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isAuthorAndAnonymous: freezed == isAuthorAndAnonymous
          ? _value.isAuthorAndAnonymous
          : isAuthorAndAnonymous // ignore: cast_nullable_to_non_nullable
              as int?,
      gift: freezed == gift
          ? _value.gift
          : gift // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sellerId: freezed == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      giftedCoins: freezed == giftedCoins
          ? _value.giftedCoins
          : giftedCoins // ignore: cast_nullable_to_non_nullable
              as dynamic,
      replies: freezed == replies
          ? _value._replies
          : replies // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      privateUser: freezed == privateUser
          ? _value.privateUser
          : privateUser // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      commentlike: freezed == commentlike
          ? _value.commentlike
          : commentlike // ignore: cast_nullable_to_non_nullable
              as dynamic,
      totalLikes: freezed == totalLikes
          ? _value._totalLikes
          : totalLikes // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      reactionTypes: freezed == reactionTypes
          ? _value._reactionTypes
          : reactionTypes // ignore: cast_nullable_to_non_nullable
              as List<LikeType>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostCommentModelImpl implements _PostCommentModel {
  _$PostCommentModelImpl(
      {this.id,
      @JsonKey(name: 'school_id') this.schoolId,
      @JsonKey(name: 'feed_id') this.feedId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'reply_count') this.replyCount,
      @JsonKey(name: 'like_count') this.likeCount,
      @JsonKey(name: 'comment_txt') this.commentTxt,
      @JsonKey(name: 'parrent_id') this.parrentId,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      this.file,
      @JsonKey(name: 'private_user_id') this.privateUserId,
      @JsonKey(name: 'is_author_and_anonymous') this.isAuthorAndAnonymous,
      this.gift,
      @JsonKey(name: 'seller_id') this.sellerId,
      @JsonKey(name: 'gifted_coins') this.giftedCoins,
      final List<dynamic>? replies,
      @JsonKey(name: 'private_user') this.privateUser,
      this.user,
      this.commentlike,
      final List<dynamic>? totalLikes,
      @JsonKey(name: 'reaction_types') final List<LikeType>? reactionTypes})
      : _replies = replies,
        _totalLikes = totalLikes,
        _reactionTypes = reactionTypes;

  factory _$PostCommentModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostCommentModelImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'school_id')
  final int? schoolId;
  @override
  @JsonKey(name: 'feed_id')
  final int? feedId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'reply_count')
  final int? replyCount;
  @override
  @JsonKey(name: 'like_count')
  final int? likeCount;
  @override
  @JsonKey(name: 'comment_txt')
  final String? commentTxt;
  @override
  @JsonKey(name: 'parrent_id')
  final dynamic parrentId;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  final dynamic file;
  @override
  @JsonKey(name: 'private_user_id')
  final dynamic privateUserId;
  @override
  @JsonKey(name: 'is_author_and_anonymous')
  final int? isAuthorAndAnonymous;
  @override
  final dynamic gift;
  @override
  @JsonKey(name: 'seller_id')
  final dynamic sellerId;
  @override
  @JsonKey(name: 'gifted_coins')
  final dynamic giftedCoins;
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
  @JsonKey(name: 'private_user')
  final dynamic privateUser;
  @override
  final User? user;
  @override
  final dynamic commentlike;
  final List<dynamic>? _totalLikes;
  @override
  List<dynamic>? get totalLikes {
    final value = _totalLikes;
    if (value == null) return null;
    if (_totalLikes is EqualUnmodifiableListView) return _totalLikes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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
    return 'PostCommentModel(id: $id, schoolId: $schoolId, feedId: $feedId, userId: $userId, replyCount: $replyCount, likeCount: $likeCount, commentTxt: $commentTxt, parrentId: $parrentId, createdAt: $createdAt, updatedAt: $updatedAt, file: $file, privateUserId: $privateUserId, isAuthorAndAnonymous: $isAuthorAndAnonymous, gift: $gift, sellerId: $sellerId, giftedCoins: $giftedCoins, replies: $replies, privateUser: $privateUser, user: $user, commentlike: $commentlike, totalLikes: $totalLikes, reactionTypes: $reactionTypes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostCommentModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.feedId, feedId) || other.feedId == feedId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.replyCount, replyCount) ||
                other.replyCount == replyCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentTxt, commentTxt) ||
                other.commentTxt == commentTxt) &&
            const DeepCollectionEquality().equals(other.parrentId, parrentId) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            const DeepCollectionEquality().equals(other.file, file) &&
            const DeepCollectionEquality()
                .equals(other.privateUserId, privateUserId) &&
            (identical(other.isAuthorAndAnonymous, isAuthorAndAnonymous) ||
                other.isAuthorAndAnonymous == isAuthorAndAnonymous) &&
            const DeepCollectionEquality().equals(other.gift, gift) &&
            const DeepCollectionEquality().equals(other.sellerId, sellerId) &&
            const DeepCollectionEquality()
                .equals(other.giftedCoins, giftedCoins) &&
            const DeepCollectionEquality().equals(other._replies, _replies) &&
            const DeepCollectionEquality()
                .equals(other.privateUser, privateUser) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality()
                .equals(other.commentlike, commentlike) &&
            const DeepCollectionEquality()
                .equals(other._totalLikes, _totalLikes) &&
            const DeepCollectionEquality()
                .equals(other._reactionTypes, _reactionTypes));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        schoolId,
        feedId,
        userId,
        replyCount,
        likeCount,
        commentTxt,
        const DeepCollectionEquality().hash(parrentId),
        createdAt,
        updatedAt,
        const DeepCollectionEquality().hash(file),
        const DeepCollectionEquality().hash(privateUserId),
        isAuthorAndAnonymous,
        const DeepCollectionEquality().hash(gift),
        const DeepCollectionEquality().hash(sellerId),
        const DeepCollectionEquality().hash(giftedCoins),
        const DeepCollectionEquality().hash(_replies),
        const DeepCollectionEquality().hash(privateUser),
        user,
        const DeepCollectionEquality().hash(commentlike),
        const DeepCollectionEquality().hash(_totalLikes),
        const DeepCollectionEquality().hash(_reactionTypes)
      ]);

  /// Create a copy of PostCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostCommentModelImplCopyWith<_$PostCommentModelImpl> get copyWith =>
      __$$PostCommentModelImplCopyWithImpl<_$PostCommentModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostCommentModelImplToJson(
      this,
    );
  }
}

abstract class _PostCommentModel implements PostCommentModel {
  factory _PostCommentModel(
      {final int? id,
      @JsonKey(name: 'school_id') final int? schoolId,
      @JsonKey(name: 'feed_id') final int? feedId,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'reply_count') final int? replyCount,
      @JsonKey(name: 'like_count') final int? likeCount,
      @JsonKey(name: 'comment_txt') final String? commentTxt,
      @JsonKey(name: 'parrent_id') final dynamic parrentId,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      final dynamic file,
      @JsonKey(name: 'private_user_id') final dynamic privateUserId,
      @JsonKey(name: 'is_author_and_anonymous') final int? isAuthorAndAnonymous,
      final dynamic gift,
      @JsonKey(name: 'seller_id') final dynamic sellerId,
      @JsonKey(name: 'gifted_coins') final dynamic giftedCoins,
      final List<dynamic>? replies,
      @JsonKey(name: 'private_user') final dynamic privateUser,
      final User? user,
      final dynamic commentlike,
      final List<dynamic>? totalLikes,
      @JsonKey(name: 'reaction_types')
      final List<LikeType>? reactionTypes}) = _$PostCommentModelImpl;

  factory _PostCommentModel.fromJson(Map<String, dynamic> json) =
      _$PostCommentModelImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'school_id')
  int? get schoolId;
  @override
  @JsonKey(name: 'feed_id')
  int? get feedId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'reply_count')
  int? get replyCount;
  @override
  @JsonKey(name: 'like_count')
  int? get likeCount;
  @override
  @JsonKey(name: 'comment_txt')
  String? get commentTxt;
  @override
  @JsonKey(name: 'parrent_id')
  dynamic get parrentId;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  dynamic get file;
  @override
  @JsonKey(name: 'private_user_id')
  dynamic get privateUserId;
  @override
  @JsonKey(name: 'is_author_and_anonymous')
  int? get isAuthorAndAnonymous;
  @override
  dynamic get gift;
  @override
  @JsonKey(name: 'seller_id')
  dynamic get sellerId;
  @override
  @JsonKey(name: 'gifted_coins')
  dynamic get giftedCoins;
  @override
  List<dynamic>? get replies;
  @override
  @JsonKey(name: 'private_user')
  dynamic get privateUser;
  @override
  User? get user;
  @override
  dynamic get commentlike;
  @override
  List<dynamic>? get totalLikes;
  @override
  @JsonKey(name: 'reaction_types')
  List<LikeType>? get reactionTypes;

  /// Create a copy of PostCommentModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostCommentModelImplCopyWith<_$PostCommentModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
