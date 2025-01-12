// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'community.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Community _$CommunityFromJson(Map<String, dynamic> json) {
  return _Community.fromJson(json);
}

/// @nodoc
mixin _$Community {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_name')
  String? get groupName => throw _privateConstructorUsedError;
  @JsonKey(name: 'school_id')
  int? get schoolId => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_pic')
  String? get profilePic => throw _privateConstructorUsedError;
  @JsonKey(name: 'approval_required')
  int? get approvalRequired => throw _privateConstructorUsedError;
  String? get cover => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  @JsonKey(name: 'after_checkout')
  dynamic get afterCheckout => throw _privateConstructorUsedError;
  String? get about => throw _privateConstructorUsedError;
  dynamic get country => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_privacy')
  String? get groupPrivacy => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_chat')
  int? get allowChat => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_members')
  int? get showMembers => throw _privateConstructorUsedError;
  @JsonKey(name: 'show_members_type')
  int? get showMembersType => throw _privateConstructorUsedError;
  @JsonKey(name: 'pricing_type')
  String? get pricingType => throw _privateConstructorUsedError;
  @JsonKey(name: 'group_visibility')
  String? get groupVisibility => throw _privateConstructorUsedError;
  @JsonKey(name: 'short_description')
  String? get shortDescription => throw _privateConstructorUsedError;
  String? get slug => throw _privateConstructorUsedError;
  @JsonKey(name: 'tax_code')
  dynamic get taxCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'allow_site_admin')
  int? get allowSiteAdmin => throw _privateConstructorUsedError;
  @JsonKey(name: 'approval_status')
  dynamic get approvalStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'seller_id')
  dynamic get sellerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_count')
  int? get memberCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'space_count')
  int? get spaceCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_count')
  int? get feedCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'feed_last_row_id')
  int? get feedLastRowId => throw _privateConstructorUsedError;
  @JsonKey(name: 'space_last_row_id')
  int? get spaceLastRowId => throw _privateConstructorUsedError;
  @JsonKey(name: 'member_last_row_id')
  dynamic get memberLastRowId => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_migrated')
  int? get isMigrated => throw _privateConstructorUsedError;
  @JsonKey(name: 'community_tab_setting')
  String? get communityTabSetting => throw _privateConstructorUsedError;
  @JsonKey(name: 'after_checkout_external')
  dynamic get afterCheckoutExternal => throw _privateConstructorUsedError;
  @JsonKey(name: 'list_on_ezycourse_status')
  int? get listOnEzycourseStatus => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  /// Serializes this Community to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CommunityCopyWith<Community> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommunityCopyWith<$Res> {
  factory $CommunityCopyWith(Community value, $Res Function(Community) then) =
      _$CommunityCopyWithImpl<$Res, Community>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'group_name') String? groupName,
      @JsonKey(name: 'school_id') int? schoolId,
      @JsonKey(name: 'profile_pic') String? profilePic,
      @JsonKey(name: 'approval_required') int? approvalRequired,
      String? cover,
      String? status,
      @JsonKey(name: 'after_checkout') dynamic afterCheckout,
      String? about,
      dynamic country,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'group_privacy') String? groupPrivacy,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'allow_chat') int? allowChat,
      @JsonKey(name: 'show_members') int? showMembers,
      @JsonKey(name: 'show_members_type') int? showMembersType,
      @JsonKey(name: 'pricing_type') String? pricingType,
      @JsonKey(name: 'group_visibility') String? groupVisibility,
      @JsonKey(name: 'short_description') String? shortDescription,
      String? slug,
      @JsonKey(name: 'tax_code') dynamic taxCode,
      @JsonKey(name: 'allow_site_admin') int? allowSiteAdmin,
      @JsonKey(name: 'approval_status') dynamic approvalStatus,
      @JsonKey(name: 'seller_id') dynamic sellerId,
      @JsonKey(name: 'member_count') int? memberCount,
      @JsonKey(name: 'space_count') int? spaceCount,
      @JsonKey(name: 'feed_count') int? feedCount,
      @JsonKey(name: 'feed_last_row_id') int? feedLastRowId,
      @JsonKey(name: 'space_last_row_id') int? spaceLastRowId,
      @JsonKey(name: 'member_last_row_id') dynamic memberLastRowId,
      @JsonKey(name: 'is_migrated') int? isMigrated,
      @JsonKey(name: 'community_tab_setting') String? communityTabSetting,
      @JsonKey(name: 'after_checkout_external') dynamic afterCheckoutExternal,
      @JsonKey(name: 'list_on_ezycourse_status') int? listOnEzycourseStatus,
      Meta? meta});
}

