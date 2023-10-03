import 'package:flutter/material.dart';

import '../../../data/constants.dart';
import 'items/selected_item_screen.dart';

class GamingCategoryScreen extends StatefulWidget {
  const GamingCategoryScreen({Key? key}) : super(key: key);

  @override
  State<GamingCategoryScreen> createState() => _GamingCategoryScreenState();
}

class _GamingCategoryScreenState extends State<GamingCategoryScreen> with TickerProviderStateMixin {
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
                  expandedHeight: 300.0,
                  pinned: true,
                  bottom: const TabBar(
                    isScrollable: true,
                    tabs: [
                      Text(
                        "ITEMS",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "UPCOMING",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "MERCHANDISE",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "ONGOING",
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
                        color: const Color(0xFF2B2B2B),
                        child: Image.asset('assets/images/black_list_1.png'),
                      ),
                    ),
                  ),
                  centerTitle: false,
                  title: const Text('BLACK LIST'),
                ),
              ];
            },
            body: TabBarView(
              controller: _tabController,
              children: [
                const _TabItems(),
                const Icon(Icons.directions_transit),
                const Icon(Icons.directions_bike),
                const Icon(Icons.directions_transit),
                const Icon(Icons.directions_bike),
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
                  Container(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: ()=>onPress(),
                      child: const Text("Place Bid"),
                      style: ElevatedButton.styleFrom(primary: Colors.purple),
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
