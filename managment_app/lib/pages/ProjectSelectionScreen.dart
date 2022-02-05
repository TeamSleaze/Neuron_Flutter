import 'package:flutter/material.dart';

class ProjectSelectionScreen extends StatelessWidget {
  const ProjectSelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          icon: Icon(Icons.menu_rounded),
          onPressed: null,
        ),
        title: const Text('Managment App'),
        actions: <Widget>[
          Row(
            children: const [
              IconButton(
                icon: Icon(Icons.account_circle_rounded),
                onPressed: null,
              ),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                const Text("With Flex"),
                SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          color: Colors.deepOrange[400],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          color: Colors.purpleAccent,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                const Text("Without Flex"),
                SizedBox(
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          color: Colors.red,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.deepOrange[400],
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.purpleAccent,
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
