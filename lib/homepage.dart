import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.green,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: Colors.brown,
          child: Expanded(
            child: ListView(
              children: const [
                DrawerHeader(
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Social Media",
                        style: TextStyle(
                          fontSize: 33,
                          fontWeight: FontWeight.w900,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Column(
                    children: [
                      Text("Facebook", style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Text("Instagram", style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        color: Colors.black,
        child: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to my App!',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.green,
                  fontSize: 33,
                ),
              ),
              Image(image: AssetImage('assets/img/abagago.jpeg')),
              Text(
                'Jakoo',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.red,
                  fontSize: 36,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
