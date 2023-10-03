import 'package:flutter/material.dart';

abstract class BaseStatefulWidget extends StatefulWidget {
  const BaseStatefulWidget({Key? key}) : super(key: key);

//BaseState createStateInstance();
}

abstract class BaseState<T extends BaseStatefulWidget> extends State<T> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("base stateful widget: HELLO");
  }

  @override
  Widget build(BuildContext context) {
    return buildWidget(context);
  }

  Widget buildWidget(BuildContext context);
}