/// @nodoc
class _$CommunityCopyWithImpl<$Res, $Val extends Community>
    implements $CommunityCopyWith<$Res> {
  _$CommunityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupName = freezed,
    Object? schoolId = freezed,
    Object? profilePic = freezed,
    Object? approvalRequired = freezed,
    Object? cover = freezed,
    Object? status = freezed,
    Object? afterCheckout = freezed,
    Object? about = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? groupPrivacy = freezed,
    Object? userId = freezed,
    Object? allowChat = freezed,
    Object? showMembers = freezed,
    Object? showMembersType = freezed,
    Object? pricingType = freezed,
    Object? groupVisibility = freezed,
    Object? shortDescription = freezed,
    Object? slug = freezed,
    Object? taxCode = freezed,
    Object? allowSiteAdmin = freezed,
    Object? approvalStatus = freezed,
    Object? sellerId = freezed,
    Object? memberCount = freezed,
    Object? spaceCount = freezed,
    Object? feedCount = freezed,
    Object? feedLastRowId = freezed,
    Object? spaceLastRowId = freezed,
    Object? memberLastRowId = freezed,
    Object? isMigrated = freezed,
    Object? communityTabSetting = freezed,
    Object? afterCheckoutExternal = freezed,
    Object? listOnEzycourseStatus = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalRequired: freezed == approvalRequired
          ? _value.approvalRequired
          : approvalRequired // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      afterCheckout: freezed == afterCheckout
          ? _value.afterCheckout
          : afterCheckout // ignore: cast_nullable_to_non_nullable
              as dynamic,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      groupPrivacy: freezed == groupPrivacy
          ? _value.groupPrivacy
          : groupPrivacy // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      allowChat: freezed == allowChat
          ? _value.allowChat
          : allowChat // ignore: cast_nullable_to_non_nullable
              as int?,
      showMembers: freezed == showMembers
          ? _value.showMembers
          : showMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      showMembersType: freezed == showMembersType
          ? _value.showMembersType
          : showMembersType // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingType: freezed == pricingType
          ? _value.pricingType
          : pricingType // ignore: cast_nullable_to_non_nullable
              as String?,
      groupVisibility: freezed == groupVisibility
          ? _value.groupVisibility
          : groupVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      taxCode: freezed == taxCode
          ? _value.taxCode
          : taxCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      allowSiteAdmin: freezed == allowSiteAdmin
          ? _value.allowSiteAdmin
          : allowSiteAdmin // ignore: cast_nullable_to_non_nullable
              as int?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sellerId: freezed == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      memberCount: freezed == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      spaceCount: freezed == spaceCount
          ? _value.spaceCount
          : spaceCount // ignore: cast_nullable_to_non_nullable
              as int?,
      feedCount: freezed == feedCount
          ? _value.feedCount
          : feedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      feedLastRowId: freezed == feedLastRowId
          ? _value.feedLastRowId
          : feedLastRowId // ignore: cast_nullable_to_non_nullable
              as int?,
      spaceLastRowId: freezed == spaceLastRowId
          ? _value.spaceLastRowId
          : spaceLastRowId // ignore: cast_nullable_to_non_nullable
              as int?,
      memberLastRowId: freezed == memberLastRowId
          ? _value.memberLastRowId
          : memberLastRowId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isMigrated: freezed == isMigrated
          ? _value.isMigrated
          : isMigrated // ignore: cast_nullable_to_non_nullable
              as int?,
      communityTabSetting: freezed == communityTabSetting
          ? _value.communityTabSetting
          : communityTabSetting // ignore: cast_nullable_to_non_nullable
              as String?,
      afterCheckoutExternal: freezed == afterCheckoutExternal
          ? _value.afterCheckoutExternal
          : afterCheckoutExternal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      listOnEzycourseStatus: freezed == listOnEzycourseStatus
          ? _value.listOnEzycourseStatus
          : listOnEzycourseStatus // ignore: cast_nullable_to_non_nullable
              as int?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommunityImplCopyWith<$Res>
    implements $CommunityCopyWith<$Res> {
  factory _$$CommunityImplCopyWith(
          _$CommunityImpl value, $Res Function(_$CommunityImpl) then) =
      __$$CommunityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'group_name') String? groupName,
      @JsonKey(name: 'school_id') int? schoolId,
      @JsonKey(name: 'profile_pic') String? profilePic,
      @JsonKey(name: 'approval_required') int? approvalRequired,
      String? cover,
      String? status,
      @JsonKey(name: 'after_checkout') dynamic afterCheckout,
      String? about,
      dynamic country,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'group_privacy') String? groupPrivacy,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'allow_chat') int? allowChat,
      @JsonKey(name: 'show_members') int? showMembers,
      @JsonKey(name: 'show_members_type') int? showMembersType,
      @JsonKey(name: 'pricing_type') String? pricingType,
      @JsonKey(name: 'group_visibility') String? groupVisibility,
      @JsonKey(name: 'short_description') String? shortDescription,
      String? slug,
      @JsonKey(name: 'tax_code') dynamic taxCode,
      @JsonKey(name: 'allow_site_admin') int? allowSiteAdmin,
      @JsonKey(name: 'approval_status') dynamic approvalStatus,
      @JsonKey(name: 'seller_id') dynamic sellerId,
      @JsonKey(name: 'member_count') int? memberCount,
      @JsonKey(name: 'space_count') int? spaceCount,
      @JsonKey(name: 'feed_count') int? feedCount,
      @JsonKey(name: 'feed_last_row_id') int? feedLastRowId,
      @JsonKey(name: 'space_last_row_id') int? spaceLastRowId,
      @JsonKey(name: 'member_last_row_id') dynamic memberLastRowId,
      @JsonKey(name: 'is_migrated') int? isMigrated,
      @JsonKey(name: 'community_tab_setting') String? communityTabSetting,
      @JsonKey(name: 'after_checkout_external') dynamic afterCheckoutExternal,
      @JsonKey(name: 'list_on_ezycourse_status') int? listOnEzycourseStatus,
      Meta? meta});
}

