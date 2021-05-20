import 'package:flutter/material.dart';
import 'package:whatsapp_clone/class_folder/chats_data.dart';
import 'package:whatsapp_clone/screens/chat_view.dart';

class WhatsApp extends StatefulWidget {
  @override
  _WhatsAppState createState() => _WhatsAppState();
}

class _WhatsAppState extends State<WhatsApp> {
  List<Chats> chats = [
    Chats(
      "Yashu",
      "https://images.pexels.com/photos/245207/pexels-photo-245207.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
      "Complete the exercise",
      "Today",
      [
        "hi",
        "hello",
        "how are you",
        "I'm fine, you?",
        "Me too",
        "Are you free tonight",
        "No I have a date",
        "ohhhhhhhh",
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          itemCount: chats.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(height * 0.02),
              height: height * 0.06,
              width: width,
              child: GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Contact(
                      userName: chats[index].userName,
                      profileImage: chats[index].profileImage,
                      lastMessage: chats[index].lastMessage,
                      chat: chats[index].conversation,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: width * 0.075,
                      backgroundImage: NetworkImage(chats[index].profileImage),
                    ),
                    SizedBox(
                      width: width * 0.01,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: width * 0.77,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  chats[index].userName,
                                  style: TextStyle(
                                    fontSize: width * 0.05,
                                  ),
                                ),
                                Text(
                                  chats[index].date,
                                  style: TextStyle(
                                    fontSize: width * 0.035,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Text(
                              chats[index].lastMessage,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontSize: height * 0.02,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
