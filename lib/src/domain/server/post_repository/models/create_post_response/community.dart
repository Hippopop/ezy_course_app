import 'package:freezed_annotation/freezed_annotation.dart';

import '../meta.dart';

part 'community.freezed.dart';
part 'community.g.dart';

@freezed
class Community with _$Community {
  factory Community({
    int? id,
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
    Meta? meta,
  }) = _Community;

  factory Community.fromJson(Map<String, dynamic> json) =>
      _$CommunityFromJson(json);
}
