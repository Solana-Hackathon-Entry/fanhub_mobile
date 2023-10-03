import 'package:flutter/material.dart';
import 'tweets.dart';

class TweetCloneScreen extends StatefulWidget {
  const TweetCloneScreen({Key? key}) : super(key: key);

  @override
  _TweetCloneScreenState createState() => _TweetCloneScreenState();
}

class _TweetCloneScreenState extends State<TweetCloneScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2B2B2B),
      child: listOfTweets(),
    );
  }

  Widget buildBottomIconButton(IconData icon, Color color) {
    return IconButton(
      icon: Icon(
        icon,
        color: color,
      ),
      onPressed: () {},
    );
  }

  Widget listOfTweets() {
    return Container(
      color: const Color(0xFF2B2B2B),
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return tweets[index];
        },
        separatorBuilder: (BuildContext context, int index) => const Divider(
          height: 0,
        ),
        itemCount: tweets.length,
      ),
    );
  }
}
