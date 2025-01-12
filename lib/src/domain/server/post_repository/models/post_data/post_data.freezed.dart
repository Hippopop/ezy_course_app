// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PostData _$PostDataFromJson(Map<String, dynamic> json) {
  return _PostData.fromJson(json);
}

/// @nodoc
mixin _$PostData {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_id')
  int? get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'course_id')
  dynamic get courseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'community_id')
  int? get communityId => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_id')
  dynamic get groupId => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_txt')
  String? get feedTxt => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  @JsonKey(name: 'activity_type')
  String? get activityType => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_pinned')
  int? get isPinned => throw _privateConstructorUsedError;
  @JsonKey(name: 'file_type')
  String? get fileType => throw _privateConstructorUsedError;
  List<dynamic>? get files => throw _privateConstructorUsedError;
  @JsonKey(name: 'like_count')
  int? get likeCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'share_count')
  int? get shareCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'share_id')
  int? get shareId => throw _privateConstructorUsedError;
  @JsonKey(name: 'meta_data')
  MetaData? get metaData => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_privacy')
  String? get feedPrivacy => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_background')
  int? get isBackground => throw _privateConstructorUsedError;
  @JsonKey(name: 'bg_color')
  dynamic get bgColor => throw _privateConstructorUsedError;
  @JsonKey(name: 'poll_id')
  dynamic get pollId => throw _privateConstructorUsedError;
  @JsonKey(name: 'lesson_id')
  dynamic get lessonId => throw _privateConstructorUsedError;
  @JsonKey(name: 'space_id')
  int? get spaceId => throw _privateConstructorUsedError;
  @JsonKey(name: 'video_id')
  dynamic get videoId => throw _privateConstructorUsedError;
  @JsonKey(name: 'stream_id')
  dynamic get streamId => throw _privateConstructorUsedError;
  @JsonKey(name: 'blog_id')
  dynamic get blogId => throw _privateConstructorUsedError;
  @JsonKey(name: 'schedule_date')
  dynamic get scheduleDate => throw _privateConstructorUsedError;
  dynamic get timezone => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_anonymous')
  dynamic get isAnonymous => throw _privateConstructorUsedError;
  @JsonKey(name: 'meeting_id')
  dynamic get meetingId => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_id')
  dynamic get sellerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'publish_date')
  DateTime? get publishDate => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_feed_edit')
  bool? get isFeedEdit => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get pic => throw _privateConstructorUsedError;
  int? get uid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_private_chat')
  int? get isPrivateChat => throw _privateConstructorUsedError;
  dynamic get group => throw _privateConstructorUsedError;
  User? get user => throw _privateConstructorUsedError;
  List<LikeType>? get likeType => throw _privateConstructorUsedError;
  dynamic get follow => throw _privateConstructorUsedError;
  dynamic get poll => throw _privateConstructorUsedError;
  UserLike? get like => throw _privateConstructorUsedError;
  dynamic get savedPosts => throw _privateConstructorUsedError;
  List<dynamic>? get comments => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  /// Serializes this PostData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PostDataCopyWith<PostData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDataCopyWith<$Res> {
  factory $PostDataCopyWith(PostData value, $Res Function(PostData) then) =
      _$PostDataCopyWithImpl<$Res, PostData>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'school_id') int? schoolId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'course_id') dynamic courseId,
      @JsonKey(name: 'community_id') int? communityId,
      @JsonKey(name: 'group_id') dynamic groupId,
      @JsonKey(name: 'feed_txt') String? feedTxt,
      String? status,
      String? slug,
      String? title,
      @JsonKey(name: 'activity_type') String? activityType,
      @JsonKey(name: 'is_pinned') int? isPinned,
      @JsonKey(name: 'file_type') String? fileType,
      List<dynamic>? files,
      @JsonKey(name: 'like_count') int? likeCount,
      @JsonKey(name: 'comment_count') int? commentCount,
      @JsonKey(name: 'share_count') int? shareCount,
      @JsonKey(name: 'share_id') int? shareId,
      @JsonKey(name: 'meta_data') MetaData? metaData,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'feed_privacy') String? feedPrivacy,
      @JsonKey(name: 'is_background') int? isBackground,
      @JsonKey(name: 'bg_color') dynamic bgColor,
      @JsonKey(name: 'poll_id') dynamic pollId,
      @JsonKey(name: 'lesson_id') dynamic lessonId,
      @JsonKey(name: 'space_id') int? spaceId,
      @JsonKey(name: 'video_id') dynamic videoId,
      @JsonKey(name: 'stream_id') dynamic streamId,
      @JsonKey(name: 'blog_id') dynamic blogId,
      @JsonKey(name: 'schedule_date') dynamic scheduleDate,
      dynamic timezone,
      @JsonKey(name: 'is_anonymous') dynamic isAnonymous,
      @JsonKey(name: 'meeting_id') dynamic meetingId,
      @JsonKey(name: 'seller_id') dynamic sellerId,
      @JsonKey(name: 'publish_date') DateTime? publishDate,
      @JsonKey(name: 'is_feed_edit') bool? isFeedEdit,
      String? name,
      String? pic,
      int? uid,
      @JsonKey(name: 'is_private_chat') int? isPrivateChat,
      dynamic group,
      User? user,
      List<LikeType>? likeType,
      dynamic follow,
      dynamic poll,
      UserLike? like,
      dynamic savedPosts,
      List<dynamic>? comments,
      Meta? meta});

  $UserCopyWith<$Res>? get user;
  $UserLikeCopyWith<$Res>? get like;
}

