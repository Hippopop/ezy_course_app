// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'community.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommunityImpl _$$CommunityImplFromJson(Map<String, dynamic> json) =>
    _$CommunityImpl(
      id: (json['id'] as num?)?.toInt(),
      groupName: json['group_name'] as String?,
      schoolId: (json['school_id'] as num?)?.toInt(),
      profilePic: json['profile_pic'] as String?,
      approvalRequired: (json['approval_required'] as num?)?.toInt(),
      cover: json['cover'] as String?,
      status: json['status'] as String?,
      afterCheckout: json['after_checkout'],
      about: json['about'] as String?,
      country: json['country'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      groupPrivacy: json['group_privacy'] as String?,
      userId: (json['user_id'] as num?)?.toInt(),
      allowChat: (json['allow_chat'] as num?)?.toInt(),
      showMembers: (json['show_members'] as num?)?.toInt(),
      showMembersType: (json['show_members_type'] as num?)?.toInt(),
      pricingType: json['pricing_type'] as String?,
      groupVisibility: json['group_visibility'] as String?,
      shortDescription: json['short_description'] as String?,
      slug: json['slug'] as String?,
      taxCode: json['tax_code'],
      allowSiteAdmin: (json['allow_site_admin'] as num?)?.toInt(),
      approvalStatus: json['approval_status'],
      sellerId: json['seller_id'],
      memberCount: (json['member_count'] as num?)?.toInt(),
      spaceCount: (json['space_count'] as num?)?.toInt(),
      feedCount: (json['feed_count'] as num?)?.toInt(),
      feedLastRowId: (json['feed_last_row_id'] as num?)?.toInt(),
      spaceLastRowId: (json['space_last_row_id'] as num?)?.toInt(),
      memberLastRowId: json['member_last_row_id'],
      isMigrated: (json['is_migrated'] as num?)?.toInt(),
      communityTabSetting: json['community_tab_setting'] as String?,
      afterCheckoutExternal: json['after_checkout_external'],
      listOnEzycourseStatus:
          (json['list_on_ezycourse_status'] as num?)?.toInt(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$CommunityImplToJson(_$CommunityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'group_name': instance.groupName,
      'school_id': instance.schoolId,
      'profile_pic': instance.profilePic,
      'approval_required': instance.approvalRequired,
      'cover': instance.cover,
      'status': instance.status,
      'after_checkout': instance.afterCheckout,
      'about': instance.about,
      'country': instance.country,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'group_privacy': instance.groupPrivacy,
      'user_id': instance.userId,
      'allow_chat': instance.allowChat,
      'show_members': instance.showMembers,
      'show_members_type': instance.showMembersType,
      'pricing_type': instance.pricingType,
      'group_visibility': instance.groupVisibility,
      'short_description': instance.shortDescription,
      'slug': instance.slug,
      'tax_code': instance.taxCode,
      'allow_site_admin': instance.allowSiteAdmin,
      'approval_status': instance.approvalStatus,
      'seller_id': instance.sellerId,
      'member_count': instance.memberCount,
      'space_count': instance.spaceCount,
      'feed_count': instance.feedCount,
      'feed_last_row_id': instance.feedLastRowId,
      'space_last_row_id': instance.spaceLastRowId,
      'member_last_row_id': instance.memberLastRowId,
      'is_migrated': instance.isMigrated,
      'community_tab_setting': instance.communityTabSetting,
      'after_checkout_external': instance.afterCheckoutExternal,
      'list_on_ezycourse_status': instance.listOnEzycourseStatus,
      'meta': instance.meta,
    };
