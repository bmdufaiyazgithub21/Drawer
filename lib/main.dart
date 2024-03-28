import 'package:flutter/material.dart';

// function to trigger app build
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  final appTitle = 'Flutter Drawer Demo';

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    ); // MaterialApp
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.comment),
            tooltip: 'Comment Icon',
            onPressed: () {},
          ), //IconButton
          IconButton(
            icon: const Icon(Icons.settings),
            tooltip: 'Setting Icon',
            onPressed: () {},
          ), //IconButton
        ], //<
        title: Text(title),
        backgroundColor: Colors.deepPurple,
      ),

      body: const Center(
          child: Text(
            'A drawer is an invisible side screen.',
            style: TextStyle(fontSize: 20.0),
          )),
      drawer: Drawer(
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.grey,
              ), //BoxDecoration
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(color: Colors.black),
                accountName: Text(
                  "Faiyaz Ahmad",
                  style: TextStyle(fontSize: 18),
                ),
                accountEmail: Text("faiyazvicky51@gmail.com"),
                currentAccountPicture:CircleAvatar(
                  backgroundImage: AssetImage("assets/images/user.png"),
                ) //circleAvatar
              ), //UserAccountDrawerHeader
            ), //DrawerHeader
            ListTile(
              leading: const Icon(Icons.person,color: Colors.indigo,),
              title: const Text(' My Profile ',style: TextStyle(color: Colors.deepOrange),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.book,color: Colors.indigo,),
              title: const Text(' My Course ',style: TextStyle(color: Colors.deepOrange),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.workspace_premium,color: Colors.indigo,),
              title: const Text(' Go Premium ',style: TextStyle(color: Colors.deepOrange),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.star_rate,color: Colors.indigo,),
              title: const Text(' Rating ',style: TextStyle(color: Colors.deepOrange),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.video_label,color: Colors.indigo,),
              title: const Text(' Saved Videos ',style: TextStyle(color: Colors.deepOrange),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.edit,color: Colors.indigo,),
              title: const Text(' Edit Profile ',style: TextStyle(color: Colors.deepOrange),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout,color: Colors.indigo,),
              title: const Text('LogOut',style: TextStyle(color: Colors.deepOrange),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      //Drawer
    );
  }
}
