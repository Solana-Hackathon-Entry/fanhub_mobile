import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nft_marketplace/domain/entities/nft_card_entity.dart';

import '../domain/entities/offer_bid_entity.dart';
import '../domain/entities/ranking_card_entity.dart';
import '../domain/entities/theme_card_entity.dart';

const double kWidthSideMenu = 100.0;
const double kHeightAppBar = 100.0;
const double KHeightBottomBar = 60.0;

// Padding
const double kDefaultExThinPadding = 8.0;
const double kDefaultThinPadding = 12.0;
const double kDefaultPadding = 16.0;
const double kDefaultWidePadding = 24.0;
const double kDefaultFatPadding = 40.0;

const bottomBarButtons = [
  Icons.home_outlined,
  Icons.people,
  FontAwesomeIcons.store,
  Icons.person,
];

// Font Styles
class UIFontStyles {
  static const centuryGothic = "gothic";
  static const montserratRegular = "montserrat_regular";
  static const montserratBold = "montserrat_bold";
}

// Image Path
const String kImagePath = "assets/images";

final ThemeCardEntities = [
  ThemeCardEntity(
    imageUrl: "$kImagePath/tier_one_1.png",
    title: "GAMING",
  ),
  ThemeCardEntity(
    imageUrl: "$kImagePath/sb19_1.png",
    title: "P-POP",
  ),
  ThemeCardEntity(
    imageUrl: "$kImagePath/yalamber-limbu-DS2ZIDNxWgk-unsplash.jpg",
    title: "Fashion",
  ),
];

final gamingCardModels = [
  ThemeCardEntity(
    imageUrl: "$kImagePath/black_list_1.png",
    title: "BLACK LIST",
  ),
  ThemeCardEntity(
    imageUrl: "$kImagePath/og_1.png",
    title: "OG",
  ),
  ThemeCardEntity(
    imageUrl: "$kImagePath/tundra_1.png",
    title: "TUNDRA",
  ),
];

final ppopCardModels = [
  ThemeCardEntity(
    imageUrl: "$kImagePath/sb19.png",
    title: "SB19",
  ),
  ThemeCardEntity(
    imageUrl: "$kImagePath/vxon_1.png",
    title: "VXON",
  ),
  ThemeCardEntity(
    imageUrl: "$kImagePath/horizon_pic1.png",
    title: "HORIZON",
  ),
];

final trendingCards = [
  NFTCardEntity(
    name: 'Denver Dalman',
    imageUrl: '$kImagePath/denver_pic1.png',
    favoriteNumber: 1000,
  ),
  NFTCardEntity(
    name: 'BANG',
    imageUrl: '$kImagePath/home_page_pic2.png',
    favoriteNumber: 700,
  ),
  NFTCardEntity(
    name: 'Breaking Bad',
    imageUrl: '$kImagePath/home_page_pic3.png',
    favoriteNumber: 900,
  ),
  NFTCardEntity(
    name: 'Joker Art',
    imageUrl: '$kImagePath/nft3.jpg',
    favoriteNumber: 200,
  ),
];
final topsellCards = [
  NFTCardEntity(
    name: 'YGIG',
    imageUrl: '$kImagePath/ygig_pic1.png',
    favoriteNumber: 1000,
  ),
  NFTCardEntity(
    name: 'Horizon',
    imageUrl: '$kImagePath/horizon_pic1.png',
    favoriteNumber: 700,
  ),
  NFTCardEntity(
    name: 'YARA',
    imageUrl: '$kImagePath/yara.png',
    favoriteNumber: 900,
  ),
];