/// @nodoc
class __$$CommunityImplCopyWithImpl<$Res>
    extends _$CommunityCopyWithImpl<$Res, _$CommunityImpl>
    implements _$$CommunityImplCopyWith<$Res> {
  __$$CommunityImplCopyWithImpl(
      _$CommunityImpl _value, $Res Function(_$CommunityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? groupName = freezed,
    Object? schoolId = freezed,
    Object? profilePic = freezed,
    Object? approvalRequired = freezed,
    Object? cover = freezed,
    Object? status = freezed,
    Object? afterCheckout = freezed,
    Object? about = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? groupPrivacy = freezed,
    Object? userId = freezed,
    Object? allowChat = freezed,
    Object? showMembers = freezed,
    Object? showMembersType = freezed,
    Object? pricingType = freezed,
    Object? groupVisibility = freezed,
    Object? shortDescription = freezed,
    Object? slug = freezed,
    Object? taxCode = freezed,
    Object? allowSiteAdmin = freezed,
    Object? approvalStatus = freezed,
    Object? sellerId = freezed,
    Object? memberCount = freezed,
    Object? spaceCount = freezed,
    Object? feedCount = freezed,
    Object? feedLastRowId = freezed,
    Object? spaceLastRowId = freezed,
    Object? memberLastRowId = freezed,
    Object? isMigrated = freezed,
    Object? communityTabSetting = freezed,
    Object? afterCheckoutExternal = freezed,
    Object? listOnEzycourseStatus = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$CommunityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
      schoolId: freezed == schoolId
          ? _value.schoolId
          : schoolId // ignore: cast_nullable_to_non_nullable
              as int?,
      profilePic: freezed == profilePic
          ? _value.profilePic
          : profilePic // ignore: cast_nullable_to_non_nullable
              as String?,
      approvalRequired: freezed == approvalRequired
          ? _value.approvalRequired
          : approvalRequired // ignore: cast_nullable_to_non_nullable
              as int?,
      cover: freezed == cover
          ? _value.cover
          : cover // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      afterCheckout: freezed == afterCheckout
          ? _value.afterCheckout
          : afterCheckout // ignore: cast_nullable_to_non_nullable
              as dynamic,
      about: freezed == about
          ? _value.about
          : about // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      groupPrivacy: freezed == groupPrivacy
          ? _value.groupPrivacy
          : groupPrivacy // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      allowChat: freezed == allowChat
          ? _value.allowChat
          : allowChat // ignore: cast_nullable_to_non_nullable
              as int?,
      showMembers: freezed == showMembers
          ? _value.showMembers
          : showMembers // ignore: cast_nullable_to_non_nullable
              as int?,
      showMembersType: freezed == showMembersType
          ? _value.showMembersType
          : showMembersType // ignore: cast_nullable_to_non_nullable
              as int?,
      pricingType: freezed == pricingType
          ? _value.pricingType
          : pricingType // ignore: cast_nullable_to_non_nullable
              as String?,
      groupVisibility: freezed == groupVisibility
          ? _value.groupVisibility
          : groupVisibility // ignore: cast_nullable_to_non_nullable
              as String?,
      shortDescription: freezed == shortDescription
          ? _value.shortDescription
          : shortDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      slug: freezed == slug
          ? _value.slug
          : slug // ignore: cast_nullable_to_non_nullable
              as String?,
      taxCode: freezed == taxCode
          ? _value.taxCode
          : taxCode // ignore: cast_nullable_to_non_nullable
              as dynamic,
      allowSiteAdmin: freezed == allowSiteAdmin
          ? _value.allowSiteAdmin
          : allowSiteAdmin // ignore: cast_nullable_to_non_nullable
              as int?,
      approvalStatus: freezed == approvalStatus
          ? _value.approvalStatus
          : approvalStatus // ignore: cast_nullable_to_non_nullable
              as dynamic,
      sellerId: freezed == sellerId
          ? _value.sellerId
          : sellerId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      memberCount: freezed == memberCount
          ? _value.memberCount
          : memberCount // ignore: cast_nullable_to_non_nullable
              as int?,
      spaceCount: freezed == spaceCount
          ? _value.spaceCount
          : spaceCount // ignore: cast_nullable_to_non_nullable
              as int?,
      feedCount: freezed == feedCount
          ? _value.feedCount
          : feedCount // ignore: cast_nullable_to_non_nullable
              as int?,
      feedLastRowId: freezed == feedLastRowId
          ? _value.feedLastRowId
          : feedLastRowId // ignore: cast_nullable_to_non_nullable
              as int?,
      spaceLastRowId: freezed == spaceLastRowId
          ? _value.spaceLastRowId
          : spaceLastRowId // ignore: cast_nullable_to_non_nullable
              as int?,
      memberLastRowId: freezed == memberLastRowId
          ? _value.memberLastRowId
          : memberLastRowId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      isMigrated: freezed == isMigrated
          ? _value.isMigrated
          : isMigrated // ignore: cast_nullable_to_non_nullable
              as int?,
      communityTabSetting: freezed == communityTabSetting
          ? _value.communityTabSetting
          : communityTabSetting // ignore: cast_nullable_to_non_nullable
              as String?,
      afterCheckoutExternal: freezed == afterCheckoutExternal
          ? _value.afterCheckoutExternal
          : afterCheckoutExternal // ignore: cast_nullable_to_non_nullable
              as dynamic,
      listOnEzycourseStatus: freezed == listOnEzycourseStatus
          ? _value.listOnEzycourseStatus
          : listOnEzycourseStatus // ignore: cast_nullable_to_non_nullable
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
class _$CommunityImpl implements _Community {
  _$CommunityImpl(
      {this.id,
      @JsonKey(name: 'group_name') this.groupName,
      @JsonKey(name: 'school_id') this.schoolId,
      @JsonKey(name: 'profile_pic') this.profilePic,
      @JsonKey(name: 'approval_required') this.approvalRequired,
      this.cover,
      this.status,
      @JsonKey(name: 'after_checkout') this.afterCheckout,
      this.about,
      this.country,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'group_privacy') this.groupPrivacy,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'allow_chat') this.allowChat,
      @JsonKey(name: 'show_members') this.showMembers,
      @JsonKey(name: 'show_members_type') this.showMembersType,
      @JsonKey(name: 'pricing_type') this.pricingType,
      @JsonKey(name: 'group_visibility') this.groupVisibility,
      @JsonKey(name: 'short_description') this.shortDescription,
      this.slug,
      @JsonKey(name: 'tax_code') this.taxCode,
      @JsonKey(name: 'allow_site_admin') this.allowSiteAdmin,
      @JsonKey(name: 'approval_status') this.approvalStatus,
      @JsonKey(name: 'seller_id') this.sellerId,
      @JsonKey(name: 'member_count') this.memberCount,
      @JsonKey(name: 'space_count') this.spaceCount,
      @JsonKey(name: 'feed_count') this.feedCount,
      @JsonKey(name: 'feed_last_row_id') this.feedLastRowId,
      @JsonKey(name: 'space_last_row_id') this.spaceLastRowId,
      @JsonKey(name: 'member_last_row_id') this.memberLastRowId,
      @JsonKey(name: 'is_migrated') this.isMigrated,
      @JsonKey(name: 'community_tab_setting') this.communityTabSetting,
      @JsonKey(name: 'after_checkout_external') this.afterCheckoutExternal,
      @JsonKey(name: 'list_on_ezycourse_status') this.listOnEzycourseStatus,
      this.meta});

  factory _$CommunityImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommunityImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'group_name')
  final String? groupName;
  @override
  @JsonKey(name: 'school_id')
  final int? schoolId;
  @override
  @JsonKey(name: 'profile_pic')
  final String? profilePic;
  @override
  @JsonKey(name: 'approval_required')
  final int? approvalRequired;
  @override
  final String? cover;
  @override
  final String? status;
  @override
  @JsonKey(name: 'after_checkout')
  final dynamic afterCheckout;
  @override
  final String? about;
  @override
  final dynamic country;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'group_privacy')
  final String? groupPrivacy;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'allow_chat')
  final int? allowChat;
  @override
  @JsonKey(name: 'show_members')
  final int? showMembers;
  @override
  @JsonKey(name: 'show_members_type')
  final int? showMembersType;
  @override
  @JsonKey(name: 'pricing_type')
  final String? pricingType;
  @override
  @JsonKey(name: 'group_visibility')
  final String? groupVisibility;
  @override
  @JsonKey(name: 'short_description')
  final String? shortDescription;
  @override
  final String? slug;
  @override
  @JsonKey(name: 'tax_code')
  final dynamic taxCode;
  @override
  @JsonKey(name: 'allow_site_admin')
  final int? allowSiteAdmin;
  @override
  @JsonKey(name: 'approval_status')
  final dynamic approvalStatus;
  @override
  @JsonKey(name: 'seller_id')
  final dynamic sellerId;
  @override
  @JsonKey(name: 'member_count')
  final int? memberCount;
  @override
  @JsonKey(name: 'space_count')
  final int? spaceCount;
  @override
  @JsonKey(name: 'feed_count')
  final int? feedCount;
  @override
  @JsonKey(name: 'feed_last_row_id')
  final int? feedLastRowId;
  @override
  @JsonKey(name: 'space_last_row_id')
  final int? spaceLastRowId;
  @override
  @JsonKey(name: 'member_last_row_id')
  final dynamic memberLastRowId;
  @override
  @JsonKey(name: 'is_migrated')
  final int? isMigrated;
  @override
  @JsonKey(name: 'community_tab_setting')
  final String? communityTabSetting;
  @override
  @JsonKey(name: 'after_checkout_external')
  final dynamic afterCheckoutExternal;
  @override
  @JsonKey(name: 'list_on_ezycourse_status')
  final int? listOnEzycourseStatus;
  @override
  final Meta? meta;

  @override
  String toString() {
    return 'Community(id: $id, groupName: $groupName, schoolId: $schoolId, profilePic: $profilePic, approvalRequired: $approvalRequired, cover: $cover, status: $status, afterCheckout: $afterCheckout, about: $about, country: $country, createdAt: $createdAt, updatedAt: $updatedAt, groupPrivacy: $groupPrivacy, userId: $userId, allowChat: $allowChat, showMembers: $showMembers, showMembersType: $showMembersType, pricingType: $pricingType, groupVisibility: $groupVisibility, shortDescription: $shortDescription, slug: $slug, taxCode: $taxCode, allowSiteAdmin: $allowSiteAdmin, approvalStatus: $approvalStatus, sellerId: $sellerId, memberCount: $memberCount, spaceCount: $spaceCount, feedCount: $feedCount, feedLastRowId: $feedLastRowId, spaceLastRowId: $spaceLastRowId, memberLastRowId: $memberLastRowId, isMigrated: $isMigrated, communityTabSetting: $communityTabSetting, afterCheckoutExternal: $afterCheckoutExternal, listOnEzycourseStatus: $listOnEzycourseStatus, meta: $meta)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommunityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName) &&
            (identical(other.schoolId, schoolId) ||
                other.schoolId == schoolId) &&
            (identical(other.profilePic, profilePic) ||
                other.profilePic == profilePic) &&
            (identical(other.approvalRequired, approvalRequired) ||
                other.approvalRequired == approvalRequired) &&
            (identical(other.cover, cover) || other.cover == cover) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other.afterCheckout, afterCheckout) &&
            (identical(other.about, about) || other.about == about) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.groupPrivacy, groupPrivacy) ||
                other.groupPrivacy == groupPrivacy) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.allowChat, allowChat) ||
                other.allowChat == allowChat) &&
            (identical(other.showMembers, showMembers) ||
                other.showMembers == showMembers) &&
            (identical(other.showMembersType, showMembersType) ||
                other.showMembersType == showMembersType) &&
            (identical(other.pricingType, pricingType) ||
                other.pricingType == pricingType) &&
            (identical(other.groupVisibility, groupVisibility) ||
                other.groupVisibility == groupVisibility) &&
            (identical(other.shortDescription, shortDescription) ||
                other.shortDescription == shortDescription) &&
            (identical(other.slug, slug) || other.slug == slug) &&
            const DeepCollectionEquality().equals(other.taxCode, taxCode) &&
            (identical(other.allowSiteAdmin, allowSiteAdmin) ||
                other.allowSiteAdmin == allowSiteAdmin) &&
            const DeepCollectionEquality()
                .equals(other.approvalStatus, approvalStatus) &&
            const DeepCollectionEquality().equals(other.sellerId, sellerId) &&
            (identical(other.memberCount, memberCount) ||
                other.memberCount == memberCount) &&
            (identical(other.spaceCount, spaceCount) ||
                other.spaceCount == spaceCount) &&
            (identical(other.feedCount, feedCount) ||
                other.feedCount == feedCount) &&
            (identical(other.feedLastRowId, feedLastRowId) ||
                other.feedLastRowId == feedLastRowId) &&
            (identical(other.spaceLastRowId, spaceLastRowId) ||
                other.spaceLastRowId == spaceLastRowId) &&
            const DeepCollectionEquality()
                .equals(other.memberLastRowId, memberLastRowId) &&
            (identical(other.isMigrated, isMigrated) ||
                other.isMigrated == isMigrated) &&
            (identical(other.communityTabSetting, communityTabSetting) ||
                other.communityTabSetting == communityTabSetting) &&
            const DeepCollectionEquality()
                .equals(other.afterCheckoutExternal, afterCheckoutExternal) &&
            (identical(other.listOnEzycourseStatus, listOnEzycourseStatus) ||
                other.listOnEzycourseStatus == listOnEzycourseStatus) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        groupName,
        schoolId,
        profilePic,
        approvalRequired,
        cover,
        status,
        const DeepCollectionEquality().hash(afterCheckout),
        about,
        const DeepCollectionEquality().hash(country),
        createdAt,
        updatedAt,
        groupPrivacy,
        userId,
        allowChat,
        showMembers,
        showMembersType,
        pricingType,
        groupVisibility,
        shortDescription,
        slug,
        const DeepCollectionEquality().hash(taxCode),
        allowSiteAdmin,
        const DeepCollectionEquality().hash(approvalStatus),
        const DeepCollectionEquality().hash(sellerId),
        memberCount,
        spaceCount,
        feedCount,
        feedLastRowId,
        spaceLastRowId,
        const DeepCollectionEquality().hash(memberLastRowId),
        isMigrated,
        communityTabSetting,
        const DeepCollectionEquality().hash(afterCheckoutExternal),
        listOnEzycourseStatus,
        meta
      ]);

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommunityImplCopyWith<_$CommunityImpl> get copyWith =>
      __$$CommunityImplCopyWithImpl<_$CommunityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CommunityImplToJson(
      this,
    );
  }
}

