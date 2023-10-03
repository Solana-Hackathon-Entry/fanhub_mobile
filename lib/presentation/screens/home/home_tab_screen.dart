import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:nft_marketplace/presentation/screens/nft_list/nft_list_screen.dart';

import '../../../config/themes.dart';
import '../community_feed/community_feed.dart';
import '../../widgets/card_widgets.dart';

class HomeTabScreen extends StatefulWidget {
  const HomeTabScreen({Key? key}) : super(key: key);

  @override
  State<HomeTabScreen> createState() => _HomeTabScreenState();
}

class _HomeTabScreenState extends State<HomeTabScreen> {
  final List<Widget> _listImages = [
    const _ContainerImage(
      imageUrl: "assets/images/carousel_images/carousel_images_1.png",
    ),
    const _ContainerImage(
      imageUrl: "assets/images/carousel_images/carousel_images_2.png",
    ),
    const _ContainerImage(
      imageUrl: "assets/images/carousel_images/carousel_images_3.png",
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstant.backGroundColor1,
      child: SafeArea(
        child: SingleChildScrollView(
          // physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                height: 200.0,
                child: CarouselSlider(
                  items: _listImages,
                  options: CarouselOptions(
                    height: double.infinity,
                    viewportFraction: 1.0,
                    autoPlayAnimationDuration: const Duration(milliseconds: 100),
                    autoPlay: true,
                    enlargeCenterPage: true,
                  ),
                ),
              ),
              Column(
                children: [
                  /// My HUB
                  const SizedBox(height: 10.0),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "My HUB",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: ColorConstant.textColor1,
                              ),
                            )),
                        Icon(
                          Icons.add,
                          color: ColorConstant.textColor1,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  SingleChildScrollView(
                    physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 20.0),
                        CardHubGroup(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/my_hub/black_list_logo_1.png',
                          onClick: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const CommunityFeedScreen()),
                            );
                          },
                        ),
                        const CardHubGroup(
                          name: "KAIA",
                          imageUrl: 'assets/images/my_hub/kaia_logo_1.png',
                        ),
                        const CardHubGroup(
                          name: "BLACKLIST",
                          imageUrl: 'assets/images/my_hub/black_list_logo_1.png',
                        ),
                        const CardHubGroup(
                          name: "KAIA",
                          imageUrl: 'assets/images/my_hub/kaia_logo_1.png',
                        ),
                        const CardBlank(),
                        const SizedBox(width: 20.0),
                      ],
                    ),
                  ),

                  /// Open HUB
                  const SizedBox(height: 10.0),
                  GestureDetector(
                    onTap: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const NFTListScreen()),
                      );
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
                      decoration: ShapeDecoration(
                        color: ColorConstant.backGroundColor1,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 0.50,
                            color: ColorConstant.color1,
                          ),
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                      child: Text(
                        "Open HUB",
                        style: TextStyle(color: ColorConstant.color1),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  /// Meet your Community!
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Meet your Community!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: ColorConstant.textColor1,
                              ),
                            )),
                        const _ButtonViewAll()
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 20.0),
                        CardCommunity(
                          name: "BINI",
                          imageUrl: 'assets/images/meet_your_community/bini_pic_1.png',
                        ),
                        CardCommunity(
                          name: "G22",
                          imageUrl: 'assets/images/meet_your_community/g22_pic_1.png',
                        ),
                        CardCommunity(
                          name: "PLUUS",
                          imageUrl: 'assets/images/meet_your_community/pluus_pic_1.png',
                        ),
                        CardCommunity(
                          name: "BINI",
                          imageUrl: 'assets/images/meet_your_community/bini_pic_1.png',
                        ),
                        CardCommunity(
                          name: "G22",
                          imageUrl: 'assets/images/meet_your_community/g22_pic_1.png',
                        ),
                        CardCommunity(
                          name: "PLUUS",
                          imageUrl: 'assets/images/meet_your_community/pluus_pic_1.png',
                        ),
                        SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),

                  //region Choose your Favorite Collection
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Choose your Favorite Collection!",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18.0,
                                  color: ColorConstant.textColor1,
                                ),
                              )),
                        ),
                        const _ButtonViewAll()
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 20.0),
                        CardFavoriteCollection(imageUrl: 'assets/images/favorite_collection/gento_pic_1.png'),
                        CardFavoriteCollection(imageUrl: 'assets/images/favorite_collection/rhythm_pic_1.png'),
                        CardFavoriteCollection(imageUrl: 'assets/images/favorite_collection/ygig_pic_1.png'),
                        SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  //endregion

                  //region Buy Event Tickets!
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Buy Event Tickets!",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18.0,
                                color: ColorConstant.textColor1,
                              ),
                            )),
                        const _ButtonViewAll()
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        SizedBox(width: 20.0),
                        CardEventTicket(imageUri: 'assets/images/event_ticket/event_ticket_pic_1.png'),
                        CardEventTicket(imageUri: 'assets/images/event_ticket/event_ticket_pic_2.png'),
                        CardEventTicket(imageUri: 'assets/images/event_ticket/event_ticket_pic_3.png'),
                        SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  //endregion

                  //region Get a Shoutout!
                  SizedBox(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    "Get a Shoutout!",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 18.0,
                                      color: ColorConstant.textColor1,
                                    ),
                                  )),
                              const _ButtonViewAll()
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        const SingleChildScrollView(
                          physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(width: 20.0),
                              CardShoutout(
                                imageUri: 'assets/images/shout_out/shout_out_pic_1.png',
                              ),
                              CardShoutout(
                                imageUri: 'assets/images/shout_out/shout_out_pic_2.png',
                              ),
                              CardShoutout(
                                imageUri: 'assets/images/shout_out/shout_out_pic_3.png',
                              ),
                              CardShoutout(
                                imageUri: 'assets/images/shout_out/shout_out_pic_4.png',
                              ),
                              CardShoutout(
                                imageUri: 'assets/images/shout_out/shout_out_pic_5.png',
                              ),
                              SizedBox(width: 20.0),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10.0),
                      ],
                    ),
                  ),
                  //endregion
                ],
              ),
              const SizedBox(height: 10.0),
            ],
          ),
        ),
      ),
    );
  }
}

class _ContainerImage extends StatelessWidget {
  final String imageUrl;

  const _ContainerImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity, child: Image.asset(imageUrl));
  }
}

class _ButtonViewAll extends StatelessWidget {
  const _ButtonViewAll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          backgroundColor: Colors.black,
          side: BorderSide(color: ColorConstant.color1, width: 0.5),
        ),
        onPressed: () {},
        child: Text(
          "View All",
          style: TextStyle(
            color: ColorConstant.color1,
          ),
        ));
  }
}
