import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(0),
        width: double.maxFinite,
        height: double.maxFinite,
        child: ListView(children: <Widget>[
          Container(
            padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
            height: 70,
            alignment: Alignment.center,
            color: Color(0xFF2A273F),
            child: Text(
              "Ladida Fashion",
              style: TextStyle(
                color: Color.fromARGB(241, 244, 240, 240),
                fontSize: 16,
                fontFamily: "Inter",
                fontWeight: FontWeight.w300,
              ),
            ),
          ),
          Container(
            // Add padding around the search bar
            padding: const EdgeInsets.fromLTRB(5, 10, 5, 10),

            // Use a Material design search bar
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Search...',
                // Add a clear button to the search bar
                suffixIcon: IconButton(
                  icon: Icon(Icons.clear),
                  onPressed: () => _searchController.clear(),
                ),
                // Add a search icon or button to the search bar
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    // Perform the search here
                  },
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(
                    20.0,
                  ),
                ),
              ),
            ),
          ),
          CarouselSlider(
            items: [
              Container(
                padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
                margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/3119215/pexels-photo-3119215.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
                margin: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/3119215/pexels-photo-3119215.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
                margin: EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://images.pexels.com/photos/3119215/pexels-photo-3119215.jpeg?auto=compress&cs=tinysrgb&w=600"),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 380.0,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 1000),
              viewportFraction: 0.8,
            ),
          ),

          Container(
          margin: EdgeInsets.all(2.0),
          width: 10,
          height: 100,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage("https://images.pexels.com/photos/3119215/pexels-photo-3119215.jpeg?auto=compress&cs=tinysrgb&w=600"),
              fit: BoxFit.fill,
            ),
          ),
        ),


        ]),
      ),
    );

    // This trailing comma makes auto-formatting nicer for build methods.
  }
}
