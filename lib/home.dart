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
				
				//1st Image of Slider
				Container(
				margin: EdgeInsets.all(6.0),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(8.0),
					image: DecorationImage(
					image: NetworkImage("https://images.pexels.com/photos/17644160/pexels-photo-17644160/free-photo-of-landscape.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
					fit: BoxFit.cover,
					),
				),
				),
				
				//2nd Image of Slider
				Container(
				margin: EdgeInsets.all(6.0),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(8.0),
					image: DecorationImage(
					image: NetworkImage("https://images.pexels.com/photos/17644160/pexels-photo-17644160/free-photo-of-landscape.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
					fit: BoxFit.cover,
					),
				),
				),
				
				//3rd Image of Slider
				Container(
				margin: EdgeInsets.all(6.0),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(8.0),
					image: DecorationImage(
					image: NetworkImage("https://images.pexels.com/photos/17644160/pexels-photo-17644160/free-photo-of-landscape.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
					fit: BoxFit.cover,
					),
				),
				),
				
				//4th Image of Slider
				Container(
				margin: EdgeInsets.all(6.0),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(8.0),
					image: DecorationImage(
					image: NetworkImage("https://images.pexels.com/photos/17644160/pexels-photo-17644160/free-photo-of-landscape.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
					fit: BoxFit.cover,
					),
				),
				),
				
				//5th Image of Slider
				Container(
				margin: EdgeInsets.all(6.0),
				decoration: BoxDecoration(
					borderRadius: BorderRadius.circular(8.0),
					image: DecorationImage(
					image: NetworkImage("https://images.pexels.com/photos/17644160/pexels-photo-17644160/free-photo-of-landscape.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load"),
					fit: BoxFit.cover,
					),
				),
				),

		],
			
			//Slider Container properties
			options: CarouselOptions(
				height: 180.0,
				enlargeCenterPage: true,
				autoPlay: true,
				aspectRatio: 16 / 9,
				autoPlayCurve: Curves.fastOutSlowIn,
				enableInfiniteScroll: true,
				autoPlayAnimationDuration: Duration(milliseconds: 800),
				viewportFraction: 0.8,
			),
		),
		],
	),

	),
    );
}
}



     