abstract class _Community implements Community {
  factory _Community(
      {final int? id,
      @JsonKey(name: 'group_name') final String? groupName,
      @JsonKey(name: 'school_id') final int? schoolId,
      @JsonKey(name: 'profile_pic') final String? profilePic,
      @JsonKey(name: 'approval_required') final int? approvalRequired,
      final String? cover,
      final String? status,
      @JsonKey(name: 'after_checkout') final dynamic afterCheckout,
      final String? about,
      final dynamic country,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'group_privacy') final String? groupPrivacy,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'allow_chat') final int? allowChat,
      @JsonKey(name: 'show_members') final int? showMembers,
      @JsonKey(name: 'show_members_type') final int? showMembersType,
      @JsonKey(name: 'pricing_type') final String? pricingType,
      @JsonKey(name: 'group_visibility') final String? groupVisibility,
      @JsonKey(name: 'short_description') final String? shortDescription,
      final String? slug,
      @JsonKey(name: 'tax_code') final dynamic taxCode,
      @JsonKey(name: 'allow_site_admin') final int? allowSiteAdmin,
      @JsonKey(name: 'approval_status') final dynamic approvalStatus,
      @JsonKey(name: 'seller_id') final dynamic sellerId,
      @JsonKey(name: 'member_count') final int? memberCount,
      @JsonKey(name: 'space_count') final int? spaceCount,
      @JsonKey(name: 'feed_count') final int? feedCount,
      @JsonKey(name: 'feed_last_row_id') final int? feedLastRowId,
      @JsonKey(name: 'space_last_row_id') final int? spaceLastRowId,
      @JsonKey(name: 'member_last_row_id') final dynamic memberLastRowId,
      @JsonKey(name: 'is_migrated') final int? isMigrated,
      @JsonKey(name: 'community_tab_setting') final String? communityTabSetting,
      @JsonKey(name: 'after_checkout_external')
      final dynamic afterCheckoutExternal,
      @JsonKey(name: 'list_on_ezycourse_status')
      final int? listOnEzycourseStatus,
      final Meta? meta}) = _$CommunityImpl;

  factory _Community.fromJson(Map<String, dynamic> json) =
      _$CommunityImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'group_name')
  String? get groupName;
  @override
  @JsonKey(name: 'school_id')
  int? get schoolId;
  @override
  @JsonKey(name: 'profile_pic')
  String? get profilePic;
  @override
  @JsonKey(name: 'approval_required')
  int? get approvalRequired;
  @override
  String? get cover;
  @override
  String? get status;
  @override
  @JsonKey(name: 'after_checkout')
  dynamic get afterCheckout;
  @override
  String? get about;
  @override
  dynamic get country;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'group_privacy')
  String? get groupPrivacy;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'allow_chat')
  int? get allowChat;
  @override
  @JsonKey(name: 'show_members')
  int? get showMembers;
  @override
  @JsonKey(name: 'show_members_type')
  int? get showMembersType;
  @override
  @JsonKey(name: 'pricing_type')
  String? get pricingType;
  @override
  @JsonKey(name: 'group_visibility')
  String? get groupVisibility;
  @override
  @JsonKey(name: 'short_description')
  String? get shortDescription;
  @override
  String? get slug;
  @override
  @JsonKey(name: 'tax_code')
  dynamic get taxCode;
  @override
  @JsonKey(name: 'allow_site_admin')
  int? get allowSiteAdmin;
  @override
  @JsonKey(name: 'approval_status')
  dynamic get approvalStatus;
  @override
  @JsonKey(name: 'seller_id')
  dynamic get sellerId;
  @override
  @JsonKey(name: 'member_count')
  int? get memberCount;
  @override
  @JsonKey(name: 'space_count')
  int? get spaceCount;
  @override
  @JsonKey(name: 'feed_count')
  int? get feedCount;
  @override
  @JsonKey(name: 'feed_last_row_id')
  int? get feedLastRowId;
  @override
  @JsonKey(name: 'space_last_row_id')
  int? get spaceLastRowId;
  @override
  @JsonKey(name: 'member_last_row_id')
  dynamic get memberLastRowId;
  @override
  @JsonKey(name: 'is_migrated')
  int? get isMigrated;
  @override
  @JsonKey(name: 'community_tab_setting')
  String? get communityTabSetting;
  @override
  @JsonKey(name: 'after_checkout_external')
  dynamic get afterCheckoutExternal;
  @override
  @JsonKey(name: 'list_on_ezycourse_status')
  int? get listOnEzycourseStatus;
  @override
  Meta? get meta;

  /// Create a copy of Community
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommunityImplCopyWith<_$CommunityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
