import 'package:flutter/material.dart';
import 'package:studysync/Api/drawer.dart';

import 'home.dart';

class MyCasestudy extends StatefulWidget {
  const MyCasestudy({super.key});

  @override
  State<MyCasestudy> createState() => _MyCasestudyState();
}

class _MyCasestudyState extends State<MyCasestudy> {
  TextEditingController controller1 = new TextEditingController();
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFB3C9C9),
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade900,
        title: Text(
          "Discover",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 22, color: Colors.white),
        ),
        centerTitle: true,
      ),
      drawer: Drawers(),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 25, 20, 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: controller1,
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  hintText: "Search study techniques",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/studyimg.jpg",
                      ),
                      fit: BoxFit.fill),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 120),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage("assets/images/studyimg.jpg"),
                    ),
                    title: Text(
                      "Explore new Study",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Dhaval Talpada"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/Smartstudy.png",
                      ),
                      fit: BoxFit.fill),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 120),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20, // Adjust the radius as needed
                      backgroundImage: AssetImage("assets/images/lesson.jpeg"),
                    ),
                    title: Text(
                      "Explore Study",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Dhaval Talpada"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/studyvideo.jpg",
                      ),
                      fit: BoxFit.fill),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 120),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20, // Adjust the radius as needed
                      backgroundImage: AssetImage("assets/images/studyimg.jpg"),
                    ),
                    title: Text(
                      "Explore Study Videos",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Dhaval Talpada"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/study-notebooks.jpg",
                      ),
                      fit: BoxFit.fill),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 120),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20, // Adjust the radius as needed
                      backgroundImage: AssetImage("assets/images/studyimg.jpg"),
                    ),
                    title: Text(
                      "Explore Study NoteBooks",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Dhaval Talpada"),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                      image: AssetImage(
                        "assets/images/lesson.jpeg",
                      ),
                      fit: BoxFit.fill),
                  border: Border.all(
                    color: Colors.grey,
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 10, top: 120),
                  child: ListTile(
                    leading: CircleAvatar(
                      radius: 20, // Adjust the radius as needed
                      backgroundImage: AssetImage("assets/images/studyimg.jpg"),
                    ),
                    title: Text(
                      "Explore Study Lesson",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text("Dhaval Talpada"),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
