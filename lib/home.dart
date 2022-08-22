import 'package:flutter/material.dart';
import 'package:flutter_bottom_tabbar_with_fab_button/page/chat.dart';
import 'package:flutter_bottom_tabbar_with_fab_button/page/dashboard.dart';
import 'package:flutter_bottom_tabbar_with_fab_button/page/profile.dart';
import 'package:flutter_bottom_tabbar_with_fab_button/page/setting.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  final List<Widget> screens = [Dashboard(), Chat(), Profile(), Setting()];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Dashboard();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        shape: const CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          margin: const EdgeInsets.only(bottom: 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                  // crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = Dashboard();
                          currentTab = 0;
                        });
                      },
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.dashboard,
                            color: currentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'DAshboard',
                            style: TextStyle(
                                color: currentTab == 0
                                    ? Colors.blue
                                    : Colors.grey),
                          )
                        ],
                      ),
                    ),
                    MaterialButton(
                      onPressed: () {
                        setState(() {
                          currentScreen = Chat();
                          currentTab = 1;
                        });
                      },
                      minWidth: 40,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.chat,
                            color: currentTab == 1 ? Colors.blue : Colors.grey,
                          ),
                          Text(
                            'Chat',
                            style: TextStyle(
                                color: currentTab == 1
                                    ? Colors.blue
                                    : Colors.grey),
                          )
                        ],
                      ),
                    ),
                  ]),
              Row(
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Profile();
                        currentTab = 2;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.verified_user,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                              color:
                                  currentTab == 2 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  ),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = Setting();
                        currentTab = 3;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.settings,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Setting',
                          style: TextStyle(
                              color:
                                  currentTab == 3 ? Colors.blue : Colors.grey),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
