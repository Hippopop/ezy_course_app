import 'package:freezed_annotation/freezed_annotation.dart';

import '../meta.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  factory User({
    int? id,
    @JsonKey(name: 'school_id') int? schoolId,
    @JsonKey(name: 'can_write_doc') int? canWriteDoc,
    @JsonKey(name: 'full_name') String? fullName,
    @JsonKey(name: 'is_verified') String? isVerified,
    @JsonKey(name: 'is_approved') int? isApproved,
    @JsonKey(name: 'user_type') String? userType,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'is_private_chat') int? isPrivateChat,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'profile_pic') String? profilePic,
    @JsonKey(name: 'is_online') String? isOnline,
    dynamic bio,
    @JsonKey(name: 'user_id') dynamic userId,
    @JsonKey(name: 'social_auth_provider') dynamic socialAuthProvider,
    @JsonKey(name: 'last_login') DateTime? lastLogin,
    dynamic status,
    @JsonKey(name: 'is_suspended') int? isSuspended,
    @JsonKey(name: 'pause_date') dynamic pauseDate,
    @JsonKey(name: 'expire_date') dynamic expireDate,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'order_id') dynamic orderId,
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'custom_fields') dynamic customFields,
    @JsonKey(name: 'is_allow_chat') dynamic isAllowChat,
    @JsonKey(name: 'ref_id') dynamic refId,
    @JsonKey(name: 'ref_commission_level_1') int? refCommissionLevel1,
    @JsonKey(name: 'ref_is_cookie_destroy_after_checkout')
    int? refIsCookieDestroyAfterCheckout,
    @JsonKey(name: 'ref_commission_level_2') int? refCommissionLevel2,
    @JsonKey(name: 'parent_ref_id') dynamic parentRefId,
    @JsonKey(name: 'ref_com_l1_value_type') String? refComL1ValueType,
    @JsonKey(name: 'ref_com_l2_value_type') String? refComL2ValueType,
    @JsonKey(name: 'ref_allow_linked_membership') int? refAllowLinkedMembership,
    @JsonKey(name: 'is_manual') int? isManual,
    @JsonKey(name: 'referred_by') dynamic referredBy,
    @JsonKey(name: 'is_eligible_for_special_offer')
    int? isEligibleForSpecialOffer,
    @JsonKey(name: 'is_founding') dynamic isFounding,
    @JsonKey(name: 'plan_id') dynamic planId,
    @JsonKey(name: 'is_2fa_enabled') int? is2faEnabled,
    dynamic webpushsub,
    @JsonKey(name: 'is_force_logout_enabled') int? isForceLogoutEnabled,
    @JsonKey(name: 'payout_paypal_email') dynamic payoutPaypalEmail,
    @JsonKey(name: 'ref_phy_commission_level_1') int? refPhyCommissionLevel1,
    @JsonKey(name: 'is_manual_private_chat') int? isManualPrivateChat,
    @JsonKey(name: 'ref_phy_com_l1_value_type') String? refPhyComL1ValueType,
    @JsonKey(name: 'site_owner_user_id') dynamic siteOwnerUserId,
    @JsonKey(name: 'ezy_affiliate_user_id') dynamic ezyAffiliateUserId,
    @JsonKey(name: 'stripe_payout_enabled') int? stripePayoutEnabled,
    @JsonKey(name: 'signup_method') String? signupMethod,
    @JsonKey(name: 'deleted_at') dynamic deletedAt,
    @JsonKey(name: 'signup_custom_fields_responses')
    dynamic signupCustomFieldsResponses,
    @JsonKey(name: 'deleted_by') dynamic deletedBy,
    @JsonKey(name: 'ref_phy_commission_level_2') int? refPhyCommissionLevel2,
    @JsonKey(name: 'ref_phy_com_l2_value_type') String? refPhyComL2ValueType,
    @JsonKey(name: 'total_noti_count') int? totalNotiCount,
    @JsonKey(name: 'total_chat_noti_count') int? totalChatNotiCount,
    @JsonKey(name: 'about_me') dynamic aboutMe,
    @JsonKey(name: 'total_sell') String? totalSell,
    @JsonKey(name: 'seller_unique_name') dynamic sellerUniqueName,
    @JsonKey(name: 'globe_link') dynamic globeLink,
    @JsonKey(name: 'youtube_link') dynamic youtubeLink,
    @JsonKey(name: 'linkedin_link') dynamic linkedinLink,
    @JsonKey(name: 'facebook_link') dynamic facebookLink,
    @JsonKey(name: 'seller_title') dynamic sellerTitle,
    @JsonKey(name: 'cover_pic') dynamic coverPic,
    @JsonKey(name: 'affiliate_coupon_code') dynamic affiliateCouponCode,
    @JsonKey(name: 'affiliate_coupon_uuid') dynamic affiliateCouponUuid,
    Meta? meta,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
