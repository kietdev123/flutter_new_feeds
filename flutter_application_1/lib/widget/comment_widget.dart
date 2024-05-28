import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user.dart';

class CommentWidget extends StatelessWidget {
  const CommentWidget();

  @override
  Widget build(BuildContext context) => Material(
        type: MaterialType.transparency,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 56),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextField(),
              SizedBox(width: 16),
              Icon(
                Icons.audiotrack,
                color: Colors.green,
                size: 30.0,
              ),
            ],
          ),
        ),
      );
}
