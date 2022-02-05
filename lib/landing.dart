import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Landing Page',
      theme: ThemeData(
        backgroundColor: const Color(0XFEF0F0F0),
        fontFamily: 'Lora',
      ),
      home: const MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final double coverHeight = 250;
  final double profileHeight = 130;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          buildTop(),
          buildContext(),
          buildAbout(),
        ],
      ),
    );
  }

  Widget buildTop() {
    final bottom = profileHeight / 2;
    final top = coverHeight - profileHeight / 2;
    return Stack(
      clipBehavior: Clip.none,
      //overlaps the functions
      alignment: Alignment.center,
      children: [
        //everything insid ethe children is overlapped
        Container(
          margin: EdgeInsets.only(bottom: bottom),
          child: buildCoverImage(),
        ),
        Positioned(
          top: top,
          child: buildProfileImage(),
        )
      ],
    );
  }

  Widget buildContext() => Column(
        children: [
          const SizedBox(height: 6),
          const Text(
            'Aishwarya Pai',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 6),
          const Text(
            'App Developer',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black45,
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              ElevatedButton(
                // child: const Text('Open Github'),
                child: Image.asset("assets/images/github.png"),

                onPressed: () async {
                  const url = 'https://github.com/AishwaryaPai20';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceWebView: true,
                      enableJavaScript: true,
                    );
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                style: ElevatedButton.styleFrom(
                    primary: const Color(0XFEd0d2d9),
                    fixedSize: const Size.square(60.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              ElevatedButton(
                onPressed: () async {
                  const url =
                      'https://www.linkedin.com/in/aishwarya-pai-b393ab174/';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceWebView: true,
                      enableJavaScript: true,
                    );
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image.asset("assets/images/linkedin.png"),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0XFEd0d2d9),
                    fixedSize: const Size.square(60.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              ElevatedButton(
                onPressed: () async {
                  const url = 'https://www.instagram.com/aishwaryampai03/';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceWebView: true,
                      enableJavaScript: true,
                    );
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image.asset("assets/images/instagram.png"),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0XFEd0d2d9),
                    fixedSize: const Size.square(60.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
              ElevatedButton(
                onPressed: () async {
                  const url = 'https://medium.com/@aishwaryampai200203';
                  if (await canLaunch(url)) {
                    await launch(
                      url,
                      forceWebView: true,
                      enableJavaScript: true,
                    );
                  } else {
                    throw 'Could not launch $url';
                  }
                },
                child: Image.asset("assets/images/medium.png"),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0XFEd0d2d9),
                    fixedSize: const Size.square(60.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ],
          ),
          const SizedBox(
            height: 12,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: 5.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: const Color(0XFE265753)),
              ),
              Image.asset("assets/images/star.png"),
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: 5.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: const Color(0XFE265753)),
              ),
            ],
          ),
        ],
      );

  Widget buildAbout() => Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            SizedBox(height: 6),
            Text(
              'About',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'Hi there! I am studying Computer Science at SRM University. During my first year, I did some web development. At present, I\'m working on Flutter app development and strengthening my Java concepts. I also like solving analytical problems. In my spare time, I draw, listen to music and binge-watch.',
              style: TextStyle(
                fontSize: 15,
                color: Colors.black,
              ),
            ),
          ],
        ),
      );

  Widget buildCoverImage() => Container(
        color: Colors.grey,
        child: Image.asset(
          "assets/images/bg2.jpg",
          width: double.infinity,
          height: coverHeight,
          fit: BoxFit.cover,
        ),
      );

  Widget buildProfileImage() => CircleAvatar(
        radius: profileHeight / 2,
        backgroundColor: Colors.grey.shade800,
        backgroundImage: const AssetImage(
          "assets/images/profile.jpeg",
        ),
      );
}
