import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nft_marketplace/presentation/screens/login/login_screen.dart';
import 'package:nft_marketplace/utils/shared_preferences_provider.dart';

import '../../../config/themes.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        //physics: const BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          children: [
            //region area 1
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(50.0),
                                child: Image.asset(
                                    "assets/images/profile/denver.jpg"),
                              ),
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    "Denver Dalman",
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: ColorConstant.textColor1,
                                    ),
                                  ),
                                  const SizedBox(width: 5.0),
                                  const Icon(
                                    Icons.arrow_forward_ios_sharp,
                                    color: Colors.white,
                                    size: 15,
                                  )
                                ],
                              ),
                              Text(
                                "@denver_dalman",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: ColorConstant.textColor1,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.bookmark,
                                color: ColorConstant.color3,
                              ),
                              Icon(
                                Icons.settings,
                                color: ColorConstant.color3,
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            //endregion

            //region area 2
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Text(
                            "26",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: ColorConstant.textColor1,
                            ),
                          ),
                          Text(
                            "Following",
                            style: TextStyle(
                              fontSize: 14,
                              color: ColorConstant.textColor1,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 1,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Text(
                            "100K",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: ColorConstant.textColor1,
                            ),
                          ),
                          Text(
                            "Followers",
                            style: TextStyle(
                              fontSize: 14,
                              color: ColorConstant.textColor1,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 1,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Text(
                            "8",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: ColorConstant.textColor1,
                            ),
                          ),
                          Text(
                            "Collected",
                            style: TextStyle(
                              fontSize: 14,
                              color: ColorConstant.textColor1,
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 40,
                        width: 1,
                        color: Colors.grey,
                      ),
                      Column(
                        children: [
                          Text(
                            "5",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: ColorConstant.textColor1,
                            ),
                          ),
                          Text(
                            "Created",
                            style: TextStyle(
                              fontSize: 14,
                              color: ColorConstant.textColor1,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            //endregion

            //region area 3
            SizedBox(
              width: double.infinity,
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Icon(
                                  FontAwesomeIcons.gift,
                                  color: ColorConstant.color3,
                                  size: 20,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "Offers Made",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: ColorConstant.textColor1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        flex: 1,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 5.0, vertical: 5.0),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Expanded(
                                child: Icon(
                                  FontAwesomeIcons.gift,
                                  color: ColorConstant.color3,
                                  size: 20,
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  "Offers Received",
                                  overflow: TextOverflow.clip,
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: ColorConstant.textColor1,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20.0),
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10.0, vertical: 5.0),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Icon(
                              Icons.currency_bitcoin_outlined,
                              color: Colors.yellow,
                            ),
                            Text(
                              "399",
                              style: TextStyle(
                                color: ColorConstant.textColor1,
                                fontSize: 18,
                              ),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 15.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            "Charge",
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                ColorConstant.color3),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            //endregion

            //region area 4
            SizedBox(
              child: Column(
                children: [
                  _CardOptions(
                    title: 'My Profiles',
                    iconData: Icons.person,
                    iconColor: Colors.blue,
                    onTap: () {},
                  ),
                  _CardOptions(
                    title: 'Badges',
                    iconData: FontAwesomeIcons.award,
                    iconColor: Colors.yellow,
                    onTap: () {},
                  ),
                  _CardOptions(
                    title: 'Messages',
                    iconData: FontAwesomeIcons.envelope,
                    iconColor: Colors.cyan,
                    onTap: () {},
                  ),
                  _CardOptions(
                    title: 'Official Messages',
                    iconData: Icons.notifications,
                    iconColor: Colors.orange,
                    onTap: () {},
                  ),
                  _CardOptions(
                    title: 'Activities',
                    iconData: FontAwesomeIcons.book,
                    iconColor: Colors.pink,
                    onTap: () {},
                  ),
                  _CardOptions(
                    title: 'Log-out',
                    iconData: FontAwesomeIcons.doorClosed,
                    iconColor: Colors.pink,
                    onTap: () {
                      SharedPreferenceProvider pref =
                          SharedPreferenceProvider();
                      pref.setIsLoggedIn(false);
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              const LoginScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            //endregion

            //region area 5
            SizedBox(
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Image.asset("assets/images/profile/banner_pic_1.png"),
                  const SizedBox(height: 20.0),
                ],
              ),
            )
            //endregion
          ],
        ),
      ),
    );
  }
}

class _CardOptions extends StatelessWidget {
  final String title;
  final Function onTap;
  final IconData iconData;
  final Color iconColor;

  const _CardOptions({
    required this.title,
    required this.onTap,
    required this.iconData,
    this.iconColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        margin: const EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
        ),
        child: Column(
          children: [
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        iconData,
                        size: 25.0,
                        color: iconColor,
                      ),
                      const SizedBox(width: 20.0),
                      Expanded(
                        flex: 8,
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                title,
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: ColorConstant.textColor1,
                                ),
                              ),
                            ),
                            const SizedBox(width: 5),
                          ],
                        ),
                      ),
                      const Expanded(
                        flex: 1,
                        child: Icon(
                          Icons.keyboard_arrow_right,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 5.0),
                ],
              ),
            ),
            //Image.asset(imageUri)
          ],
        ),
      ),
    );
  }
}
