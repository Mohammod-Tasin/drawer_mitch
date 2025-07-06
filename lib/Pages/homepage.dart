import 'package:drawer_mitch/Pages/first_page.dart';
import 'package:drawer_mitch/Pages/second_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.deepPurple),
      body: Center(
        child: Text("H O M E P A G E"),
      ),
      drawer: Drawer(
        child: Container(
          color: const Color.fromARGB(255, 179, 152, 255),
          child: ListView(
            children: [
              DrawerHeader(
                child: Center(
                  child: Text("L O G O", style: TextStyle(fontSize: 35)),
                ),
              ),

              ListTile(
                leading: Icon(Icons.home),
                title: Text("Page 1", style: TextStyle(fontSize: 20)),
                onTap: () {
                  Navigator.of(
                    context,
                  ).push(MaterialPageRoute(builder: (context) => FirstPage()));
                },//navigator of this current context. push the command that will take us to a different page
              ),

              ListTile(
                leading: Icon(Icons.cabin),
                title: Text("Page 2", style: TextStyle(fontSize: 20)),
                onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context)=>SecondPage())),
              )
            ],
          ),
        ),
      ),
    );
  }
}
