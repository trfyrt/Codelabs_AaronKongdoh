import 'package:flutter/material.dart';

// const Color.fromARGB(250, 210, 125, 1)
// const Color.fromARGB(250, 210, 125, 1)
// const Color.fromARGB(250, 210, 125, 1)
class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              print('Menu Button');
            },
            icon: const Icon(
              Icons.menu,
              semanticLabel: 'Menu',
            )),
        title: const Text(
          'SwiftCart',
          style: TextStyle(fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
