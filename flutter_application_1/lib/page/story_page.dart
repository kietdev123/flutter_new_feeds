import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/users.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/widget/story_widget.dart';

class StoryPage extends StatefulWidget {
  final User user;

  const StoryPage({
    required this.user,

  }) ;
  
  @override
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  late PageController controller;

  @override
  void initState() {
    super.initState();

    final initialPage = users.indexOf(widget.user);
    controller = PageController(initialPage: initialPage);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => PageView(
        controller: controller,
        children: users
            .map((user) =>StoryWidget(
                      user: user,
                      controller: controller,
                    ),)
            .toList(),
      );
}
