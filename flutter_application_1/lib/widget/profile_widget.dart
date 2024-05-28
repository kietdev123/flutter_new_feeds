import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user.dart';

class ProfileWidget extends StatelessWidget {
  final User user;
  final String date;

  const ProfileWidget({
    required this.user,
    required this.date,
    
  }) ;

  @override
  Widget build(BuildContext context) => Material(
        type: MaterialType.transparency,
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 56),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CircleAvatar(
                radius: 24.0,
                backgroundImage:
                    NetworkImage(user.imgUrl),
                backgroundColor: Colors.transparent,
              ),
        
              SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      user.name,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      date,
                      style: TextStyle(color: Colors.white38),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      );
}
