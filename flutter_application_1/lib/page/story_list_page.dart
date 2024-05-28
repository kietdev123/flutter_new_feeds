import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/users.dart';
import 'package:flutter_application_1/page/story_page.dart';

import '../main.dart';

class StoryListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(MyApp.title),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8, 16, 8, 0),
          child: ListView(
            children: users
                .map((user) => ListTile(
                      title: Text(
                        user.name,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      leading: CircleAvatar(
                        radius: 24.0,
                        backgroundImage: NetworkImage(user.imgUrl),
                        backgroundColor: Colors.transparent,
                      ),
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => StoryPage(user: user),
                          ),
                        );
                      },
                    ))
                .toList(),
          ),
        ),
      );
}
