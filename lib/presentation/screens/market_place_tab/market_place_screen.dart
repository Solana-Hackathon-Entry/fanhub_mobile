import 'package:flutter/material.dart';

import '../../../config/themes.dart';
import '../../widgets/card_widgets.dart';

class MarketPlaceScreen extends StatefulWidget {
  const MarketPlaceScreen({Key? key}) : super(key: key);

  @override
  State<MarketPlaceScreen> createState() => _MarketPlaceScreenState();
}

class _MarketPlaceScreenState extends State<MarketPlaceScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            //region Top
            SizedBox(
              child: Column(
                children: [
                  const Row(
                    children: [
                      Expanded(
                        flex: 14,
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              _ButtonOutline(
                                text: "P-Pop",
                              ),
                              SizedBox(width: 10.0),
                              _ButtonOutline(
                                text: "Gaming",
                              ),
                              SizedBox(width: 10.0),
                              _ButtonOutline(
                                text: "Categories",
                              ),
                              SizedBox(width: 10.0),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Icon(
                            Icons.search_rounded,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Image.asset("assets/images/market_place/pic_1.png"),
                ],
              ),
            ),
            //endregion

            //region Spotlight
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Text(
                    "SPOTLIGHT",
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: ColorConstant.textColor1,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/pic_1.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/pic_2.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/pic_3.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/pic_4.png',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //endregion

            //region Event tickets
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Event Tickets",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.textColor1,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardEventTicket(
                          imageUri: 'assets/images/market_place/event_ticket_pic_1.png',
                        ),
                        CardEventTicket(
                          imageUri: 'assets/images/market_place/event_ticket_pic_2.png',
                        ),
                        CardEventTicket(
                          imageUri: 'assets/images/market_place/event_ticket_pic_3.png',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //endregion

            //region Shoutout
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Shoutout",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.textColor1,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/shoutout_pic_1.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/shoutout_pic_2.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/shoutout_pic_3.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/shoutout_pic_4.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/shoutout_pic_5.png',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //endregion

            //region Trending in Gaming
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Trending in Gaming",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.textColor1,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/gaming_pic_1.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/gaming_pic_2.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/gaming_pic_3.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/gaming_pic_4.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/gaming_pic_5.png',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //endregion

            //region Trending in P-Pop
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Trending in P-Pop",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.textColor1,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/ppop_pic_1.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/ppop_pic_2.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/ppop_pic_3.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/ppop_pic_4.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/ppop_pic_5.png',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //endregion

            //region Trending in Fan art
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Trending in Fan Art",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.textColor1,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/art_pic_1.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/art_pic_2.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/art_pic_3.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/art_pic_4.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/art_pic_5.png',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //endregion

            //region Trending in Content creators
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Trending in Content Creators",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.textColor1,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/content_pic_1.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/content_pic_2.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/content_pic_3.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/content_pic_4.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/content_pic_5.png',
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            //endregion

            //region Trending influencers
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Trending Influencers",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: ColorConstant.textColor1,
                        ),
                      ),
                      const Icon(
                        Icons.arrow_forward_ios_sharp,
                        color: Colors.white,
                        size: 20,
                      )
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  const SingleChildScrollView(
                    physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/influ_pic_1.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/influ_pic_2.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/influ_pic_3.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/influ_pic_4.png',
                        ),
                        CardHubGroup(
                          name: "",
                          imageUrl: 'assets/images/market_place/influ_pic_5.png',
                        ),
                      ],
                    ),
                  )
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

class _ButtonOutline extends StatelessWidget {
  final String text;

  const _ButtonOutline({Key? key, required this.text}) : super(key: key);

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
          text,
          style: TextStyle(
            color: ColorConstant.color1,
          ),
        ));
  }
}
