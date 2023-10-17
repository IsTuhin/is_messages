import 'package:flutter/material.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("IsMessenger"),
        leading: Icon(Icons.home),
        actions: [

          //search button
          IconButton(onPressed: (){}, icon:Icon(Icons.search)),


          //more feature button
          IconButton(onPressed: (){}, icon:Icon(Icons.more_vert)),


        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FloatingActionButton(
          onPressed: (){}, child: Icon(Icons.add),
        ),
      ),

    );
  }
}
