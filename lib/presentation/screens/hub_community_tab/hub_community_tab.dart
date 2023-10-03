import 'package:flutter/material.dart';
import 'package:nft_marketplace/config/themes.dart';
import 'package:nft_marketplace/domain/entities/chart_ranking_entity.dart';
import '../../widgets/card_widgets.dart';
import 'dummy_data.dart';

//region HubCommunityScreen
class HubCommunityTabScreen extends StatefulWidget {
  const HubCommunityTabScreen({Key? key}) : super(key: key);

  @override
  State<HubCommunityTabScreen> createState() => _HubCommunityTabScreenState();
}

class _HubCommunityTabScreenState extends State<HubCommunityTabScreen> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(height: 10.0),
        Align(
            alignment: Alignment.center,
            child: Text(
              "HUB",
              style: TextStyle(
                fontSize: 20,
                color: ColorConstant.textColor1,
              ),
            )),
        const SizedBox(height: 10.0),
        _SearchBar(),
        const SizedBox(height: 10.0),
        Expanded(
          child: Column(
            children: <Widget>[
              TabBar(
                controller: _tabController,
                tabs: <Widget>[
                  Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: const Icon(
                        Icons.star,
                      )),
                  Container(
                      margin: const EdgeInsets.only(bottom: 10.0),
                      child: const Icon(
                        Icons.stacked_bar_chart_outlined,
                      )),
                ],
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [
                    _CommunityTab(),
                    _ChartTab(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
//endregion

//region Community tab
class _CommunityTab extends StatefulWidget {
  const _CommunityTab({Key? key}) : super(key: key);

  @override
  State<_CommunityTab> createState() => _CommunityTabState();
}

class _CommunityTabState extends State<_CommunityTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      child: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            child: Text(
              "My Communities",
              style: TextStyle(fontSize: 18.0, color: ColorConstant.textColor1),
            ),
          ),
          const Wrap(
            runSpacing: 10.0,
            children: [
              CardHubGroup(
                name: "BLACKLIST",
                imageUrl: 'assets/images/my_hub/black_list_logo_1.png',
              ),
              CardHubGroup(
                name: "KAIA",
                imageUrl: 'assets/images/my_hub/kaia_logo_1.png',
              ),
              CardHubGroup(
                name: "BGYO",
                imageUrl: 'assets/images/my_hub/bygo_pic_1.png',
              ),
              CardHubGroup(
                name: "SB19",
                imageUrl: 'assets/images/my_hub/sb19_pic_1.png',
              ),
              CardHubGroup(
                name: "ECLIPSE",
                imageUrl: 'assets/images/my_hub/eclipse_pic_1.png',
              ),
              CardHubGroup(
                name: "YES MY LOVE",
                imageUrl: 'assets/images/my_hub/yes_my_love_pic_1.png',
              ),
              CardHubGroup(
                name: "CALISTA",
                imageUrl: 'assets/images/my_hub/calista_pic_1.png',
              ),
              CardHubGroup(
                name: "BINI",
                imageUrl: 'assets/images/my_hub/bini_pic_1.png',
              ),
              CardHubGroup(
                name: "6SENSE",
                imageUrl: 'assets/images/my_hub/6_sencse_pic_1.png',
              ),
              CardHubGroup(
                name: "YGIG",
                imageUrl: 'assets/images/my_hub/ygig_pic_1.png',
              ),
            ],
          ),
          const SizedBox(height: 10.0)
        ],
      ),
    );
  }
}
//endregion

//region Chart nested tab
class _ChartTab extends StatefulWidget {
  const _ChartTab({Key? key}) : super(key: key);

  @override
  State<_ChartTab> createState() => _ChartTabState();
}

class _ChartTabState extends State<_ChartTab> with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          child: TabBar(
            controller: _tabController,
            tabs: [
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Communities",
                  style: TextStyle(
                    color: ColorConstant.textColor1,
                    fontSize: 12.0,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Entertainers",
                  style: TextStyle(
                    color: ColorConstant.textColor1,
                    fontSize: 12.0,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: Text(
                  "Fans",
                  style: TextStyle(
                    color: ColorConstant.textColor1,
                    fontSize: 12.0,
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            controller: _tabController,
            children: const [
              _ChartTabCommunities(),
              _ChartTabEntertainers(),
              _ChartTabFans(),
            ],
          ),
        ),
      ],
    );
  }
}
//endregion