/// @nodoc
class _$PostDataCopyWithImpl<$Res, $Val extends PostData>
    implements $PostDataCopyWith<$Res> {
  _$PostDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PostData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? userId = freezed,
    Object? courseId = freezed,
    Object? communityId = freezed,
    Object? groupId = freezed,
    Object? feedTxt = freezed,
    Object? status = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? activityType = freezed,
    Object? isPinned = freezed,
    Object? fileType = freezed,
    Object? files = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? shareCount = freezed,
    Object? shareId = freezed,
    Object? metaData = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? feedPrivacy = freezed,
    Object? isBackground = freezed,
    Object? bgColor = freezed,
    Object? pollId = freezed,
    Object? lessonId = freezed,
    Object? spaceId = freezed,
    Object? videoId = freezed,
    Object? streamId = freezed,
    Object? blogId = freezed,
    Object? scheduleDate = freezed,
    Object? timezone = freezed,
    Object? isAnonymous = freezed,
    Object? meetingId = freezed,
    Object? sellerId = freezed,
    Object? publishDate = freezed,
    Object? isFeedEdit = freezed,
    Object? name = freezed,
    Object? pic = freezed,
    Object? uid = freezed,
    Object? isPrivateChat = freezed,
    Object? group = freezed,
    Object? user = freezed,
    Object? likeType = freezed,
    Object? follow = freezed,
    Object? poll = freezed,
    Object? like = freezed,
    Object? savedPosts = freezed,
    Object? comments = freezed,
    Object? meta = freezed,
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
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      communityId: freezed == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as int?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      feedTxt: freezed == feedTxt
          ? _value.feedTxt
          : feedTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
      isPinned: freezed == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as int?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      shareCount: freezed == shareCount
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int?,
      shareId: freezed == shareId
          ? _value.shareId
          : shareId // ignore: cast_nullable_to_non_nullable
              as int?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      feedPrivacy: freezed == feedPrivacy
          ? _value.feedPrivacy
          : feedPrivacy // ignore: cast_nullable_to_non_nullable
              as String?,
      isBackground: freezed == isBackground
          ? _value.isBackground
          : isBackground // ignore: cast_nullable_to_non_nullable
              as int?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pollId: freezed == pollId
          ? _value.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      spaceId: freezed == spaceId
          ? _value.spaceId
          : spaceId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      blogId: freezed == blogId
          ? _value.blogId
          : blogId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scheduleDate: freezed == scheduleDate
          ? _value.scheduleDate
          : scheduleDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isAnonymous: freezed == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      meetingId: freezed == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sellerId: freezed == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFeedEdit: freezed == isFeedEdit
          ? _value.isFeedEdit
          : isFeedEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivateChat: freezed == isPrivateChat
          ? _value.isPrivateChat
          : isPrivateChat // ignore: cast_nullable_to_non_nullable
              as int?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      likeType: freezed == likeType
          ? _value.likeType
          : likeType // ignore: cast_nullable_to_non_nullable
              as List<LikeType>?,
      follow: freezed == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as dynamic,
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as dynamic,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as UserLike?,
      savedPosts: freezed == savedPosts
          ? _value.savedPosts
          : savedPosts // ignore: cast_nullable_to_non_nullable
              as dynamic,
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  /// Create a copy of PostData
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

  /// Create a copy of PostData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserLikeCopyWith<$Res>? get like {
    if (_value.like == null) {
      return null;
    }

    return $UserLikeCopyWith<$Res>(_value.like!, (value) {
      return _then(_value.copyWith(like: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostDataImplCopyWith<$Res>
    implements $PostDataCopyWith<$Res> {
  factory _$$PostDataImplCopyWith(
          _$PostDataImpl value, $Res Function(_$PostDataImpl) then) =
      __$$PostDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'school_id') int? schoolId,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'course_id') dynamic courseId,
      @JsonKey(name: 'community_id') int? communityId,
      @JsonKey(name: 'group_id') dynamic groupId,
      @JsonKey(name: 'feed_txt') String? feedTxt,
      String? status,
      String? slug,
      String? title,
      @JsonKey(name: 'activity_type') String? activityType,
      @JsonKey(name: 'is_pinned') int? isPinned,
      @JsonKey(name: 'file_type') String? fileType,
      List<dynamic>? files,
      @JsonKey(name: 'like_count') int? likeCount,
      @JsonKey(name: 'comment_count') int? commentCount,
      @JsonKey(name: 'share_count') int? shareCount,
      @JsonKey(name: 'share_id') int? shareId,
      @JsonKey(name: 'meta_data') MetaData? metaData,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'feed_privacy') String? feedPrivacy,
      @JsonKey(name: 'is_background') int? isBackground,
      @JsonKey(name: 'bg_color') dynamic bgColor,
      @JsonKey(name: 'poll_id') dynamic pollId,
      @JsonKey(name: 'lesson_id') dynamic lessonId,
      @JsonKey(name: 'space_id') int? spaceId,
      @JsonKey(name: 'video_id') dynamic videoId,
      @JsonKey(name: 'stream_id') dynamic streamId,
      @JsonKey(name: 'blog_id') dynamic blogId,
      @JsonKey(name: 'schedule_date') dynamic scheduleDate,
      dynamic timezone,
      @JsonKey(name: 'is_anonymous') dynamic isAnonymous,
      @JsonKey(name: 'meeting_id') dynamic meetingId,
      @JsonKey(name: 'seller_id') dynamic sellerId,
      @JsonKey(name: 'publish_date') DateTime? publishDate,
      @JsonKey(name: 'is_feed_edit') bool? isFeedEdit,
      String? name,
      String? pic,
      int? uid,
      @JsonKey(name: 'is_private_chat') int? isPrivateChat,
      dynamic group,
      User? user,
      List<LikeType>? likeType,
      dynamic follow,
      dynamic poll,
      UserLike? like,
      dynamic savedPosts,
      List<dynamic>? comments,
      Meta? meta});

  @override
  $UserCopyWith<$Res>? get user;
  @override
  $UserLikeCopyWith<$Res>? get like;
}

