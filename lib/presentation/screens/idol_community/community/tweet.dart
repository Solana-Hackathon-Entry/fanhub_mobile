import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Tweet extends StatelessWidget {
  final String avatar;
  final String username;
  final String name;
  final String timeAgo;
  final String text;
  final String comments;
  final String retweets;
  final String favorites;
  final int typeOfTweet;

  const Tweet(
      {required this.avatar,
      required this.username,
      required this.name,
      required this.timeAgo,
      required this.text,
      required this.comments,
      required this.retweets,
      required this.favorites,
      this.typeOfTweet = 1});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2B2B2B),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tweetAvatar(),
          tweetBody(),
        ],
      ),
    );
  }

  Widget tweetAvatar() {
    return Container(
      margin: const EdgeInsets.all(10.0),
      child:  CircleAvatar(
        backgroundImage: AssetImage(avatar),
      ),
    );
  }

  Widget tweetBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          tweetHeader(),
          if (typeOfTweet == 1)
            tweetText(),
          if (typeOfTweet == 2)
            tweetImage(),
          tweetButtons(),
        ],
      ),
    );
  }

  Widget tweetHeader() {
    return Row(
      children: [
        Container(
          color: const Color(0xFF2B2B2B),
          margin: const EdgeInsets.only(right: 5.0),
          child: Text(
            username,
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Text(
          '@$name · $timeAgo',
          style: const TextStyle(
            color: Colors.grey,
          ),
        ),
        const Spacer(),
        IconButton(
          icon: const Icon(
            FontAwesomeIcons.angleDown,
            size: 14.0,
            color: Colors.grey,
          ),
          onPressed: () {},
        ),
      ],
    );
  }

  Widget tweetText() {
    return Text(
      text,
      overflow: TextOverflow.clip,
      style: const TextStyle(color: Colors.white),
    );
  }

  Widget tweetImage() {
    return Container(
        color: const Color(0xFF2B2B2B),
        margin: const EdgeInsets.only(right: 20.0),
        child: Image.asset("assets/images/sb19.png"));
  }

  Widget tweetButtons() {
    return Container(
      color: const Color(0xFF2B2B2B),
      margin: const EdgeInsets.only(top: 10.0, right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          tweetIconButton(FontAwesomeIcons.comment, this.comments),
          tweetIconButton(FontAwesomeIcons.retweet, this.retweets),
          tweetIconButton(FontAwesomeIcons.heart, this.favorites),
          tweetIconButton(FontAwesomeIcons.share, ''),
        ],
      ),
    );
  }

  Widget tweetIconButton(IconData icon, String text) {
    return Row(
      children: [
        Icon(
          icon,
          size: 16.0,
          color: Colors.white54,
        ),
        Container(
          margin: const EdgeInsets.all(6.0),
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white54,
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }
}
