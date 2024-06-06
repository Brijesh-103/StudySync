import 'package:flutter/material.dart';
import 'package:studysync/Api/drawer.dart';
class ProfilePagePage extends StatefulWidget {
  const ProfilePagePage({super.key});

  @override
  State<ProfilePagePage> createState() => _ProfilePagePageState();
}

class _ProfilePagePageState extends State<ProfilePagePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB3C9C9),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        centerTitle: true,
        title: Text(
          "Welcome ",
          style: TextStyle(
              color: Colors.white, fontSize: 27, fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawers(),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              CircleAvatar(
                maxRadius: 50,
                backgroundImage: AssetImage("assets/images/img.png"),
              ),
              SizedBox(height: 10,),
              Text("Brijesh Shekhda",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
              Text("brijeshshekhda103@gmail.com",style: TextStyle(color: Colors.grey.shade600),),
            ],
          ),
          SizedBox(height: 15,),
          Row(
            children: [
              Padding(
                padding: EdgeInsets.only(right: 5),
                child: Text("Complete your profile",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
              )
            ],
          ),
        ],
      ),
    );
  }
}
