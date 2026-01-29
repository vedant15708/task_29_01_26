import 'package:flutter/material.dart';

import 'material_button_demo.dart';

class demo1 extends StatelessWidget {
  const demo1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My First MaterialApp",
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: const TextTheme(bodyLarge: TextStyle(fontSize: 24)),
      ),
      debugShowCheckedModeBanner: false,
      home: MaterialAppDemo(),
    );
  }
}

class MaterialAppDemo extends StatefulWidget {
  const MaterialAppDemo({super.key});

  @override
  State<MaterialAppDemo> createState() => _MaterialAppDemoState();
}

class _MaterialAppDemoState extends State<MaterialAppDemo> {
  int selectedIndex = 0;
  List<Widget> get pages => [
    const MaterialButtonDemo(),
    Center(
      child: Text(
        "Search Screen",
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    ),
    Center(
      child: Text(
        "Settings Screen",
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    ),
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerScrimColor: Colors.red,
      appBar: AppBar(
        title: Text("MaterialApp Demo", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.teal,
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.teal),
              child: Text(
                "Menu",
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),

            ListTile(leading: Icon(Icons.home), title: Text("home")),
            ListTile(leading: Icon(Icons.person), title: Text("Profile")),
          ],
        ),
      ),

      body: pages[selectedIndex],
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Floating Action Button is Clicked")),
          );
        },
        child: Icon(Icons.add),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: selectedIndex,
        onTap: onItemTapped,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Setting"),
        ],
      ),
    );
  }
}
