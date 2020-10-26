import 'package:flutter/material.dart';

enum StatusChat {
  Kirim,
  Terkirim,
  Dibaca,
}

class ChatItem {
  final String uid;
  final String message;
  final String time;
  final StatusChat status;

  ChatItem(
      {@required this.uid,
      @required this.message,
      @required this.time,
      @required this.status});
}

class Chats with ChangeNotifier {
  List<ChatItem> _chats = [];

  List<ChatItem> get chats {
    return [..._chats];
  }

  void addChat(String message) {
    _chats.add(ChatItem(
        uid: '123123', message: 'Hai', time: '1242', status: StatusChat.Kirim));
    notifyListeners();
  }
}
