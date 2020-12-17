import 'package:flutter/material.dart';

import '../data/data.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double _scrollOffset = 0.0;
  ScrollController _scrollController;

  @override
  void initState() {
    _scrollController = ScrollController()
      ..addListener(() {
        setState(() {
          _scrollOffset = _scrollController.offset;
        });
      });

    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
          child: CustomAppBar(
            scrollOffset: _scrollOffset,
          ),
          preferredSize: Size.fromHeight(50.0)),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.cast),
        backgroundColor: Colors.grey,
        onPressed: () {},
      ),
      body: CustomScrollView(
        controller: _scrollController,
        slivers: [
          SliverToBoxAdapter(
              child: FeaturedContent(featuredContent: sintelContent)),
          SliverPadding(
            padding: const EdgeInsets.only(top: 5.0),
            sliver: SliverToBoxAdapter(
              child: Previews(title: 'Previews', contentList: previews),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.only(top: 5.0),
            sliver: SliverToBoxAdapter(
              child: ContentList(
                  title: 'Originals',
                  contentList: originals,
                  isOriginals: true),
            ),
          )
        ],
      ),
    );
  }
}