/// @nodoc
class __$$PostDataImplCopyWithImpl<$Res>
    extends _$PostDataCopyWithImpl<$Res, _$PostDataImpl>
    implements _$$PostDataImplCopyWith<$Res> {
  __$$PostDataImplCopyWithImpl(
      _$PostDataImpl _value, $Res Function(_$PostDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PostData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schoolId = freezed,
    Object? userId = freezed,
    Object? courseId = freezed,
    Object? communityId = freezed,
    Object? groupId = freezed,
    Object? feedTxt = freezed,
    Object? status = freezed,
    Object? slug = freezed,
    Object? title = freezed,
    Object? activityType = freezed,
    Object? isPinned = freezed,
    Object? fileType = freezed,
    Object? files = freezed,
    Object? likeCount = freezed,
    Object? commentCount = freezed,
    Object? shareCount = freezed,
    Object? shareId = freezed,
    Object? metaData = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? feedPrivacy = freezed,
    Object? isBackground = freezed,
    Object? bgColor = freezed,
    Object? pollId = freezed,
    Object? lessonId = freezed,
    Object? spaceId = freezed,
    Object? videoId = freezed,
    Object? streamId = freezed,
    Object? blogId = freezed,
    Object? scheduleDate = freezed,
    Object? timezone = freezed,
    Object? isAnonymous = freezed,
    Object? meetingId = freezed,
    Object? sellerId = freezed,
    Object? publishDate = freezed,
    Object? isFeedEdit = freezed,
    Object? name = freezed,
    Object? pic = freezed,
    Object? uid = freezed,
    Object? isPrivateChat = freezed,
    Object? group = freezed,
    Object? user = freezed,
    Object? likeType = freezed,
    Object? follow = freezed,
    Object? poll = freezed,
    Object? like = freezed,
    Object? savedPosts = freezed,
    Object? comments = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$PostDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      courseId: freezed == courseId
          ? _value.courseId
          : courseId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      communityId: freezed == communityId
          ? _value.communityId
          : communityId // ignore: cast_nullable_to_non_nullable
              as int?,
      groupId: freezed == groupId
          ? _value.groupId
          : groupId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      feedTxt: freezed == feedTxt
          ? _value.feedTxt
          : feedTxt // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      activityType: freezed == activityType
          ? _value.activityType
          : activityType // ignore: cast_nullable_to_non_nullable
              as String?,
      isPinned: freezed == isPinned
          ? _value.isPinned
          : isPinned // ignore: cast_nullable_to_non_nullable
              as int?,
      fileType: freezed == fileType
          ? _value.fileType
          : fileType // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value._files
          : files // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      likeCount: freezed == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      shareCount: freezed == shareCount
          ? _value.shareCount
          : shareCount // ignore: cast_nullable_to_non_nullable
              as int?,
      shareId: freezed == shareId
          ? _value.shareId
          : shareId // ignore: cast_nullable_to_non_nullable
              as int?,
      metaData: freezed == metaData
          ? _value.metaData
          : metaData // ignore: cast_nullable_to_non_nullable
              as MetaData?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      feedPrivacy: freezed == feedPrivacy
          ? _value.feedPrivacy
          : feedPrivacy // ignore: cast_nullable_to_non_nullable
              as String?,
      isBackground: freezed == isBackground
          ? _value.isBackground
          : isBackground // ignore: cast_nullable_to_non_nullable
              as int?,
      bgColor: freezed == bgColor
          ? _value.bgColor
          : bgColor // ignore: cast_nullable_to_non_nullable
              as dynamic,
      pollId: freezed == pollId
          ? _value.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      lessonId: freezed == lessonId
          ? _value.lessonId
          : lessonId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      spaceId: freezed == spaceId
          ? _value.spaceId
          : spaceId // ignore: cast_nullable_to_non_nullable
              as int?,
      videoId: freezed == videoId
          ? _value.videoId
          : videoId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      streamId: freezed == streamId
          ? _value.streamId
          : streamId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      blogId: freezed == blogId
          ? _value.blogId
          : blogId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      scheduleDate: freezed == scheduleDate
          ? _value.scheduleDate
          : scheduleDate // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isAnonymous: freezed == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as dynamic,
      meetingId: freezed == meetingId
          ? _value.meetingId
          : meetingId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sellerId: freezed == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      publishDate: freezed == publishDate
          ? _value.publishDate
          : publishDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isFeedEdit: freezed == isFeedEdit
          ? _value.isFeedEdit
          : isFeedEdit // ignore: cast_nullable_to_non_nullable
              as bool?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      pic: freezed == pic
          ? _value.pic
          : pic // ignore: cast_nullable_to_non_nullable
              as String?,
      uid: freezed == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as int?,
      isPrivateChat: freezed == isPrivateChat
          ? _value.isPrivateChat
          : isPrivateChat // ignore: cast_nullable_to_non_nullable
              as int?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as dynamic,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User?,
      likeType: freezed == likeType
          ? _value._likeType
          : likeType // ignore: cast_nullable_to_non_nullable
              as List<LikeType>?,
      follow: freezed == follow
          ? _value.follow
          : follow // ignore: cast_nullable_to_non_nullable
              as dynamic,
      poll: freezed == poll
          ? _value.poll
          : poll // ignore: cast_nullable_to_non_nullable
              as dynamic,
      like: freezed == like
          ? _value.like
          : like // ignore: cast_nullable_to_non_nullable
              as UserLike?,
      savedPosts: freezed == savedPosts
          ? _value.savedPosts
          : savedPosts // ignore: cast_nullable_to_non_nullable
              as dynamic,
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostDataImpl implements _PostData {
  _$PostDataImpl(
      {this.id,
      @JsonKey(name: 'school_id') this.schoolId,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'course_id') this.courseId,
      @JsonKey(name: 'community_id') this.communityId,
      @JsonKey(name: 'group_id') this.groupId,
      @JsonKey(name: 'feed_txt') this.feedTxt,
      this.status,
      this.slug,
      this.title,
      @JsonKey(name: 'activity_type') this.activityType,
      @JsonKey(name: 'is_pinned') this.isPinned,
      @JsonKey(name: 'file_type') this.fileType,
      final List<dynamic>? files,
      @JsonKey(name: 'like_count') this.likeCount,
      @JsonKey(name: 'comment_count') this.commentCount,
      @JsonKey(name: 'share_count') this.shareCount,
      @JsonKey(name: 'share_id') this.shareId,
      @JsonKey(name: 'meta_data') this.metaData,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'feed_privacy') this.feedPrivacy,
      @JsonKey(name: 'is_background') this.isBackground,
      @JsonKey(name: 'bg_color') this.bgColor,
      @JsonKey(name: 'poll_id') this.pollId,
      @JsonKey(name: 'lesson_id') this.lessonId,
      @JsonKey(name: 'space_id') this.spaceId,
      @JsonKey(name: 'video_id') this.videoId,
      @JsonKey(name: 'stream_id') this.streamId,
      @JsonKey(name: 'blog_id') this.blogId,
      @JsonKey(name: 'schedule_date') this.scheduleDate,
      this.timezone,
      @JsonKey(name: 'is_anonymous') this.isAnonymous,
      @JsonKey(name: 'meeting_id') this.meetingId,
      @JsonKey(name: 'seller_id') this.sellerId,
      @JsonKey(name: 'publish_date') this.publishDate,
      @JsonKey(name: 'is_feed_edit') this.isFeedEdit,
      this.name,
      this.pic,
      this.uid,
      @JsonKey(name: 'is_private_chat') this.isPrivateChat,
      this.group,
      this.user,
      final List<LikeType>? likeType,
      this.follow,
      this.poll,
      this.like,
      this.savedPosts,
      final List<dynamic>? comments,
      this.meta})
      : _files = files,
        _likeType = likeType,
        _comments = comments;

  factory _$PostDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostDataImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'school_id')
  final int? schoolId;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'course_id')
  final dynamic courseId;
  @override
  @JsonKey(name: 'community_id')
  final int? communityId;
  @override
  @JsonKey(name: 'group_id')
  final dynamic groupId;
  @override
  @JsonKey(name: 'feed_txt')
  final String? feedTxt;
  @override
  final String? status;
  @override
  final String? slug;
  @override
  final String? title;
  @override
  @JsonKey(name: 'activity_type')
  final String? activityType;
  @override
  @JsonKey(name: 'is_pinned')
  final int? isPinned;
  @override
  @JsonKey(name: 'file_type')
  final String? fileType;
  final List<dynamic>? _files;
  @override
  List<dynamic>? get files {
    final value = _files;
    if (value == null) return null;
    if (_files is EqualUnmodifiableListView) return _files;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'like_count')
  final int? likeCount;
  @override
  @JsonKey(name: 'comment_count')
  final int? commentCount;
  @override
  @JsonKey(name: 'share_count')
  final int? shareCount;
  @override
  @JsonKey(name: 'share_id')
  final int? shareId;
  @override
  @JsonKey(name: 'meta_data')
  final MetaData? metaData;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'feed_privacy')
  final String? feedPrivacy;
  @override
  @JsonKey(name: 'is_background')
  final int? isBackground;
  @override
  @JsonKey(name: 'bg_color')
  final dynamic bgColor;
  @override
  @JsonKey(name: 'poll_id')
  final dynamic pollId;
  @override
  @JsonKey(name: 'lesson_id')
  final dynamic lessonId;
  @override
  @JsonKey(name: 'space_id')
  final int? spaceId;
  @override
  @JsonKey(name: 'video_id')
  final dynamic videoId;
  @override
  @JsonKey(name: 'stream_id')
  final dynamic streamId;
  @override
  @JsonKey(name: 'blog_id')
  final dynamic blogId;
  @override
  @JsonKey(name: 'schedule_date')
  final dynamic scheduleDate;
  @override
  final dynamic timezone;
  @override
  @JsonKey(name: 'is_anonymous')
  final dynamic isAnonymous;
  @override
  @JsonKey(name: 'meeting_id')
  final dynamic meetingId;
  @override
  @JsonKey(name: 'seller_id')
  final dynamic sellerId;
  @override
  @JsonKey(name: 'publish_date')
  final DateTime? publishDate;
  @override
  @JsonKey(name: 'is_feed_edit')
  final bool? isFeedEdit;
  @override
  final String? name;
  @override
  final String? pic;
  @override
  final int? uid;
  @override
  @JsonKey(name: 'is_private_chat')
  final int? isPrivateChat;
  @override
  final dynamic group;
  @override
  final User? user;
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
  final dynamic follow;
  @override
  final dynamic poll;
  @override
  final UserLike? like;
  @override
  final dynamic savedPosts;
  final List<dynamic>? _comments;
  @override
  List<dynamic>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'PostData(id: $id, schoolId: $schoolId, userId: $userId, courseId: $courseId, communityId: $communityId, groupId: $groupId, feedTxt: $feedTxt, status: $status, slug: $slug, title: $title, activityType: $activityType, isPinned: $isPinned, fileType: $fileType, files: $files, likeCount: $likeCount, commentCount: $commentCount, shareCount: $shareCount, shareId: $shareId, metaData: $metaData, createdAt: $createdAt, updatedAt: $updatedAt, feedPrivacy: $feedPrivacy, isBackground: $isBackground, bgColor: $bgColor, pollId: $pollId, lessonId: $lessonId, spaceId: $spaceId, videoId: $videoId, streamId: $streamId, blogId: $blogId, scheduleDate: $scheduleDate, timezone: $timezone, isAnonymous: $isAnonymous, meetingId: $meetingId, sellerId: $sellerId, publishDate: $publishDate, isFeedEdit: $isFeedEdit, name: $name, pic: $pic, uid: $uid, isPrivateChat: $isPrivateChat, group: $group, user: $user, likeType: $likeType, follow: $follow, poll: $poll, like: $like, savedPosts: $savedPosts, comments: $comments, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            const DeepCollectionEquality().equals(other.courseId, courseId) &&
            (identical(other.communityId, communityId) ||
                other.communityId == communityId) &&
            const DeepCollectionEquality().equals(other.groupId, groupId) &&
            (identical(other.feedTxt, feedTxt) || other.feedTxt == feedTxt) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.activityType, activityType) ||
                other.activityType == activityType) &&
            (identical(other.isPinned, isPinned) ||
                other.isPinned == isPinned) &&
            (identical(other.fileType, fileType) ||
                other.fileType == fileType) &&
            const DeepCollectionEquality().equals(other._files, _files) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.shareCount, shareCount) ||
                other.shareCount == shareCount) &&
            (identical(other.shareId, shareId) || other.shareId == shareId) &&
            (identical(other.metaData, metaData) ||
                other.metaData == metaData) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.feedPrivacy, feedPrivacy) ||
                other.feedPrivacy == feedPrivacy) &&
            (identical(other.isBackground, isBackground) ||
                other.isBackground == isBackground) &&
            const DeepCollectionEquality().equals(other.bgColor, bgColor) &&
            const DeepCollectionEquality().equals(other.pollId, pollId) &&
            const DeepCollectionEquality().equals(other.lessonId, lessonId) &&
            (identical(other.spaceId, spaceId) || other.spaceId == spaceId) &&
            const DeepCollectionEquality().equals(other.videoId, videoId) &&
            const DeepCollectionEquality().equals(other.streamId, streamId) &&
            const DeepCollectionEquality().equals(other.blogId, blogId) &&
            const DeepCollectionEquality()
                .equals(other.scheduleDate, scheduleDate) &&
            const DeepCollectionEquality().equals(other.timezone, timezone) &&
            const DeepCollectionEquality()
                .equals(other.isAnonymous, isAnonymous) &&
            const DeepCollectionEquality().equals(other.meetingId, meetingId) &&
            const DeepCollectionEquality().equals(other.sellerId, sellerId) &&
            (identical(other.publishDate, publishDate) ||
                other.publishDate == publishDate) &&
            (identical(other.isFeedEdit, isFeedEdit) ||
                other.isFeedEdit == isFeedEdit) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.pic, pic) || other.pic == pic) &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.isPrivateChat, isPrivateChat) ||
                other.isPrivateChat == isPrivateChat) &&
            const DeepCollectionEquality().equals(other.group, group) &&
            (identical(other.user, user) || other.user == user) &&
            const DeepCollectionEquality().equals(other._likeType, _likeType) &&
            const DeepCollectionEquality().equals(other.follow, follow) &&
            const DeepCollectionEquality().equals(other.poll, poll) &&
            (identical(other.like, like) || other.like == like) &&
            const DeepCollectionEquality()
                .equals(other.savedPosts, savedPosts) &&
            const DeepCollectionEquality().equals(other._comments, _comments) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        schoolId,
        userId,
        const DeepCollectionEquality().hash(courseId),
        communityId,
        const DeepCollectionEquality().hash(groupId),
        feedTxt,
        status,
        slug,
        title,
        activityType,
        isPinned,
        fileType,
        const DeepCollectionEquality().hash(_files),
        likeCount,
        commentCount,
        shareCount,
        shareId,
        metaData,
        createdAt,
        updatedAt,
        feedPrivacy,
        isBackground,
        const DeepCollectionEquality().hash(bgColor),
        const DeepCollectionEquality().hash(pollId),
        const DeepCollectionEquality().hash(lessonId),
        spaceId,
        const DeepCollectionEquality().hash(videoId),
        const DeepCollectionEquality().hash(streamId),
        const DeepCollectionEquality().hash(blogId),
        const DeepCollectionEquality().hash(scheduleDate),
        const DeepCollectionEquality().hash(timezone),
        const DeepCollectionEquality().hash(isAnonymous),
        const DeepCollectionEquality().hash(meetingId),
        const DeepCollectionEquality().hash(sellerId),
        publishDate,
        isFeedEdit,
        name,
        pic,
        uid,
        isPrivateChat,
        const DeepCollectionEquality().hash(group),
        user,
        const DeepCollectionEquality().hash(_likeType),
        const DeepCollectionEquality().hash(follow),
        const DeepCollectionEquality().hash(poll),
        like,
        const DeepCollectionEquality().hash(savedPosts),
        const DeepCollectionEquality().hash(_comments),
        meta
      ]);

  /// Create a copy of PostData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDataImplCopyWith<_$PostDataImpl> get copyWith =>
      __$$PostDataImplCopyWithImpl<_$PostDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostDataImplToJson(
      this,
    );
  }
}

