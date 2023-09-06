import 'package:cw6/details.dart';
import 'package:cw6/movies.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  var buildings = [
    Buildings(
        name: "ابراج الكويت",
        Image:
            "https://www.almenhaj.net/wp-content/uploads/%D8%A3%D8%A8%D8%B1%D8%A7%D8%AC-%D8%A7%D9%84%D9%83%D9%88%D9%8A%D8%AA-2.jpg"),
    Buildings(
        name: "برج التحرير",
        Image:
            "https://arab-trip.com/wp-content/uploads/2019/07/unnamed-file-19697.jpg"),
    Buildings(
        name: "المسجد الكبير",
        Image:
            "https://th.bing.com/th/id/R.c99f4fd233ac65daf3544350e0383aea?rik=3Vy5P8NXuSOiyQ&pid=ImgRaw&r=0&sres=1&sresct=1")
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Kuwait City LandMarks"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: ListView.builder(
            itemCount: buildings.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Image.network(buildings[index].name),
                title: Text(buildings[index].name),
                subtitle: IconButton(
                  icon: Icon(Icons.arrow_forward_ios),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailsPage(flutter: buildings[index])));
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
