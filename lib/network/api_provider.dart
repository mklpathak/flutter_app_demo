import 'dart:io';

import 'package:demo/model/feeds.dart';
import 'package:dio/dio.dart';

class ApiProvider {
  final Dio _dioClient = Dio(BaseOptions(
    baseUrl: "https://www.reddit.com/",
  ));

  ApiProvider() {
    _dioClient.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
//
      return options; //continue
    }, onResponse: (Response response) async {
      return response; // continue
    }, onError: (DioError e) async {
      return e; //continue
    }));

//    _dioClient.interceptors.add(PrettyDioLogger(
//        requestHeader: false,
//        requestBody: true,
//        responseBody: true,
//        responseHeader: false,
//        error: true,
//        compact: true,
//        maxWidth: 90));
  }
  Future<RedditFeed> fetchHotFeeds() async {
    Response response = await _dioClient.get("hot.json");

    if (response.statusCode == HttpStatus.ok) {
      // return response.data['data']['children'];
      return RedditFeed.fromMap(response.data);
    } else {
      return Future.error(response);
    }
  }

  Future<RedditFeed> fetchNewFeeds() async {
    Response response = await _dioClient.get("new.json");
    if (response.statusCode == HttpStatus.ok) {
      return RedditFeed.fromMap(response.data);
    } else {
      return Future.error(response);
    }
  }
}
