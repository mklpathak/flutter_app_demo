import 'package:demo/blocs/hotfeed_bloc.dart';
import 'package:demo/blocs/search_helper.dart';
import 'package:demo/model/feeds.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HotFeedsPage extends StatefulWidget {
  @override
  _HotFeedsPageState createState() => _HotFeedsPageState();
}

class _HotFeedsPageState extends State<HotFeedsPage>
    with AutomaticKeepAliveClientMixin<HotFeedsPage> {
  HotFeedBloc _feedBloc;

  @override
  void initState() {
    _feedBloc = HotFeedBloc();
    _feedBloc.requestHotFeed();
    Searchhelper().stream.listen((onData) {
      print("Reciving data" + onData);
      _feedBloc.searchFeed(onData);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: StreamBuilder<List<Child>>(
            stream: _feedBloc.feedsStream,
            builder: (context, snapshot) {
              if (snapshot.hasError) return Text(snapshot.error.toString());
              if (snapshot.hasData)
                return ListView.builder(
                  itemBuilder: (context, index) {
                    ChildData _childData = snapshot.data[index].data;

                    return ListTile(
                      title: Text(snapshot.data[index].data.title),
                      subtitle: Text(snapshot.data[index].data.author),
                      trailing: IconButton(
                        icon: Icon(Icons.open_in_new),
                        onPressed: () async {
                          if (await canLaunch(_childData.url)) {
                            await launch(_childData.url);
                          } else {
                            throw 'Could not launch ${_childData.permalink}';
                          }
                        },
                      ),
                    );
                  },
                  itemCount: snapshot.data.length,
                );

              return Center(
                child: CircularProgressIndicator(),
              );
            }),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