//region Chart tab communities
class _ChartTabCommunities extends StatefulWidget {
  const _ChartTabCommunities({Key? key}) : super(key: key);

  @override
  State<_ChartTabCommunities> createState() => _ChartTabCommunitiesState();
}

class _ChartTabCommunitiesState extends State<_ChartTabCommunities> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ChartRanking.listChartCommunity.length,
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemBuilder: (_, index) => _CardRanking(
        chartRankingModel: ChartRanking.listChartCommunity[index],
        index: (index + 1),
      ),
    );
  }
}
//endregion

//region Chart tab entertainers
class _ChartTabEntertainers extends StatefulWidget {
  const _ChartTabEntertainers({Key? key}) : super(key: key);

  @override
  State<_ChartTabEntertainers> createState() => _ChartTabEntertainersState();
}

class _ChartTabEntertainersState extends State<_ChartTabEntertainers> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ChartRanking.listChartCommunity.length,
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemBuilder: (_, index) => _CardRanking(
        chartRankingModel: ChartRanking.listChartEntertainers[index],
        index: (index + 1),
      ),
    );
  }
}
//endregion

//region Chart tab fans
class _ChartTabFans extends StatefulWidget {
  const _ChartTabFans({Key? key}) : super(key: key);

  @override
  State<_ChartTabFans> createState() => _ChartTabFansState();
}

class _ChartTabFansState extends State<_ChartTabFans> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: ChartRanking.listChartCommunity.length,
      physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
      itemBuilder: (_, index) => _CardRanking(
        chartRankingModel: ChartRanking.listChartFans[index],
        index: (index + 1),
      ),
    );
  }
}
//endregion

class _CardRanking extends StatelessWidget {
  final ChartRankingEntity chartRankingModel;
  final int index;

  const _CardRanking({
    Key? key,
    required this.chartRankingModel,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      margin: const EdgeInsets.only(left: 10.0, right: 10.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.withOpacity(0.40),
          width: 0.5,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.center,
              child: Text(
                index.toString(),
                style: TextStyle(
                  color: ColorConstant.textColor1,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: SizedBox(
                    height: 50.0,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage(chartRankingModel.imageUri),
                    ),
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            flex: 8,
                            child: Text(
                              chartRankingModel.name,
                              style: TextStyle(
                                color: ColorConstant.textColor1,
                                fontWeight: FontWeight.bold,
                                fontSize: 16.0,
                              ),
                            ),
                          ),
                          Visibility(
                            visible: chartRankingModel.chartType == 3,
                            child: const Expanded(
                                flex: 2,
                                child: Icon(
                                  Icons.check_circle,
                                  color: Colors.blue,
                                  size: 20,
                                )),
                          )
                        ],
                      ),
                      Text(
                        chartRankingModel.subText,
                        style: TextStyle(
                          color: ColorConstant.textColor2,
                          fontWeight: FontWeight.bold,
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              margin: const EdgeInsets.only(left: 30.0),
              height: 30.0,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.purpleAccent, Colors.deepPurple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    chartRankingModel.chartType == 1 ? "Join Now" : "Follow",
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

class _SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 343,
          height: 42.97,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 343,
                  height: 42.97,
                  decoration: ShapeDecoration(
                    color: const Color(0xFF191919),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.50,
                        color: Colors.white.withOpacity(0.30000001192092896),
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
              const Positioned(
                left: 15.30,
                top: 10.28,
                child: SizedBox(
                    width: 15.13,
                    height: 18.41,
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    )),
              ),
              const SizedBox(width: 10.0),
              const Positioned(
                left: 39.06,
                top: 13.05,
                child: SizedBox(
                  width: 302.98,
                  height: 13.50,
                  child: Text(
                    'Search for communities and more...',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
