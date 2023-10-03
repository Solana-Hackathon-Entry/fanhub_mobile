import 'package:flutter/material.dart';
import 'package:nft_marketplace/data/constants.dart';

import 'glassmorphism.dart';

class NFTCardWidgetCollections extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double favoriteNumber;
  final VoidCallback onPress;

  const NFTCardWidgetCollections({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.favoriteNumber,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Glassmorphism(
      blur: 20,
      opacity: 0.1,
      radius: 20.0,
      child: SizedBox(
       // width: 150.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 200 * 0.8,
              width: 150.0,
              padding: const EdgeInsets.all(kDefaultExThinPadding),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(kDefaultExThinPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
                 /* Row(
                    children: [
                      const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 12.0,
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        '$favoriteNumber',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NFTCardWidgetIdolsGroup extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double favoriteNumber;
  final VoidCallback onPress;

  const NFTCardWidgetIdolsGroup({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.favoriteNumber,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Glassmorphism(
      blur: 20,
      opacity: 0.1,
      radius: 20.0,
      child: SizedBox(
        width: 150.0,
        child: Column(
          children: [
            Container(
              height: 200 * 0.8,
              width: 150.0,
              padding: const EdgeInsets.all(kDefaultExThinPadding),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // const Spacer(),
            Padding(
              padding: const EdgeInsets.all(kDefaultExThinPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
            /*      Row(
                    children: [
                      *//*const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 12.0,
                      ),*//*
                      SizedBox(
                        height: 15.0,
                        width: 15.0,
                        child: ClipRRect(
                          // borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/images/pop_coin.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        '$favoriteNumber',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),*/
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NFTCardWidgetDiscoverMore extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double favoriteNumber;
  final VoidCallback onPress;

  const NFTCardWidgetDiscoverMore({
    Key? key,
    required this.imageUrl,
    required this.name,
    required this.favoriteNumber,
    required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      /*blur: 20,
      opacity: 0.1,
      radius: 20.0,*/
      color: const Color(0xFF3B3B3B),
      child: SizedBox(
        width: 150.0,
        child: Column(
          children: [
            Container(
              height: 200 * 0.8,
              width: 150.0,
              //padding: const EdgeInsets.all(kDefaultExThinPadding),
              child: ClipRRect(
               // borderRadius: BorderRadius.circular(20.0),
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            // const Spacer(),
            Padding(
              padding: const EdgeInsets.all(kDefaultExThinPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12.0,
                    ),
                    overflow: TextOverflow.clip,
                    maxLines: 2,
                  ),
                  Row(
                    children: [
                      /*const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 12.0,
                      ),*/
                      SizedBox(
                        height: 15.0,
                        width: 15.0,
                        child: ClipRRect(
                          // borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            'assets/images/pop_coin.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(width: 5.0),
                      Text(
                        '$favoriteNumber',
                        style: TextStyle(
                          color: Colors.white.withOpacity(0.8),
                          fontSize: 12.0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
