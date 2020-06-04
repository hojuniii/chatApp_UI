import 'package:chat_app_ui/models/message_model.dart';
import 'package:chat_app_ui/widgets/category_selector.dart';
import 'package:chat_app_ui/widgets/favorite_contacts.dart';
import 'package:chat_app_ui/widgets/recent_chats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(deviceHeight / 12),
          child: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              iconSize: 22,
              color: Colors.white,
              onPressed: () {},
            ),
            title: Center(
              child: Text(
                'Chats',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22.0),
                textAlign: TextAlign.center,
              ),
            ),
            elevation: 0.0,
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                iconSize: 22,
                color: Colors.white,
                onPressed: () {},
              )
            ],
          ),
        ),
        body: Column(
          children: <Widget>[
            CategorySelector(),
            //화면의 나머지 부분을 채움
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: <Widget>[
                    FavoriteContacts(),
                    RecentChats(),
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
