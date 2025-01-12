class APIConfig {
  const APIConfig._();
  static String baseURL = "https://iap.ezycourse.com/api/app/teacher";
  static String loginBaseURL = "https://ezycourse.com/api/app/student";

  static String login = "/auth/login";
  static String post = "/community/getFeed?status=feed";
  static String like = "/community/createLike";
  static String createPost = "/community/createFeedWithUpload";
  static String placeholderImageLink =
      "https://letcheck.b-cdn.net/human_icon.png";
}
