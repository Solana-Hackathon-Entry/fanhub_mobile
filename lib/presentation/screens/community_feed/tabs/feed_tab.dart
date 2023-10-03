import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../config/themes.dart';

class FeedTab extends StatefulWidget {
  const FeedTab({Key? key}) : super(key: key);

  @override
  State<FeedTab> createState() => _FeedTabState();
}

class _FeedTabState extends State<FeedTab> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: ColorConstant.backGroundColor1,
        width: double.infinity,
        child: Column(
          children: [

            //region section feed
            Container(
              color: Colors.grey[100],
              child: Column(
                children: [
                  const SizedBox(height: 20.0),
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 90.0,
                          height: 50.0,
                          child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50.0),
                              child: Image.asset("assets/images/profile/denver.jpg"),
                            ),
                          ),
                        ),
                        const Text("Write something..."),
                        const Spacer(),
                        const Icon(Icons.photo),
                        const SizedBox(width: 20.0),
                      ],
                    ),
                  ),
                  const _CardPost(
                    imagePath: "assets/images/profile/mark_anthony.jpg",
                    imagePicPost: "assets/images/guild/guild_pic_2.png",
                    name: "Mark Anthony",
                    post: "Good game! Grabe, how to you po :(",
                  ),
                  const _CardPost(
                    imagePath: "assets/images/profile/jerika.jpg",
                    imagePicPost: "assets/images/guild/guild_pic_2.png",
                    name: "Jerika Cleto",
                    post: "What a clutch!",
                  ),
                  const _CardPost(
                    imagePath: "assets/images/profile/justine.jpg",
                    imagePicPost: "assets/images/profile/denver.jpg",
                    name: "Justine Borbe",
                    post: "Lakad matatag!",
                  ),
                  const _CardPost(
                    imagePath: "assets/images/profile/denver.jpg",
                    imagePicPost: "assets/images/profile/denver.jpg",
                    name: "Denver",
                    post: "What do you guys do to stay motivated after a hug setback?",
                  ),
                ],
              ),
            ),
            //endregion
          ],
        ),
      ),
    );
  }
}

class _CardPost extends StatelessWidget {
  final String name;
  final String post;
  final String imagePath;
  final String imagePicPost;
  final bool? hasPhoto;

  const _CardPost({
    this.name = "Name",
    this.post = "Post",
    this.imagePath = "",
    this.imagePicPost = "",
    this.hasPhoto = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10 - .0),
      decoration: const BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.5,
          ),
        ),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            margin: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 10.0),
            child: Row(
              children: [
                SizedBox(
                  width: 90.0,
                  height: 50.0,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(imagePath),
                    ),
                  ),
                ),
                Text(
                  name,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17.0),
                ),
              ],
            ),
          ),
          Container(
              width: double.infinity,
              margin: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              child: Text(
                post,
                maxLines: null,
              )),
          Visibility(
            maintainSize: false,
            visible: hasPhoto ?? false,
            child: Image.asset(
              imagePicPost,
              fit: BoxFit.fill,
            ),
          ),
          Row(
            children: [
              TextButton(
                child: const Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              const Text("99"),
              const SizedBox(width: 10.0),
              TextButton(
                child: const Icon(
                  FontAwesomeIcons.comment,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
              const Text("99"),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Comment...",
                contentPadding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                      style: BorderStyle.solid,
                    )),
                focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(3.0),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 0.5,
                      style: BorderStyle.solid,
                    )),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
