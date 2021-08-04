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
      appBar: tabController.index == 0
          ? AppBar(
              leading: null,
              title: Text(
                'Search',
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.black,
                    letterSpacing: -(29 * 0.015)),
              ),
              centerTitle: false,
              actions: [
                PopupMenuButton(
                  // 팝업메뉴버튼 참고
                  // https://codesinsider.com/flutter-popup-menu-button/
                    icon: Icon(Icons.add),
                    onSelected: (value) {
                      // setState(() {
                      //   _value = value;
                      // });
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        child: Text("구글북스"),
                        value: 1,
                      ),
                      PopupMenuItem(
                        child: Text("알라딘"),
                        value: 2,
                      ),
                      PopupMenuItem(
                        child: Text("바코드 인식"),
                        value: 3,
                      ),
                      PopupMenuItem(
                        child: Text("직접 입력"),
                        value: 4,
                      )
                    ],
                    padding: EdgeInsets.all(0.0),
                ),
                // IconButton(
                //   icon: Icon(Icons.add),
                //   color: Color(0xFF323232),
                //   onPressed: () {},
                //   padding: EdgeInsets.all(0.0),
                // ),
                IconButton(
                  icon: Icon(Icons.list),
                  color: Color(0xFF323232),
                  onPressed: () {},
                  padding: EdgeInsets.all(0.0),
                )
              ],
            )
          : null,
      body: TabBarView(
        controller: tabController,
        physics: NeverScrollableScrollPhysics(),
        children: [
          _buildHome(),
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

  SingleChildScrollView _buildHome() {
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        )
      )
    );
  }
}