abstract class _PostData implements PostData {
  factory _PostData(
      {final int? id,
      @JsonKey(name: 'school_id') final int? schoolId,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'course_id') final dynamic courseId,
      @JsonKey(name: 'community_id') final int? communityId,
      @JsonKey(name: 'group_id') final dynamic groupId,
      @JsonKey(name: 'feed_txt') final String? feedTxt,
      final String? status,
      final String? slug,
      final String? title,
      @JsonKey(name: 'activity_type') final String? activityType,
      @JsonKey(name: 'is_pinned') final int? isPinned,
      @JsonKey(name: 'file_type') final String? fileType,
      final List<dynamic>? files,
      @JsonKey(name: 'like_count') final int? likeCount,
      @JsonKey(name: 'comment_count') final int? commentCount,
      @JsonKey(name: 'share_count') final int? shareCount,
      @JsonKey(name: 'share_id') final int? shareId,
      @JsonKey(name: 'meta_data') final MetaData? metaData,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'feed_privacy') final String? feedPrivacy,
      @JsonKey(name: 'is_background') final int? isBackground,
      @JsonKey(name: 'bg_color') final dynamic bgColor,
      @JsonKey(name: 'poll_id') final dynamic pollId,
      @JsonKey(name: 'lesson_id') final dynamic lessonId,
      @JsonKey(name: 'space_id') final int? spaceId,
      @JsonKey(name: 'video_id') final dynamic videoId,
      @JsonKey(name: 'stream_id') final dynamic streamId,
      @JsonKey(name: 'blog_id') final dynamic blogId,
      @JsonKey(name: 'schedule_date') final dynamic scheduleDate,
      final dynamic timezone,
      @JsonKey(name: 'is_anonymous') final dynamic isAnonymous,
      @JsonKey(name: 'meeting_id') final dynamic meetingId,
      @JsonKey(name: 'seller_id') final dynamic sellerId,
      @JsonKey(name: 'publish_date') final DateTime? publishDate,
      @JsonKey(name: 'is_feed_edit') final bool? isFeedEdit,
      final String? name,
      final String? pic,
      final int? uid,
      @JsonKey(name: 'is_private_chat') final int? isPrivateChat,
      final dynamic group,
      final User? user,
      final List<LikeType>? likeType,
      final dynamic follow,
      final dynamic poll,
      final UserLike? like,
      final dynamic savedPosts,
      final List<dynamic>? comments,
      final Meta? meta}) = _$PostDataImpl;

  factory _PostData.fromJson(Map<String, dynamic> json) =
      _$PostDataImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'school_id')
  int? get schoolId;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'course_id')
  dynamic get courseId;
  @override
  @JsonKey(name: 'community_id')
  int? get communityId;
  @override
  @JsonKey(name: 'group_id')
  dynamic get groupId;
  @override
  @JsonKey(name: 'feed_txt')
  String? get feedTxt;
  @override
  String? get status;
  @override
  String? get slug;
  @override
  String? get title;
  @override
  @JsonKey(name: 'activity_type')
  String? get activityType;
  @override
  @JsonKey(name: 'is_pinned')
  int? get isPinned;
  @override
  @JsonKey(name: 'file_type')
  String? get fileType;
  @override
  List<dynamic>? get files;
  @override
  @JsonKey(name: 'like_count')
  int? get likeCount;
  @override
  @JsonKey(name: 'comment_count')
  int? get commentCount;
  @override
  @JsonKey(name: 'share_count')
  int? get shareCount;
  @override
  @JsonKey(name: 'share_id')
  int? get shareId;
  @override
  @JsonKey(name: 'meta_data')
  MetaData? get metaData;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'feed_privacy')
  String? get feedPrivacy;
  @override
  @JsonKey(name: 'is_background')
  int? get isBackground;
  @override
  @JsonKey(name: 'bg_color')
  dynamic get bgColor;
  @override
  @JsonKey(name: 'poll_id')
  dynamic get pollId;
  @override
  @JsonKey(name: 'lesson_id')
  dynamic get lessonId;
  @override
  @JsonKey(name: 'space_id')
  int? get spaceId;
  @override
  @JsonKey(name: 'video_id')
  dynamic get videoId;
  @override
  @JsonKey(name: 'stream_id')
  dynamic get streamId;
  @override
  @JsonKey(name: 'blog_id')
  dynamic get blogId;
  @override
  @JsonKey(name: 'schedule_date')
  dynamic get scheduleDate;
  @override
  dynamic get timezone;
  @override
  @JsonKey(name: 'is_anonymous')
  dynamic get isAnonymous;
  @override
  @JsonKey(name: 'meeting_id')
  dynamic get meetingId;
  @override
  @JsonKey(name: 'seller_id')
  dynamic get sellerId;
  @override
  @JsonKey(name: 'publish_date')
  DateTime? get publishDate;
  @override
  @JsonKey(name: 'is_feed_edit')
  bool? get isFeedEdit;
  @override
  String? get name;
  @override
  String? get pic;
  @override
  int? get uid;
  @override
  @JsonKey(name: 'is_private_chat')
  int? get isPrivateChat;
  @override
  dynamic get group;
  @override
  User? get user;
  @override
  List<LikeType>? get likeType;
  @override
  dynamic get follow;
  @override
  dynamic get poll;
  @override
  UserLike? get like;
  @override
  dynamic get savedPosts;
  @override
  List<dynamic>? get comments;
  @override
  Meta? get meta;

  /// Create a copy of PostData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PostDataImplCopyWith<_$PostDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
