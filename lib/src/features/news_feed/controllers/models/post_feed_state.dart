import 'package:ezy_course_app/src/domain/server/post_repository/models/post_data/post_data.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'post_feed_state.g.dart';
part 'post_feed_state.freezed.dart';

@freezed
class PostFeedState with _$PostFeedState {
  const factory PostFeedState({
    required bool isLoading,
    required List<int> fetchedIdList,
    required List<PostData> dataList,
  }) = _PostFeedState;

  factory PostFeedState.fromJson(Map<String, Object?> json) =>
      _$PostFeedStateFromJson(json);
}
