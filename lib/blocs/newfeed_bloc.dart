// Copyright 2019 Joshua de Guzman (https://jmdg.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Copyright 2019 Joshua de Guzman (https://jmdg.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:demo/model/feeds.dart';
import 'package:rxdart/rxdart.dart';

import 'base_bloc.dart';

class NewFeedsBloc extends BaseBloc {
  final hotFeedSubject = BehaviorSubject<RedditFeed>();

  Stream<RedditFeed> get feedsStream => hotFeedSubject.stream;
  bool isLoading = false;

  @override
  dispose() {
    super.dispose();
    hotFeedSubject.close();
  }

  void requestHotFeed() async {
    if (isLoading) return;

    isLoading = true;
    await repository.fetchNewFeeds().then((response) {
      isLoading = false;
      //  feedsFetcher.add(onValue);
      hotFeedSubject.sink.add(response);
    }).catchError((onError) {
      print(onError.toString());
      isLoading = false;
    });
  }
}
