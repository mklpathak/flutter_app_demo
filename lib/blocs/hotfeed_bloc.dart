// Copyright 2019 Joshua de Guzman (https://jmdg.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

// Copyright 2019 Joshua de Guzman (https://jmdg.io). All rights reserved.
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file.

import 'package:demo/database/db_provider_new.dart';
import 'package:demo/model/feeds.dart';
import 'package:rxdart/rxdart.dart';

import 'base_bloc.dart';

class HotFeedBloc extends BaseBloc {
  final hotFeedSubject = BehaviorSubject<List<Child>>();

  final dbHelper = DatabaseHelper.instance;

  Stream<List<Child>> get feedsStream => hotFeedSubject.stream;
  bool isLoading = false;

  @override
  dispose() {
    super.dispose();
    hotFeedSubject.close();
  }

  void requestHotFeed() async {
    if (isLoading) return;

    isLoading = true;
    await repository.fetchHotFeeds().then((response) async {
      isLoading = false;
      //  feedsFetcher.add(onValue);

      // await dbCliend.deleteAll();

      await dbHelper.clearTable();
      response.data.children.forEach((f) async {
        await dbHelper.insert(f);
      });

      //  hotFeedSubject.sink.add(response.data.children);

      await dbHelper.queryAllRows().then((data) {
        hotFeedSubject.sink.add(data);
      });
    }).catchError((onError) {
      print(onError.toString());
      isLoading = false;
    });
  }

  void searchFeed(String data) async {
    await dbHelper.searchData(data).then((data) {
      print("data fetched");
      hotFeedSubject.sink.add(data);
    });
  }
}
