import 'package:flutter/material.dart';

import '../../../data/constants.dart';

class WishListScreen extends StatefulWidget {
  const WishListScreen({Key? key}) : super(key: key);

  @override
  State<WishListScreen> createState() => _WishListScreenState();
}

class _WishListScreenState extends State<WishListScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      color: const Color(0xFF2B2B2B),
      child: SingleChildScrollView(
        child: Stack(
          children: [
            const Column(
              children: [
                SizedBox(height: 20.0),
                _TitleWidget(
                  title: 'Goals',
                  fontSize: 24,
                  isBold: true,
                ),
                SizedBox(height: 20.0),
                _CardVideo(
                  name: "I want to buy this choose.",
                  imgPath: "assets/images/shoes1.png",
                  isChecked: true,
                  profileName: "Pablo",
                ),
                _CardVideo(
                  name: "Steam Deck",
                  imgPath: "assets/images/steam_deck1.png",
                  profileName: "Josh Cullen",
                ),
                SizedBox(height: 50.0),
              ],
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // Button press logic
                    },
                    child: const Text('GRANT'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _CardVideo extends StatelessWidget {
  final String name;
  final String imgPath;
  final bool isChecked;
  final String profileName;

  const _CardVideo({
    Key? key,
    required this.name,
    required this.imgPath,
    this.isChecked = false,
    required this.profileName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3.0,
      color: const Color(0xFF3B3B3B),
      child: Column(
        children: [
          ClipRRect(
            child: Image.asset(
              imgPath,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                  child: Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
                ),
              ),
              Checkbox(
                value: isChecked, // Set the value of the checkbox based on the boolean variable
                onChanged: (bool? newValue) {},
              )
            ],
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
              child: Text(
                profileName,
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
