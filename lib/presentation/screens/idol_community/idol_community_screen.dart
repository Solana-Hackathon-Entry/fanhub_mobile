import 'package:flutter/material.dart';
import '../../../data/constants.dart';
import '../categories/items/selected_item_screen.dart';
import 'community/main.dart';
import 'exclusive_video_screen.dart';
import 'wish_list_screen.dart';

class IdolCommunityScreen extends StatefulWidget {
  const IdolCommunityScreen({Key? key}) : super(key: key);

  @override
  State<IdolCommunityScreen> createState() => _IdolCommunityScreenState();
}

class _IdolCommunityScreenState extends State<IdolCommunityScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 5, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          body: NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
              return <Widget>[
                SliverAppBar(
                  backgroundColor: const Color(0xFF2B2B2B),
                  expandedHeight: 200.0,
                  pinned: true,
                  bottom: const TabBar(
                    isScrollable: true,
                    tabs: [
                      Text(
                        "Updates",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Events and Polls",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Goals",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Wishlist",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "FAN SERVICE",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  flexibleSpace: FlexibleSpaceBar(
                    background: SafeArea(
                      child: Container(
                          margin: const EdgeInsets.symmetric(horizontal: 20.0),
                          color: const Color(0xFF2B2B2B),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  const Row(
                                    children: [
                                      Icon(
                                        Icons.people,
                                        color: Colors.white,
                                        size: 50.0,
                                      ),
                                      SizedBox(width: 20.0),
                                      Column(
                                        children: [
                                          Text(
                                            "SB19",
                                            style:
                                            TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 22.0),
                                          ),
                                          Text(
                                            "@SB19",
                                            style: TextStyle(color: Colors.white54),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),

                                  Row(
                                    children: [
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey,
                                        ),
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          child: Icon(
                                            Icons.star,
                                            color: Colors.white,
                                            size: 18.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey,
                                        ),
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          child: Icon(
                                            Icons.email,
                                            color: Colors.white,
                                            size: 18.0,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      Container(
                                        width: 30,
                                        height: 30,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.grey,
                                        ),
                                        child: const CircleAvatar(
                                          backgroundColor: Colors.grey,
                                          child: Icon(
                                            Icons.notifications,
                                            color: Colors.white,
                                            size: 18.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  )

                                ],
                              ),
                              const SizedBox(height: 20.0),
                              const Text(
                                "The official  fandom community for SB19! A pop idol group of the Pop Idols.",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )),
                    ),
                  ),
                  centerTitle: false,
                  //   title: const Text('SB19'),
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: const [
                TweetCloneScreen(),
                //_TabItems(),
                ExclusiveScreen(),
                WishListScreen(),
                //Icon(Icons.directions_bike),
                Icon(Icons.directions_bike),
                Icon(Icons.directions_transit),
              ],
            ),
          ),
        )
        // ],
        );
  }
}

class _TabItems extends StatefulWidget {
  const _TabItems({Key? key}) : super(key: key);

  @override
  State<_TabItems> createState() => _TabItemsState();
}

class _TabItemsState extends State<_TabItems> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF2B2B2B),
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: blackList.length,
              itemBuilder: (_, index) => Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                ),
                child: _Card1(
                  imageUrl: blackList[index].imageUrl,
                  favoriteNumber: blackList[index].favoriteNumber,
                  name: blackList[index].name,
                  heart: blackList[index].heart,
                  onPress: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SelectedItemScreen()),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _Card1 extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double favoriteNumber;
  final VoidCallback onPress;
  final int heart;

  const _Card1({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.favoriteNumber,
    required this.onPress,
    required this.heart,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF3B3B3B),
      child: SizedBox(
        width: 150.0,
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // const Spacer(),
            Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold,
                    ),
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                            '$favoriteNumber',
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
                                'assets/images/heart1.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          const SizedBox(width: 5.0),
                          Text(
                            '$heart',
                            style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 14.0,
                            ),
                          ),
                          // SizedBox(width: 10.0)
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () => onPress(),
                      child: const Text("Place Bid"),
                      style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
