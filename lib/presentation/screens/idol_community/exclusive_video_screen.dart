import 'package:flutter/material.dart';

class ExclusiveScreen extends StatefulWidget {
  const ExclusiveScreen({Key? key}) : super(key: key);

  @override
  State<ExclusiveScreen> createState() => _ExclusiveScreenState();
}

class _ExclusiveScreenState extends State<ExclusiveScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      color: const Color(0xFF2B2B2B),
      child: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20.0),
            /// Events
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Events",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.clip,
                maxLines: 2,
              ),
            ),
            SizedBox(height: 10.0),
            _CardEvents(
              eventName: "May 1, Meet Up",
            ),
            _CardEvents(
              eventName: "July 7, Concert in Araneta",
            ),
            _CardEvents(
              eventName: "Oct 3, Meet and greet",
            ),
            SizedBox(height: 20.0),
            /// Events
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Polls",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.clip,
                maxLines: 2,
              ),
            ),
            SizedBox(height: 10.0),
            _CardPolls(),
            SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

class _CardEvents extends StatelessWidget {
  final String eventName;
  const _CardEvents({Key? key, required this.eventName}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: 30.0,
            child: Image.asset(
              "assets/images/calendar_pic.png",
              fit: BoxFit.cover,
            ),
          ),
          Text(eventName, style: TextStyle(color: Colors.grey[100]),),
          ElevatedButton(onPressed: (){}, child: const Text("Book"))
        ],
      ),
    );
  }
}

class _CardPolls extends StatelessWidget {
  const _CardPolls({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Align(
            alignment: Alignment.centerLeft,
            child: Text("Where do you want us to concert?", style: TextStyle(color: Colors.white),)),
        Container(
          margin: const EdgeInsets.only(top: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Row(
                children: [
                  Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: false, onChanged: (bool? value) {  },
                  ),
                  Text("Cubao", style: TextStyle(color: Colors.grey[100]),),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: false, onChanged: (bool? value) {  },
                  ),
                  Text("Araneta", style: TextStyle(color: Colors.grey[100]),),
                ],
              ),
              Row(
                children: [
                  Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    value: false, onChanged: (bool? value) {  },
                  ),
                  Text("Antipolo", style: TextStyle(color: Colors.grey[100]),),
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}
