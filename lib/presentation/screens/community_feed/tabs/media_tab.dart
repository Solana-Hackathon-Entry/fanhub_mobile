import 'package:flutter/material.dart';

import '../../../../config/themes.dart';

class MediaTab extends StatefulWidget {
  const MediaTab({Key? key}) : super(key: key);

  @override
  State<MediaTab> createState() => _MediaTabState();
}

class _MediaTabState extends State<MediaTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: ColorConstant.backGroundColor1,
        child: Column(
          children: [
            //region latest media
            SizedBox(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Latest media",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 20.0),
                        _CardMedia(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/community/pic_2.png',
                          onClick: () {},
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "KAIA",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "KAIA",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
            //endregion

            //region live
            SizedBox(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "LIVE",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 20.0),
                        _CardMedia(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/community/pic_2.png',
                          onClick: () {},
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "KAIA",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "KAIA",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
            //endregion

            //region membership
            SizedBox(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Membership",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 20.0),
                        _CardMedia(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/community/pic_2.png',
                          onClick: () {},
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "KAIA",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "KAIA",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
            //endregion

            //region Tournaments
            SizedBox(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Tournaments",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 20.0),
                        _CardMedia(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/community/pic_2.png',
                          onClick: () {},
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "KAIA",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "KAIA",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
            //endregion

            //region gameplays
            SizedBox(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "GAMEPLAY",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 20.0),
                        _CardMedia(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/community/pic_2.png',
                          onClick: () {},
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "KAIA",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "KAIA",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
            //endregion

            //region tutorials
            SizedBox(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Tutorials",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "More",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 14.0,
                            color: Colors.grey[300],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 20.0),
                        _CardMedia(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/community/pic_2.png',
                          onClick: () {},
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "KAIA",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 10.0),
                        const _CardMedia(
                          name: "KAIA",
                          imageUrl: 'assets/images/community/pic_2.png',
                        ),
                        const SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 30.0),
                ],
              ),
            ),
            //endregion

          ],
        ),
      ),
    );
  }
}

class _CardMedia extends StatelessWidget {
  final String name;
  final String imageUrl;
  final Function? onClick;

  const _CardMedia({Key? key, required this.name, required this.imageUrl, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onClick!(),
      child: Container(
        margin: const EdgeInsets.only(right: 20.0),
        width: 200,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // width: 200,
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    color: Colors.black.withOpacity(0.15000000596046448),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  const TextSpan(text: "NEW ", style: TextStyle( color: Colors.red)),
                  TextSpan(
                    text: "MSC Knockout Stage Day 1 | BLACKLIST",
                    style: TextStyle(
                      color: ColorConstant.textColor1,
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Icon(Icons.queue_play_next_sharp, size: 16.0, color: Colors.grey[400],),
                SizedBox(width: 10.0),
                Text("Video", style: TextStyle(color: Colors.grey[400]),)
              ],
            )

          ],
        ),
      ),
    );
  }
}
