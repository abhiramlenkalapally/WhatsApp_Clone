import 'dart:core';

class Chats {
  String _userName;
  String _profileImage;
  String _lastMessage;
  String _date;
  List<String> _conversation;

  Chats(String userName, String profileImage, String lastMessage, String date,
      List<String> conversation) {
    this._userName = userName;
    this._profileImage = profileImage;
    this._lastMessage = lastMessage;
    this._date = date;
    this._conversation = conversation;
  }

  String get userName {
    return this._userName;
  }

  String get profileImage {
    return this._profileImage;
  }

  String get lastMessage {
    return this._lastMessage;
  }

  String get date {
    return this._date;
  }

  List<String> get conversation {
    return this._conversation;
  }
}
