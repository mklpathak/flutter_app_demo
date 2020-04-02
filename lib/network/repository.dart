import 'package:demo/model/feeds.dart';
import 'package:demo/network/api_provider.dart';

class Repository {
  final apiProvider = ApiProvider();

  Future<RedditFeed> fetchHotFeeds() => apiProvider.fetchHotFeeds();

  Future<RedditFeed> fetchNewFeeds() => apiProvider.fetchNewFeeds();
}
