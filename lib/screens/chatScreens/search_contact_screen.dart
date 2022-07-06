import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:wrkapp/screens/chatScreens/main_chat_screen.dart';
import 'package:wrkapp/models/user.dart';
class SearchContacts extends StatefulWidget {
  const SearchContacts({Key? key}) : super(key: key);

  @override
  State<SearchContacts> createState() => _SearchContactsState();
}

class _SearchContactsState extends State<SearchContacts> {
  @override
  TextEditingController searchController = TextEditingController();
  List<Map> searchResult = [];
  bool isLoading = false;



  void onSearch() async{
    setState((){
      searchResult = [];
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
    setState((){
      isLoading = false;
    });
  }


  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Search User'),
        ),
        body:  Column(
          children: [
          Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: TextField(
                    obscureText: false,
                    controller: searchController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      labelText: 'Search User...',
                    ),
                  ),
                ),
              ),
              IconButton(
                onPressed: onSearch,
                icon: Icon(Icons.search),
              ),
            ],
          ),
            if(searchResult.length > 0)

              Expanded(child: ListView.builder(
                  itemCount: searchResult.length,
                  shrinkWrap: true,
                  itemBuilder: (context, index){
                    return ListTile(
                      leading: CircleAvatar(
                        child: Image.network(searchResult[index]['photoUrl']),
                      ),
                      title: Text(searchResult[index]['username']),
                      subtitle: Text(searchResult[index]['email']),
                      trailing: IconButton(
                        onPressed: (){
                          setState((){
                            searchController.text = "";
                          });
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>MainChatScreen(
                              currentUser: FirebaseAuth.instance.currentUser,
                              friendId: searchResult[index]['uid'],
                              friendImage: searchResult[index]['photoUrl'],
                              friendUserName: searchResult[index]['username'])));
                        },
                        icon: Icon(Icons.message),
                      ),
                    );
                  }))
            else if(isLoading == true)
              Center(child: CircularProgressIndicator(),),
          ],
        ),
      ),
    );
  }
}





