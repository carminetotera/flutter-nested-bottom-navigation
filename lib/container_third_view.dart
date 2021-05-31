import 'package:flutter/material.dart';
import 'package:nested_navigation/AppRouter.dart';

class ContainerThirdView extends StatefulWidget {
  final ValueChanged<String> onPush;
  final String title;

  const ContainerThirdView({Key key, this.onPush, this.title})
      : super(key: key);

  @override
  _ContainerThirdViewState createState() => _ContainerThirdViewState();
}

class _ContainerThirdViewState extends State<ContainerThirdView> {
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
              color: Colors.orange,
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, AppRouter.EXPLORE_HOME, (route) => false);
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
