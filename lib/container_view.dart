import 'package:flutter/material.dart';

import 'AppRouter.dart';

class ContainerView extends StatefulWidget {
  final ValueChanged<String> onPush;
  final String title;

  const ContainerView({Key key, this.onPush, this.title}) : super(key: key);

  @override
  _ContainerViewState createState() => _ContainerViewState();
}

class _ContainerViewState extends State<ContainerView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.greenAccent,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 100,
            color: Colors.blue,
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, AppRouter.EXPLORE_CONTAINER_TWO);
              },
            ),
          )
        ],
      ),
    );
  }
}
