import 'package:flutter/material.dart';
import 'package:sample/10-10-24-whatsapp/calls.dart';

class wpHome extends StatefulWidget {
  const wpHome({super.key});

  @override
  State<wpHome> createState() => _wpHomeState();
}

class _wpHomeState extends State<wpHome> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController =TabController(length: 3, vsync: this);

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

   
      appBar: AppBar(
        title: Text("WhatsApp",
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.w300)),
        backgroundColor: const Color.fromARGB(255, 23, 23, 23),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.camera_alt_outlined,color: Colors.green,)),
          IconButton(onPressed: () {}, icon: Icon(Icons.search,color: Colors.green,)),
          IconButton(onPressed: () {}, icon: Icon(Icons.menu_outlined,color: Colors.green,))
        ],
        bottom: TabBar(controller: _tabController,
        unselectedLabelColor: Colors.grey[300],
        labelStyle: TextStyle(color: Colors.white),
        
        tabs: [
          Tab(
            text: "Calls",
             
          ),
          Tab(
            text: "Chats",
          ),
          Tab(
            text: "Contacts",
          )
        ]),
      ),
      body: TabBarView(
        physics:const BouncingScrollPhysics(),
        controller: _tabController,
        children: const [
        Padding(
          padding: const EdgeInsets.all(0.0),
          child: WpCalls(),
        ),
        Center(child: Text('Chats'),),
        Center(child: Text('Contacts'),),
      ]),
    );
  }
}


    