import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class EntertainerTab extends StatefulWidget {
  const EntertainerTab({Key? key}) : super(key: key);

  @override
  State<EntertainerTab> createState() => _EntertainerTabState();
}

class _EntertainerTabState extends State<EntertainerTab> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 20.0),
          _EntertainerPost(),
          _EntertainerPost(),
          _EntertainerPost(),
          _EntertainerPost(),
          _EntertainerPost(),
        ],
      ),
    );
  }
}

class _EntertainerPost extends StatelessWidget {
  const _EntertainerPost({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 2,
          child: Column(
            children: [
              const CircleAvatar(
                backgroundColor: Colors.white,
                radius: 20, // Adjust the radius according to your desired size
                backgroundImage: AssetImage('assets/images/community/pic_1.png'),
              ),
              const Text(
                "07",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                ),
              ),
              Text(
                "JUN",
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey[600],
                ),
              )
            ],
          ),
        ),
        Expanded(
          flex: 10,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey[350],
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding: const EdgeInsets.only(left: 20.0, right: 10.0, top: 20.0, bottom: 20.0),
                margin: const EdgeInsets.only(right: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: const [
                        Text(
                          "Wise",
                          style: TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 5.0),
                        Icon(
                          Icons.check_circle,
                          color: Colors.lightBlue,
                          size: 18.0,
                        )
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    const Text(
                      "Hindi ka makakalusot bro, haha",
                      style: TextStyle(
                        fontSize: 14.0,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Text(
                      "06.15. 20:30",
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
            ],
          ),
        )
      ],
    );
  }
}
