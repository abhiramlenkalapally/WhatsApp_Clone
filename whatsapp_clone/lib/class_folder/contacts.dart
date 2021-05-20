import 'dart:core';

class Contacts {
  String _name;
  String _profileImage;
  String _about;

  Contacts(String name, String profileImage, String about) {
    this._name = name;
    this._profileImage = profileImage;
    this._about = about;
  }

  String get name {
    return this._name;
  }

  String get profileImage {
    return this._profileImage;
  }

  String get about {
    return this._about;
  }
}
