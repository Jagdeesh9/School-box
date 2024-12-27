class ApiUrl {
  // Private constructor to prevent instantiation
  ApiUrl._();

  // Base URL of your API
  static const String baseUrl = "https://schoolbox.ilikasofttech.com/api";

  // Endpoint paths
  static const String loginWithPasswordUrl = "login";
  static const String register = "register";
  static const String getUserProfile = "user/profile";
  static const String updateUserProfile = "user/update";

  // Add more endpoints as needed

  /// Constructs the full URL for a given endpoint.
  ///
  /// If [endpoint] is null or empty, it returns the [baseUrl].
  /// Ensures that there is exactly one '/' between [baseUrl] and [endpoint].

  static String getUrl(String? endpoint) {
    if (endpoint == null || endpoint.isEmpty) {
      return baseUrl;
    }

    // Remove any leading '/' from the endpoint to prevent double slashes
    final sanitizedEndpoint = endpoint.startsWith('/') ? endpoint.substring(1) : endpoint;

    // Ensure [baseUrl] ends with '/'
    final sanitizedBaseUrl = baseUrl.endsWith('/') ? baseUrl : '$baseUrl/';

    return '$sanitizedBaseUrl$sanitizedEndpoint';
  }

  /// Constructs a full URL with query parameters.
  ///
  /// [queryParams] is a map of query parameter keys and values.
  static String getUrlWithParams(String? endpoint, {Map<String, dynamic>? queryParams}) {
    final url = getUrl(endpoint);
    if (queryParams == null || queryParams.isEmpty) {
      return url;
    }

    final uri = Uri.parse(url).replace(
        queryParameters: queryParams.map(
      (key, value) => MapEntry(key, value.toString()),
    ));

    return uri.toString();
  }
}
