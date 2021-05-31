import 'package:flutter/material.dart';

import 'AppRouter.dart';

class ContainerSecondView extends StatefulWidget {
  final ValueChanged<String> onPush;
  final String title;

  const ContainerSecondView({Key key, this.onPush, this.title})
      : super(key: key);

  @override
  _ContainerSecondViewState createState() => _ContainerSecondViewState();
}

class _ContainerSecondViewState extends State<ContainerSecondView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text(
          "2",
        ),
      ),
      body: Container(
        color: Colors.greenAccent,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              color: Colors.grey,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(
                      context, AppRouter.EXPLORE_CONTAINER_THIRD);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
