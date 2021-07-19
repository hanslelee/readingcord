import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      length: 4,
      vsync: this
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: Text(
          'Search',
          style: TextStyle(
              fontSize: 25, fontWeight: FontWeight.w700, color: Colors.black, letterSpacing: -(29 * 0.015)),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(Icons.list),
            color: Color(0xFF323232),
            onPressed: () {},
            padding: EdgeInsets.all(0.0),
          )
        ],
      ),
      body: TabBarView(
        controller: tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          Container(),
          Container(),
          Container(),
          Container(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        onTap: (index) {
          setState(() {
            tabController.index = index;
          });
        },
        currentIndex: tabController.index,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.menu_book_outlined), label: 'books'),
          BottomNavigationBarItem(icon: Icon(Icons.note), label: 'memo'),
          BottomNavigationBarItem(icon: Icon(Icons.stacked_bar_chart), label: 'statics'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'settings'),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () async {

        },
        child: Icon(
          Icons.add,
          color: Colors.black45,
        ),
      ),
    );
  }
}
