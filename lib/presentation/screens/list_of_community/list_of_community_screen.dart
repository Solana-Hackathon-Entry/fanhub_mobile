import 'package:flutter/material.dart';

import '../../../data/constants.dart';

class ListOfCommunityScreen extends StatefulWidget {
  const ListOfCommunityScreen({Key? key}) : super(key: key);

  @override
  State<ListOfCommunityScreen> createState() => _ListOfCommunityScreenState();
}

class _ListOfCommunityScreenState extends State<ListOfCommunityScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 15.0),
        child: const Column(
          children: [
            SizedBox(height: kDefaultPadding),
            SizedBox(height: 20.0),
            _TitleWidget(
              title: 'HUB',
              fontSize: 24,
              isBold: true,
            ),
            _CardVideo(
              title: 'SB19',
              description: 'SB19 posted a new update!',
              imagePath: 'assets/images/vxon_1.png',
            ),
            _CardVideo(
              title: 'VIXIES',
              description: 'VXON Franz posted a new update!',
              imagePath: 'assets/images/vixies1.png',
            ),
            _CardVideo(
              title: 'BULLETS',
              description: 'G22 Jasmine posted a new update!',
              imagePath: 'assets/images/bullets1.png',
            ),
            _CardVideo(
              title: 'ANCHORS',
              description: 'HORI7ON Jeromy posted a new update!',
              imagePath: 'assets/images/horizon_pic1.png',
            ),
            _CardVideo(
              title: 'A’TIN',
              description: 'SB19 Stell posted a new update!',
              imagePath: 'assets/images/sb19.png',
            ),
            _CardVideo(
              title: 'MOONLIGHT',
              description: 'ECLIPSE Clyde posted a new update! ',
              imagePath: 'assets/images/eclipse1.png',
            )
          ],
        ),
      ),
    );
  }
}

class _CardVideo extends StatelessWidget {
  final String title;
  final String description;
  final String imagePath;

  const _CardVideo({Key? key, required this.title, required this.description, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      color: const Color(0xFF3B3B3B),
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset(
              imagePath,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                  overflow: TextOverflow.clip,
                  maxLines: 2,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 10.0),
                //padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    foregroundColor: const Color(0xFF3B3B3B),
                    side: const BorderSide(
                      width: 1.0,
                      color: Colors.white54,
                    ),
                  ),
                  child: const Text(
                    'Visit',
                    style: TextStyle(color: Colors.white54),
                  ),
                ),
              ),
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                description,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14.0,
                ),
                overflow: TextOverflow.clip,
                maxLines: 2,
              ),
            ),
          ),
          const SizedBox(height: 10.0),
        ],
      ),
    );
  }
}

class _TitleWidget extends StatelessWidget {
  final String title;
  final double fontSize;
  final bool isBold;

  const _TitleWidget({
    Key? key,
    required this.title,
    this.fontSize = 20.0,
    this.isBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
        ),
      ),
    );
  }
}
