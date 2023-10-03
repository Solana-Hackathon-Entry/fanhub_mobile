import 'package:flutter/material.dart';

import 'tabs/entertainer_tab.dart';
import 'tabs/feed_tab.dart';
import 'tabs/media_tab.dart';
import 'tabs/merch_tab.dart';



class CommunityFeedScreen extends StatefulWidget {
  const CommunityFeedScreen({Key? key}) : super(key: key);

  @override
  State<CommunityFeedScreen> createState() => _CommunityFeedScreenState();
}

class _CommunityFeedScreenState extends State<CommunityFeedScreen> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        titleSpacing: 0.0,
        title: const Text(
          "Community Feed",
          style: TextStyle(color: Colors.black, fontSize: 16.0),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            TabBar(
              isScrollable: true,
              controller: _tabController,
              tabs: const [
                _TabLabel(label: "Feed"),
                _TabLabel(label: "Entertainer"),
                _TabLabel(label: "Media"),
                _TabLabel(label: "Merch"),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: const [
                  FeedTab(),
                  EntertainerTab(),
                  MediaTab(),
                  MerchTab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TabLabel extends StatelessWidget {
  final String label;

  const _TabLabel({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 12.0,
        ),
      ),
    );
  }
}

class _TransparentButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const _TransparentButton({required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        color: Colors.transparent,
        padding: const EdgeInsets.all(8.0),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
