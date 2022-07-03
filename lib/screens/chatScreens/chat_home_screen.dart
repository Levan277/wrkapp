import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:wrkapp/pages/pages.dart';
import 'package:wrkapp/screens/chatScreens/screens.dart';
import 'package:wrkapp/constants/theme.dart';
import 'package:wrkapp/widgets/chatWidgets/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wrkapp/app.dart';
import 'package:flutter/services.dart';
import 'package:wrkapp/helpers.dart';
import 'package:wrkapp/route/route.dart' as route;
import 'package:anim_search_bar/anim_search_bar.dart';

import 'package:wrkapp/connectionsFirebase/auth_methods.dart';


class ChatHomeScreen extends StatefulWidget {
  ChatHomeScreen({Key? key}) : super(key: key);

  @override
  State<ChatHomeScreen> createState() => _ChatHomeScreenState();
}

class _ChatHomeScreenState extends State<ChatHomeScreen> {
  final ValueNotifier<int> pageIndex = ValueNotifier(0);

  final ValueNotifier<String> title = ValueNotifier('Messages');
  
  
  String photoUrl = "";
 TextEditingController searchController = TextEditingController();
 
 List<Map> searchResult = [];
 bool isLoading = false;
 
  final pages = const [
    MessagesPage(),
    NotificationsPage(),
    CallsPage(),
    ContactsPage(),
  ];

  final pageTitles = const [
    'Messages',
    'Notifications',
    'Calls',
    'Contacts',
  ];

  void onSearch() async{
    setState((){
      isLoading = true;
    });
    await FirebaseFirestore.instance.collection('users').where('username',isEqualTo: searchController.text).get().then((value){
      if(value.docs.length<1){
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("No User Found")));
        setState((){
          isLoading = false;
        });
        return;
      }

      //TODO: dont let users search themselves
      value.docs.forEach((user) {
        searchResult.add(user.data());
      });
    });
  }
  void _onNavigationItemSelected(index) {
    title.value = pageTitles[index];
    pageIndex.value = index;
  }


  Future<String> getPhotoUrl() async{
    DocumentSnapshot snap = await FirebaseFirestore.instance.collection('users').doc(FirebaseAuth.instance.currentUser!.uid).get();
    setState((){
      photoUrl = (snap.data() as Map<String, dynamic>)['photoUrl'];
    });
    return photoUrl;

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).iconTheme,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: ValueListenableBuilder(
          valueListenable: title,
          builder: (BuildContext context, String value, _) {
            return Text(
              value,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            );
          },
        ),


        actions: [
          AnimSearchBar(
            width: 300,
            textController: searchController,

            onSuffixTap: () {
             
              setState(() {
                searchController.clear();
              });
            },
          ),
          Padding(
            padding: const EdgeInsets.only(right: 24.0),
            child: FutureBuilder(
              future: getPhotoUrl(),
              builder: (context, snapshot){
              return CircleAvatar(backgroundImage: NetworkImage(photoUrl),radius: 24.0,);

            },)
          ),
        ],
      ),
      body: ValueListenableBuilder(
        valueListenable: pageIndex,
        builder: (BuildContext context, int value, _) {
          return pages[value];
        },
      ),
      bottomNavigationBar: _BottomNavigationBar(
        onItemSelected: _onNavigationItemSelected,
      ),
    );
  }
}

class _BottomNavigationBar extends StatefulWidget {
  const _BottomNavigationBar({
    Key? key,
    required this.onItemSelected,
  }) : super(key: key);

  final ValueChanged<int> onItemSelected;

  @override
  __BottomNavigationBarState createState() => __BottomNavigationBarState();
}

class __BottomNavigationBarState extends State<_BottomNavigationBar> {
  var selectedIndex = 0;

  void handleItemSelected(int index) {
    setState(() {
      selectedIndex = index;
    });
    widget.onItemSelected(index);
  }

  @override
  Widget build(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return Card(
      color: (brightness == Brightness.light) ? Colors.transparent : null,
      elevation: 0,
      margin: const EdgeInsets.all(0),
      child: SafeArea(
        top: false,
        bottom: true,
        child: Padding(
          padding: const EdgeInsets.only(top: 16, left: 8, right: 8),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              _NavigationBarItem(
                index: 0,
                lable: 'Messages',
                icon: CupertinoIcons.bubble_left_bubble_right_fill,
                isSelected: (selectedIndex == 0),
                onTap: handleItemSelected,
              ),
              _NavigationBarItem(
                index: 1,
                lable: 'Notifications',
                icon: CupertinoIcons.bell_solid,
                isSelected: (selectedIndex == 1),
                onTap: handleItemSelected,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: GlowingActionButton(
                  color: AppColors.secondary,
                  icon: CupertinoIcons.add,
                  onPressed: () {
                    print('TODO on new message');
                  },
                ),
              ),
              _NavigationBarItem(
                index: 2,
                lable: 'Calls',
                icon: CupertinoIcons.phone_fill,
                isSelected: (selectedIndex == 2),
                onTap: handleItemSelected,
              ),
              _NavigationBarItem(
                index: 3,
                lable: 'Contacts',
                icon: CupertinoIcons.person_2_fill,
                isSelected: (selectedIndex == 3),
                onTap: handleItemSelected,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _NavigationBarItem extends StatelessWidget {
  const _NavigationBarItem({
    Key? key,
    required this.index,
    required this.lable,
    required this.icon,
    this.isSelected = false,
    required this.onTap,
  }) : super(key: key);

  final int index;
  final String lable;
  final IconData icon;
  final bool isSelected;
  final ValueChanged<int> onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        onTap(index);
      },
      child: SizedBox(
        width: 70,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 20,
              color: isSelected ? AppColors.secondary : null,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              lable,
              style: isSelected
                  ? const TextStyle(
                fontSize: 11,
                fontWeight: FontWeight.bold,
                color: AppColors.secondary,
              )
                  : const TextStyle(fontSize: 11),
            ),
          ],
        ),
      ),
    );
  }
}