import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  final String userName;
  final String profileImage;
  final String lastMessage;
  final List<String> chat;
  Contact({
    Key key,
    @required this.userName,
    @required this.profileImage,
    @required this.lastMessage,
    @required this.chat,
  }) : super(key: key);
  @override
  _ContactState createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Icon(
            Icons.arrow_back,
          ),
        ),
        backgroundColor: Color(0xff075E54),
        title: Container(
          child: Row(
            children: [
              CircleAvatar(
                backgroundColor: Colors.transparent,
                radius: width * 0.055,
                backgroundImage: NetworkImage(widget.profileImage),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                widget.userName,
              )
            ],
          ),
        ),
        actions: [
          Icon(
            Icons.video_call,
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
          Icon(
            Icons.call,
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
          Icon(
            Icons.more_vert,
          ),
          Padding(padding: EdgeInsets.only(right: 20)),
        ],
      ),
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://images.pexels.com/photos/7451734/pexels-photo-7451734.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
          ),
        ),
        child: ListView.builder(
          shrinkWrap: true,
          itemCount: widget.chat.length,
          itemBuilder: (context, index) {
            if (index % 2 == 0) {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      margin: EdgeInsets.only(top: 7),
                      height: height * 0.04,
                      width: width * 0.7,
                      child: Container(
                        padding: EdgeInsets.only(top: 2, left: 4),
                        child: Text(
                          widget.chat[index],
                          style: TextStyle(
                            fontSize: height * 0.025,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          "10:57 AM",
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: width * 0.03,
                          ),
                        ),
                        Icon(
                          Icons.check,
                          color: Colors.grey,
                          size: width * 0.04,
                        ),
                      ],
                    ),
                  ],
                ),
              );
            } else {
              return Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                width: width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 7),
                      height: height * 0.04,
                      width: width * 0.7,
                      color: Color(0xffdcf8c6),
                      child: Container(
                        padding: EdgeInsets.only(top: 2, left: 4),
                        child: Text(
                          widget.chat[index],
                          style: TextStyle(
                            fontSize: height * 0.025,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            }
          },
        ),
      ),
    );
  }
}
