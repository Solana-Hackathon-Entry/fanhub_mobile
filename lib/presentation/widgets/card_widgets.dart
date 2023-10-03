import 'package:flutter/material.dart';

import '../../config/themes.dart';


class CardHubGroup extends StatelessWidget {
  final String name;
  final String imageUrl;
  final Function? onClick;

  const CardHubGroup({Key? key, required this.name, required this.imageUrl, this.onClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ()=> onClick!(),
      child: Container(
        margin: const EdgeInsets.only(right: 20.0),
        width: 100,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl),
                  fit: BoxFit.cover,
                ),
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.50,
                    color: Colors.black.withOpacity(0.15000000596046448),
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            const SizedBox(height: 10.0),
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: ColorConstant.textColor1,
                fontSize: 13,
                //fontFamily: 'Inter',
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardBlank extends StatelessWidget {
  const CardBlank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 100,
          height: 100,
          decoration: ShapeDecoration(
            color: Colors.black.withOpacity(0.05000000074505806),
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 0.50,
                color: Colors.grey,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: const Icon(
            Icons.add,
            color: Colors.grey,
          ),
        ),
        const Text(
          '',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 13,
            fontFamily: 'Inter',
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}

class ContainerImage extends StatelessWidget {
  final String imageUrl;

  const ContainerImage({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity, child: Image.asset(imageUrl));
  }
}

class CardCommunity extends StatelessWidget {
  final String name;
  final String imageUrl;

  const CardCommunity({Key? key, required this.name, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      width: 100,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 100,
            height: 100,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage(imageUrl),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.50,
                  color: Colors.black.withOpacity(0.15000000596046448),
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
          const SizedBox(height: 5.0),
          Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 13,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 5.0),
          Container(
            height: 30.0,
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            decoration: BoxDecoration(
              gradient: const LinearGradient(
                colors: [Colors.purpleAccent, Colors.deepPurple],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: const Align(
                alignment: Alignment.center,
                child: Text(
                  "Join Now",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                )),
          ),
        ],
      ),
    );
  }
}

class CardFavoriteCollection extends StatelessWidget {
  final String imageUrl;

  const CardFavoriteCollection({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      margin: const EdgeInsets.only(right: 20.0),
      decoration: ShapeDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.fill,
        ),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 0.15,
            color: Colors.white.withOpacity(0.5),
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class CardEventTicket extends StatelessWidget {
  final String imageUri;
  final double width;

  const CardEventTicket({Key? key, required this.imageUri, this.width = 250}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      width: width,
      child: Image.asset(
        imageUri,
        fit: BoxFit.fitWidth,
      ),
    );
  }
}

class CardShoutout extends StatelessWidget {
  final String imageUri;

  const CardShoutout({Key? key, required this.imageUri}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20.0),
      height: 200,
      //width: 200,
      child: Image.asset(
        imageUri,
        fit: BoxFit.fitHeight,
      ),
    );
  }
}