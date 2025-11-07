import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: Icon(Icons.home),
        backgroundColor: const Color.fromARGB(255, 226, 180, 195),
        foregroundColor: Colors.white,
        title: Text("Homepage"),
        actions: [
          Text("Setting"),
          IconButton(onPressed: (){}, icon: Icon(Icons.settings)),
          IconButton(onPressed: (){}, icon: Icon(Icons.logout)),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add),
      ),
      drawer: NavigationDrawer(children: [
        DrawerHeader(
          child: UserAccountsDrawerHeader(
            accountName: Text("Maisha Farzana"),
            accountEmail: Text("maisha123@gmail.com"),
          ),
        ),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.home),
          title: Text("Home"),
        ),
        ListTile(
          onTap: (){},
          leading: Icon(Icons.person),
          title: Text("Profile"),
        ),
      ]),
    );
  }
}
