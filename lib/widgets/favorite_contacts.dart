import 'package:chat_app_ui/models/message_model.dart';
import 'package:chat_app_ui/screens/chat_screen.dart';
import 'package:flutter/material.dart';

class FavoriteContacts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double deviceHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: .0,horizontal: 20.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  'Favorite contacts',
                  style: TextStyle(
                      color: Colors.blueGrey,
                      fontSize: 16.0,
                      fontWeight: FontWeight.bold),
                ),
                IconButton(
                    icon: Icon(Icons.more_horiz),
                    iconSize: 24,
                    color: Colors.blueGrey,
                    onPressed: () {}),
              ],
            ),
          ),
          Container(
              height: deviceHeight * 0.15,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: favorites.length,
                itemBuilder: (BuildContext context, int index) {
                  return GestureDetector(
                    onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ChatScreen(
                      user: favorites[index],
                    ),
                  ),
                ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:20),
                          child: CircleAvatar(
                            radius:30.0,
                            backgroundImage: AssetImage(favorites[index].imageUrl),
                          ),
                        ),
                        SizedBox(height:6.0),
                        Text(favorites[index].name,style: 
                        TextStyle(
                          color:Colors.blueGrey,
                          fontSize:16.0,
                          fontWeight: FontWeight.w600,
                        ),)
                      ],
                    ),
                  );
                },
              ))
        ],
      ),
    );
  }
}
