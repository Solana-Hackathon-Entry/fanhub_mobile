import 'package:flutter/material.dart';

import '../../../../config/themes.dart';
import '../../../widgets/card_widgets.dart';

class MerchTab extends StatefulWidget {
  const MerchTab({Key? key}) : super(key: key);

  @override
  State<MerchTab> createState() => _MerchTabState();
}

class _MerchTabState extends State<MerchTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: ColorConstant.backGroundColor1,
        child: Column(
          children: [
            SizedBox(
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/community/pic_6.png",
                    fit: BoxFit.fitWidth,
                  ),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),

            //region Blacklist international members
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
                              "BLACKLIST International Members",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                                color: ColorConstant.textColor1,
                              ),
                            )),
                        const Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.grey,
                          size: 32.0,
                        ),
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
                        CardShoutout(imageUri: 'assets/images/shout_out/shout_out_pic_1.png'),
                        CardShoutout(imageUri: 'assets/images/shout_out/shout_out_pic_2.png'),
                        CardShoutout(imageUri: 'assets/images/shout_out/shout_out_pic_3.png'),
                        CardShoutout(imageUri: 'assets/images/shout_out/shout_out_pic_4.png'),
                        CardShoutout(imageUri: 'assets/images/shout_out/shout_out_pic_5.png'),
                        SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                ],
              ),
            ),
            //endregion

            //region Get your event tickets here!
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Get your event tickets here!",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: ColorConstant.textColor1,
                        ),
                      )),
                  const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                    size: 32.0,
                  ),
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

            //region Legendary Collections
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Legendary Collections",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                          color: ColorConstant.textColor1,
                        ),
                      )),
                  const Icon(
                    Icons.keyboard_arrow_right,
                    color: Colors.grey,
                    size: 32.0,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10.0),
            const Column(
              children: [
                _CardLegendaryCollection(imageUri: 'assets/images/community/pic_5.png'),
                _CardLegendaryCollection(imageUri: 'assets/images/community/pic_3.png'),
                _CardLegendaryCollection(imageUri: 'assets/images/community/pic_4.png'),
                SizedBox(width: 20.0),
              ],
            ),
            const SizedBox(height: 10.0),
            //endregion
          ],
        ),
      ),
    );
  }
}

class _CardLegendaryCollection extends StatelessWidget {
  final String imageUri;
  final double width;

  const _CardLegendaryCollection({Key? key, required this.imageUri, this.width = 250}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
      child: Image.asset(
        imageUri,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}
