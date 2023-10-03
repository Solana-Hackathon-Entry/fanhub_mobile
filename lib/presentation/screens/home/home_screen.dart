import 'package:flutter/material.dart';
import 'package:nft_marketplace/config/themes.dart';
import 'package:nft_marketplace/data/constants.dart';
import 'package:nft_marketplace/presentation/screens/create_community/create_community_screen.dart';
import 'package:nft_marketplace/presentation/screens/create_nft/create_nft_screen.dart';

import '../../widgets/bottom_bar_button.dart';
import '../../widgets/glassmorphism.dart';
import '../hub_community_tab/hub_community_tab.dart';
import '../market_place_tab/market_place_screen.dart';
import '../profile_tab/profile_screen.dart';
import 'home_tab_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> screens = [
    const HomeTabScreen(),
    const HubCommunityTabScreen(),
    const MarketPlaceScreen(),
    const ProfileScreen(),
  ];

  // handle onPress Bottom Bar Button
  void onChangeSelectedIndex(int index) {
    setState(() => selectedIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.backGroundColor1,
      appBar: AppBar(
        backgroundColor: ColorConstant.color4,
        elevation: 0.0,
        centerTitle: true,
        title: Align(
          alignment: Alignment.center,
          child: SizedBox(
            height: 30.0,
            child: Image.asset(
              "assets/images/others/fanhub_logo_pic1.png",
              fit: BoxFit.cover,
            ),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: ColorConstant.color5,
              size: 30,
            ),
            tooltip: 'Open shopping cart',
            onPressed: () {},
          ),
        ],
      ),
      body: screens[selectedIndex],
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.transparent,
        onPressed: () {},
        child: Container(
          width: 100,
          height: 100,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: ColorConstant.color3,
          ),
          child: IconButton(
            icon: const Icon(Icons.add, color: Colors.white),
            onPressed: () {
              _showBottomSheet(context);
            },
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: ColorConstant.backGroundColor1,
        child: Glassmorphism(
          blur: 20.0,
          opacity: 0.2,
          radius: 0,
          child: SizedBox(
            height: KHeightBottomBar,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  width: kDefaultExThinPadding,
                ),
                BottomBarButton(
                  onPress: () => onChangeSelectedIndex(0),
                  iconData: bottomBarButtons[0],
                  index: 0,
                  currentSelectedIndex: selectedIndex,
                ),
                BottomBarButton(
                  onPress: () => onChangeSelectedIndex(1),
                  iconData: bottomBarButtons[1],
                  index: 1,
                  currentSelectedIndex: selectedIndex,
                ),
                const SizedBox(
                  width: kDefaultFatPadding,
                ),
                BottomBarButton(
                  onPress: () => onChangeSelectedIndex(2),
                  iconData: bottomBarButtons[2],
                  index: 2,
                  currentSelectedIndex: selectedIndex,
                  iconSize: 22.0,
                ),
                BottomBarButton(
                  onPress: () => onChangeSelectedIndex(3),
                  iconData: bottomBarButtons[3],
                  index: 3,
                  currentSelectedIndex: selectedIndex,
                ),
                const SizedBox(
                  width: kDefaultExThinPadding,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 15.0),
              _ButtonBottomSheet(
                text: "Create Community",
                icon: const Icon(Icons.group),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateCommunityScreen()),
                  );
                },
              ),
              const SizedBox(height: 15.0),
              _ButtonBottomSheet(
                text: "Create Collection",
                icon: const Icon(Icons.collections),
                onTap: () {},
              ),
              const SizedBox(height: 15.0),
              _ButtonBottomSheet(
                text: "Create Item",
                icon: const Icon(Icons.book),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const CreateNFTScreen()),
                  );
                },
              ),
              const SizedBox(height: 15.0),
            ],
          ),
        );
      },
    );
  }
}

class _ButtonBottomSheet extends StatelessWidget {
  final String text;
  final Icon icon;
  final Function onTap;

  const _ButtonBottomSheet({
    Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.grey[300],
          border: Border.all(width: 1, color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                icon,
                const SizedBox(width: 10.0),
                Text(
                  text,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
