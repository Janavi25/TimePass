import 'package:TimePass/Games/memory%20game/home.dart';
import 'package:TimePass/Upload/SongUpload.dart';
import 'package:TimePass/Upload/VideoUpload.dart';
import 'package:TimePass/tabs/feed.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:TimePass/tabs/music.dart';
import 'package:TimePass/tabs/profile.dart';
import 'package:TimePass/tabs/games.dart';
import 'package:TimePass/mp3/VideoList.dart';
import 'package:TimePass/Media/playlist.dart';
import 'package:TimePass/tabs/games.dart';

class Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  var _currentindex = 0;
  final tabs = [
    Center(child: music()),
    Center(
      child: playlist(),
    ),
    Center(
      child: games(),
    ),
    Center(
      child: profile(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    onWillPop() {
      // DialogBox();
    }

    return WillPopScope(
        child: Scaffold(
          body: tabs[_currentindex],
          bottomNavigationBar: CurvedNavigationBar(
              backgroundColor: Colors.grey[50],
              buttonBackgroundColor: Colors.pink,
              items: [
                Icon(Icons.home),
                Icon(Icons.music_note),
                Icon(Icons.sports_esports_outlined),
                Icon(Icons.account_circle_outlined),
              ],
              onTap: (index) {
                setState(() {
                  _currentindex = index;
                });
              }),
        ),
        onWillPop: onWillPop);
  }

  void DialogBox() {
    var baseDialog = AlertDialog(
      title: new Text("Warning"),
      content: Container(
        child: Text('Clicking "CONFIRM" will Make you Go to Login Page Again'),
      ),
      actions: <Widget>[
        FlatButton(
            color: Colors.blue,
            child: new Text("Confirm"),
            onPressed: () {
              Navigator.of(context).pop();
            }
            // Navigator.pop(context);
            ),
      ],
    );

    showDialog(context: context, builder: (BuildContext context) => baseDialog);
  }
}
