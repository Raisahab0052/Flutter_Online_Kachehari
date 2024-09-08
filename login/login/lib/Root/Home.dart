import 'package:flutter/material.dart';
import 'package:login/Login/Login.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Login()));
              },
              child: Icon(
                Icons.logout,
                color: Colors.white,
              ))
        ],
        leading: Icon(
          Icons.home,
          size: 30,
          color: Colors.amberAccent,
        ),
        backgroundColor: Colors.deepPurple,
        title: Text(
          "Home",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: Colors.tealAccent),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage("assets/images/background.jpg"),
          fit: BoxFit.cover,
        )),
        child: ListView(
          children: [
            Container(
              height: 300,
              width: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/home.png")),
              ),
            ),
            Center(
              child: SizedBox(
                  width: 300,
                  child: OutlinedButton(
                      onPressed: () {}, child: Text("Welcome TO Home"))),
            )
          ],
        ),
      ),
    );
  }
}
