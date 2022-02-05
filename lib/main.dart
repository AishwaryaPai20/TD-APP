import 'dart:developer';
import 'package:flutter/material.dart';
import './landing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

// This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      theme: ThemeData(
        backgroundColor: const Color(0XFEF0F0F0),
        fontFamily: 'Lora',
        // theme: Themes.light,
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Theme.of(context).backgroundColor,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Theme.of(context).backgroundColor,
        actions: [],
      ),
      body: ListView(
        children: [
          Center(
            child: Image.asset("assets/images/logo.png"),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text("Continue with"),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  log("Facebook", name: "OAuth Buttons");
                },
                child: Image.asset("assets/images/fb.png"),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0XFEDDE3DC),
                    fixedSize: const Size.square(80.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              ElevatedButton(
                onPressed: () {
                  log("Google", name: "OAuth Buttons");
                },
                child: Image.asset("assets/images/g.png"),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0XFEDDE3DC),
                    fixedSize: const Size.square(80.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
              ElevatedButton(
                onPressed: () {
                  log("Github", name: "OAuth Buttons");
                },
                child: Image.asset("assets/images/gh.png"),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0XFEDDE3DC),
                    fixedSize: const Size.square(80.0),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: 5.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: const Color(0XFE9955bb)),
              ),
              Image.asset("assets/images/star.png"),
              Container(
                width: MediaQuery.of(context).size.width * 0.40,
                height: 5.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50.0),
                    color: const Color(0XFE9955bb)),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text("Old School?",
                style: TextStyle(color: Color(0XFE32481C), fontSize: 18.0)),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none),
                  fillColor: Colors.grey[300],
                  filled: true,
                  hintText: "Email"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      borderSide: BorderSide.none),
                  fillColor: Colors.grey[300],
                  filled: true,
                  hintText: "Password"),
            ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          SizedBox(
            height: 50.0,
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MainPage()),
                  );
                },
                child: const Text(
                  "Login",
                  style: TextStyle(color: Color(0XFEDDE3DC)),
                ),
                style: ElevatedButton.styleFrom(
                    primary: const Color(0XFE522d80),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
