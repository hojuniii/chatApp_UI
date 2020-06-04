import 'package:chat_app_ui/models/user_model.dart';
import 'package:flutter/cupertino.dart';

class Message extends ChangeNotifier{
  final User sender;
  final String time;
  final String text;
  bool isLiked;
  final bool unread;

  Message({this.sender, this.time, this.text, this.isLiked, this.unread});

  void toggle(){
    isLiked = !isLiked;
    
    notifyListeners();
  }
}

  

List<Message> chats = [
  Message(
    sender: juyeon,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you to today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: nick,
    time: '4:30 PM',
    text: 'Hey, how\'s it going? What did you to today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: jiheon,
    time: '2:30 PM',
    text: 'Hey, how\'s it going? What did you to today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: greg,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you to today?',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: nick,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you to today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: matt,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you to today?',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: matt,
    time: '1:30 PM',
    text: 'Hey, how\'s it going? What did you to today?',
    isLiked: false,
    unread: true,
  ),
];

//message in chat screen
List<Message> messages = [
  Message(
    sender: juyeon,
    time: '5:30 PM',
    text: 'Hey, how\'s it going? What did you to today?',
    isLiked: true,
    unread: true,
  ),
  Message(
    sender: juyeon,
    time: '4:30 PM',
    text: 'i amm hungry',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '3:30 PM',
    text: 'Hey what\'s going on~~~~~~~~~~`',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '2:30 PM',
    text: 'hi~~~~~~~~',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: juyeon,
    time: '1:37 PM',
    text: 'hi~~~~~~~~',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '1:33 PM',
    text: 'hi~~~~~~~~',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: juyeon,
    time: '1:31 PM',
    text: 'hi~~~~~~~~',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: currentUser,
    time: '1:30 PM',
    text: 'hi~~~~~~~~',
    isLiked: false,
    unread: false,
  ),
];


final User currentUser =
    User(id: 0, name: 'Current User', imageUrl: 'assets/images/hojun.jpg');

final User juyeon =
    User(id: 1, name: 'Juyeon', imageUrl: 'assets/images/juyeon.jpg');

final User jiheon =
    User(id: 2, name: 'Jiheon', imageUrl: 'assets/images/jiheon.jpg');

final User matt =
    User(id: 3, name: 'matt', imageUrl: 'assets/images/matt.jpg');

final User greg =
    User(id: 4, name: 'greg', imageUrl: 'assets/images/greg.jpg');

final User nick =
    User(id: 5, name: 'nick', imageUrl: 'assets/images/nick.jpg');

List<User> favorites = [juyeon, jiheon, greg, nick];


//recent message
