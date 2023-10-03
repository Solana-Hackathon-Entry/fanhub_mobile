import 'package:flutter/material.dart';

import '../../../../data/constants.dart';
import '../../../../domain/entities/offer_bid_entity.dart';

class SelectedItemScreen extends StatefulWidget {
  const SelectedItemScreen({Key? key}) : super(key: key);

  @override
  State<SelectedItemScreen> createState() => _SelectedItemScreenState();
}

class _SelectedItemScreenState extends State<SelectedItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3B3B3B),
      appBar: AppBar(
        title: Text('Black List'),
        backgroundColor: Colors.transparent,
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: const Text(
                        "Veenus #0001",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      child: const Text(
                        "Owned by JrevTree",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Row(
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 15.0,
                              width: 15.0,
                              child: ClipRRect(
                                // borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/eth1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              '236 view',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 15.0,
                              width: 15.0,
                              child: ClipRRect(
                                // borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/eth1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              '300 Favourites',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(
                              height: 15.0,
                              width: 15.0,
                              child: ClipRRect(
                                // borderRadius: BorderRadius.circular(20.0),
                                child: Image.asset(
                                  'assets/images/eth1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            Text(
                              'ESports',
                              style: TextStyle(
                                color: Colors.white.withOpacity(0.8),
                                fontSize: 14.0,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),

                const SizedBox(height: 20.0),
                Container(
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20.0,
                  ),
                  child: Image.asset(
                    '$kImagePath/venus1.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text("Buy Now"),
                        style: ElevatedButton.styleFrom(primary: Colors.lightBlue),
                      ),
                    ),
                    const SizedBox(width: 15.0),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: const Text(
                          "Make Offer",
                          style: TextStyle(color: Colors.lightBlue),
                        ),
                        style: ElevatedButton.styleFrom(primary: Colors.white),
                      ),
                    )
                  ],
                ),

                const SizedBox(height: 10.0),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    /// Description
                    Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Jonmar \" OhMyV33NUS\" Villaluna (born July 20, 1994)",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        //   fontWeight: FontWeight.bold,
                      ),
                    ),

                    /// Perks
                    Text(
                      "Perks",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "* 50% MPL Ticket Discount",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        //   fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "* Yearly meet and greet",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        //   fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "* VIP Access to Blacklist games",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        //    fontWeight: FontWeight.bold,
                      ),
                    ),

                    /// Details
                    Text(
                      "Perks",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "* 50% MPL Ticket Discount",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        //  fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "* Yearly meet and greet",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        //fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "* VIP Access to Blacklist games",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.0,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                /// List if offers
                const SizedBox(height: 20.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text('Price',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        )),

                    Text('USD Price',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        )),
                    Text('Quantity',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                        ))
                  ],
                ),
                Container(
                  height: 200.0,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: veenusListModel.length,
                    itemBuilder: (_, index) => Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 5.0,
                      ),
                      child: _CardOffer(
                        offerBidModel: veenusListModel[index],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CardOffer extends StatelessWidget {
  final OfferBidEntity offerBidModel;

  const _CardOffer({Key? key, required this.offerBidModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('${offerBidModel.price} WETH',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                // fontWeight: FontWeight.bold,
              )),

          Text('\$ ${offerBidModel.usdPrice}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                // fontWeight: FontWeight.bold,
              )),
          Text('${offerBidModel.quantity}',
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 14.0,
                // fontWeight: FontWeight.bold,
              ))
        ],
      ),
    );
  }
}
