import 'package:flutter/material.dart';
import 'package:whatsapp_clone/class_folder/contacts.dart';
import 'package:whatsapp_clone/screens/chat_view.dart';

class ContactList extends StatefulWidget {
  @override
  _ContactListState createState() => _ContactListState();
}

class _ContactListState extends State<ContactList> {
  List<Contacts> newContacts = [
    Contacts(
        "Abhinay",
        "https://images.pexels.com/photos/245207/pexels-photo-245207.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "Be the same person privately, publically, && personally"),
    Contacts(
        "Yash",
        "https://images.pexels.com/photos/245207/pexels-photo-245207.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
        "Unleash  the power within you")
  ];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075E54),
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.arrow_back,
            ),
          ),
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Select contact",
              ),
              Text(
                "2 contacts",
                style: TextStyle(
                  fontSize: 15,
                ),
              )
            ],
          ),
          actions: [
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.search,
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10),
              child: Icon(
                Icons.more_vert,
              ),
            )
          ],
        ),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            height: height,
            child: Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.all(20),
                        child: GestureDetector(
                          onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Contact(
                                userName: newContacts[index].name,
                                profileImage: newContacts[index].profileImage,
                                lastMessage: "null",
                                chat: [],
                              ),
                            ),
                          ),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: Colors.transparent,
                                radius: width * 0.075,
                                backgroundImage: NetworkImage(
                                    newContacts[index].profileImage),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      newContacts[index].name,
                                    ),
                                    Text(
                                      newContacts[index].about,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(fontSize: 15),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
