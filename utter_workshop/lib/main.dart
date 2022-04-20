import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

// Home Page
class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: ListView(
          padding: const EdgeInsets.all(15),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(
                width: 50,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.grey[400],
                ),
                child: Row(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(300.0),
                      child: Image(
                        image: NetworkImage(
                            "https://i.pinimg.com/564x/23/d3/26/23d3260aef82c932ff42cccf4be2d74b.jpg"),
                        height: 80,
                        width: 100,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Brand new clothes",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Text(
                              "SH-231",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 10),
                            child: Container(
                              decoration: const BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20)),
                                color: Colors.black26,
                              ),
                              child: const Padding(
                                padding: EdgeInsets.only(
                                  top: 8.0,
                                  bottom: 8,
                                  left: 20,
                                  right: 20,
                                ),
                                child: Text(
                                  "Stock : 2",
                                  style: TextStyle(
                                    color: Colors.amberAccent,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
