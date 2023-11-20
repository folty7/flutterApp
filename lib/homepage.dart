import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isImageVisible = false;

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
                          fontFamily: 'Source Code Pro',
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Column(
                    children: [
                      Text("Facebook", style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'Source Code Pro',),
                      ),
                      Text("Instagram", style: TextStyle(fontSize: 30, color: Colors.white, fontFamily: 'Source Code Pro',),
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
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Welcome to my App!',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.green,
                  fontSize: 33,
                  fontFamily: 'Source Code Pro',
                ),
              ),
              Visibility(
                visible: isImageVisible,
                child: Image(image: AssetImage('assets/img/abagago.jpeg')),
              ),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isImageVisible = true;
                      });
                    },
                    child: Text("Display Image", style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        isImageVisible = false;
                      });
                    },
                    child: Text("Hide Image", style: TextStyle(fontSize: 20, color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