final rankingCards = [
  RankingCardEntity(
    name: 'Famous Person',
    imageUrl: '$kImagePath/nft_sell_1.jpg',
    ether: 3331.1,
    percent: 38.9,
  ),
  RankingCardEntity(
    name: 'Famous Person',
    imageUrl: '$kImagePath/nft_sell_2.jpg',
    ether: 1111.1,
    percent: 44.9,
  ),
  RankingCardEntity(
    name: 'Famous Person',
    imageUrl: '$kImagePath/nft_sell_3.jpg',
    ether: 2351.1,
    percent: 21.9,
  ),
  RankingCardEntity(
    name: 'Famous Person',
    imageUrl: '$kImagePath/nft_sell_4.jpg',
    ether: 765563.1,
    percent: -28.9,
  ),
  RankingCardEntity(
    name: 'Famous Person',
    imageUrl: '$kImagePath/nft_sell_5.jpg',
    ether: 22341.1,
    percent: -8.9,
  ),
  RankingCardEntity(
    name: 'Famous Person',
    imageUrl: '$kImagePath/nft_sell_2.jpg',
    ether: 22341.1,
    percent: -3.9,
  ),
  RankingCardEntity(
    name: 'Famous Person',
    imageUrl: '$kImagePath/nft.jpg',
    ether: 22341.1,
    percent: 77.9,
  ),
  RankingCardEntity(
    name: 'Famous Person',
    imageUrl: '$kImagePath/nft2.jpg',
    ether: 22341.1,
    percent: 1.9,
  ),
  RankingCardEntity(
    name: 'Famous Person',
    imageUrl: '$kImagePath/nft3.jpg',
    ether: 22341.1,
    percent: -2.9,
  ),
  RankingCardEntity(
    name: 'Famous Person',
    imageUrl: '$kImagePath/yalamber-limbu-DS2ZIDNxWgk-unsplash.jpg',
    ether: 22341.1,
    percent: 18.9,
  ),
];

final discoverMore = [
  DiscoverMoreEntity(
    name: 'Distant Galaxy',
    imageUrl: '$kImagePath/nft_sell_1.jpg',
    favoriteNumber: 1000,
    subName: 'MoonDancer',
    price: '1.63 ETH',
    highestBid: '0.33 wETH',
  ),
  DiscoverMoreEntity(
    name: 'Famous Person',
    imageUrl: '$kImagePath/nft_sell_1.jpg',
    favoriteNumber: 1000,
    subName: '',
    price: '',
    highestBid: '',
  ),
  DiscoverMoreEntity(
    name: 'Famous Person',
    imageUrl: '$kImagePath/nft_sell_1.jpg',
    favoriteNumber: 1000,
    subName: '',
    price: '',
    highestBid: '',
  ),
];

final listNFT = [
  NFTCardEntity(
    name: 'SB19 Photocards',
    imageUrl: '$kImagePath/sb19_phcards_pic1.png',
    favoriteNumber: 1000,
  ),
  NFTCardEntity(
    name: 'Sapatos ng sikat',
    imageUrl: '$kImagePath/shoes_pic.png',
    favoriteNumber: 700,
  ),
  NFTCardEntity(
    name: 'kutsara ng sikat',
    imageUrl: '$kImagePath/spoon_pic1.png',
    favoriteNumber: 900,
  ),
];

final blackList = [
  IdolCardEntity1(
    name: 'Veenus',
    imageUrl: '$kImagePath/venus1.png',
    favoriteNumber: 20.5,
    heart: 155,
  ),
  IdolCardEntity1(
    name: 'Hadji',
    imageUrl: '$kImagePath/hadji1.png',
    favoriteNumber: 40.5,
    heart: 200,
  ),
  IdolCardEntity1(
    name: 'Oheb',
    imageUrl: '$kImagePath/oheb1.png',
    favoriteNumber: 900,
    heart: 400,
  ),
];

final veenusListModel = [
  OfferBidEntity(price: 29.0, usdPrice: 34.0, quantity: 10, from: "ERGFS2324"),
  OfferBidEntity(price: 25.0, usdPrice: 15.0, quantity: 200, from: "ZCVCXVXCVXC"),
  OfferBidEntity(price: 32.0, usdPrice: 50.0, quantity: 50, from: "EWRRWERWEWG")
];
