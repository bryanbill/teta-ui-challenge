import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:teta/secondpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Teta',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: const Color.fromRGBO(17, 16, 17, 1),
              ),
              color: const Color.fromRGBO(17, 16, 17, 1),
            ),
            backgroundColor: const Color.fromRGBO(17, 16, 17, 1),
            primaryColor: const Color.fromRGBO(212, 115, 89, 1)),
        home: const App());
  }
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        color: Theme.of(context).backgroundColor,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                height: 40,
                width: 50,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(top: 40),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
                child: Icon(Icons.menu),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "PLANETS",
              style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40,
            ),
            Expanded(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "MERCURY",
                    style: TextStyle(
                        color: Color.fromRGBO(181, 120, 104, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "VENUS",
                    style: TextStyle(
                        color: Color.fromRGBO(181, 120, 104, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "EARTH",
                    style: TextStyle(
                        color: Color.fromRGBO(181, 120, 104, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                      context, MaterialPageRoute(builder: (_) => SecondPage())),
                  child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 80,
                      alignment: Alignment.center,
                      padding: EdgeInsets.only(left: 30),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.grey)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "MARS",
                            style: TextStyle(
                                color: Color.fromRGBO(181, 120, 104, 1),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          Hero(
                            tag: "mars",
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(100),
                              child: Image.asset(
                                "assets/images/mars.png",
                                width: 80,
                                height: 80,
                              ),
                            ),
                          )
                        ],
                      )),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "JUPITER",
                    style: TextStyle(
                        color: Color.fromRGBO(181, 120, 104, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "SATURN",
                    style: TextStyle(
                        color: Color.fromRGBO(181, 120, 104, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "URANUS",
                    style: TextStyle(
                        color: Color.fromRGBO(181, 120, 104, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    "NEPTUNE",
                    style: TextStyle(
                        color: Color.fromRGBO(181, 120, 104, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            )),
            SizedBox(
              height: 40,
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Container(
                width: 50,
                height: 50,
                color: Theme.of(context).primaryColor,
                child: Center(child: Icon(Icons.add)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
