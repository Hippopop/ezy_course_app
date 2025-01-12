import 'package:ezy_course_app/src/domain/server/post_repository/models/create_post_response/create_post_response.dart';
import 'package:ezy_course_app/src/domain/server/post_repository/models/user_like_response/user_like_response.dart';
import 'package:ezy_course_app/src/domain/server/source/helpers/request_handler_provider.dart';
import 'package:ezy_course_app/src/features/news_feed/views/widgets/reaction_button.dart';

import '../source/helpers/response_wrapper.dart';
import 'models/post_data/post_data.dart';

abstract class PostRepository {
  final RequestHandler requestHandler;
  const PostRepository({
    required this.requestHandler,
  });

  static List<String> gradientText = [
    "{\"backgroundImage\":\"linear-gradient(45deg, rgb(255, 115, 0) 0%, rgb(255, 0, 234) 100%)\"}",
    "{\"backgroundImage\":\"linear-gradient(135deg, rgb(143, 199, 173), rgb(72, 229, 169))\"}",
    "{\"backgroundImage\":\"linear-gradient(135deg, rgb(116, 167, 126), rgb(24, 175, 78))\"}",
    "{\"backgroundImage\":\"linear-gradient(45deg, rgb(255, 127, 17) 0%, rgb(255, 127, 17) 100%)\"}",
    "{\"backgroundImage\":\"linear-gradient(45deg, rgb(233, 255, 66) 0%, rgb(0, 255, 225) 100%)\"}"
  ];

  Future<ResponseWrapper<List<PostData>>> getPosts({int lastID});

  Future<ResponseWrapper<UserLikeResponse>> userReaction({
    required int feedID,
    required Reaction type,
    required bool isCreate,
  });

  Future<ResponseWrapper<CreatePostResponse>> createPost({
    required String post,
    required int? gradientIndex,
  });
}
