import 'package:demo/blocs/search_helper.dart';
import 'package:demo/pages/hot.dart';
import 'package:demo/pages/new.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  bool showSearch = true;
  bool isSearchDisplayed = false;

  TextEditingController _textEditingController = TextEditingController();
  TabController _tabController;

  @override
  void initState() {
    _textEditingController.addListener(() {
      Searchhelper().search(_textEditingController.text);
    });

    _tabController = new TabController(vsync: this, length: 2);
    _tabController.addListener(() {
      print(_tabController.index);
      setState(() {
        showSearch = _tabController.index == 0 ? true : false;
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    Searchhelper().dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              child: Text("Hot"),
            ),
            Tab(
              child: Text("New"),
            ),
          ],
        ),
        title: showSearch && isSearchDisplayed
            ? TextFormField(
                controller: _textEditingController,
              )
            : Text('Reddit Feeds'),
        actions: <Widget>[
          showSearch
              ? isSearchDisplayed
                  ? IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        setState(() {
                          isSearchDisplayed = false;
                        });
                      },
                    )
                  : IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        setState(() {
                          isSearchDisplayed = true;
                        });
                      },
                    )
              : SizedBox(),
        ],
      ),
      body: TabBarView(
        controller: _tabController,
        children: [HotFeedsPage(), NewFeeds()],
      ),
    );
  }
}
