import 'package:demo/blocs/newfeed_bloc.dart';
import 'package:demo/model/feeds.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewFeeds extends StatefulWidget {
  @override
  _NewFeedsState createState() => _NewFeedsState();
}

class _NewFeedsState extends State<NewFeeds>
    with AutomaticKeepAliveClientMixin<NewFeeds> {
  NewFeedsBloc _feedBloc;

  @override
  void initState() {
    _feedBloc = NewFeedsBloc();
    _feedBloc.requestHotFeed();
    super.initState();
  }

  @override
  void dispose() {
    _feedBloc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: StreamBuilder<RedditFeed>(
            stream: _feedBloc.feedsStream,
            builder: (context, snapshot) {
              if (snapshot.hasError) return Text(snapshot.error.toString());
              if (snapshot.hasData)
                return ListView.builder(
                  itemBuilder: (context, index) {
                    ChildData _childData =
                        snapshot.data.data.children[index].data;

                    return ListTile(
                      title: Text(_childData.title),
                      subtitle: Text("Author : ${_childData.author}"),
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
                  itemCount: snapshot.data.data.children.length,
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
