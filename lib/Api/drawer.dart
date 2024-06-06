import 'package:flutter/material.dart';
import 'package:studysync/Screens/Profile.dart';
import 'package:studysync/Screens/casestudy.dart';
import 'package:studysync/Screens/home.dart';

class Drawers extends StatefulWidget {
  const Drawers({super.key});

  @override
  State<Drawers> createState() => _DrawersState();
}

class _DrawersState extends State<Drawers> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 200,
      surfaceTintColor: Colors.white,
      backgroundColor: Color(0xFFB3C9C9),
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            child: Container(
              width: 120,
              child: Column(
                children: [
                  CircleAvatar(
                    maxRadius: 50,
                    backgroundImage: AssetImage("assets/images/img.png"),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: [
                Icon(Icons.person_rounded),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Profile",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePagePage()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.home,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Home",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Homepage()));
            },
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.book,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Study Log",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.auto_graph,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Progress",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            onTap: () {},
          ),
          ListTile(
            title: Row(
              children: [
                Icon(
                  Icons.menu_book,
                  size: 25,
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Study Plan",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MyCasestudy()));
            },
          ),
        ],
      ),
    );
  }
}
