import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/user.dart';
import 'package:flutter_application_1/widget/custom_textfield.dart';

class CommentWidget extends StatefulWidget {
  const CommentWidget();

  @override
  State<CommentWidget> createState() => _CommentWidgetState();
}

class _CommentWidgetState extends State<CommentWidget> {
   final commentController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    bool isKeyBoardUp = MediaQuery.of(context).viewInsets.bottom > 0;
    return 
   Material(
        type: MaterialType.transparency,
        child: Container(
          margin: EdgeInsets.fromLTRB(16, isKeyBoardUp ? MediaQuery.of(context).size.height * 0.3 :  MediaQuery.of(context).size.height * 0.9 , 16, 0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SizedBox(
                width: 300,
                child: CustomTextField(
                controller: commentController,
                name: "say something",
                prefixIcon: Icons.email_outlined,
                inputType: TextInputType.emailAddress,
                            ),
              ),
              SizedBox(width: 16),
              Icon(
                Icons.heart_broken,
                color: Colors.white,
                size: 30.0,
              ),
            ],
          ),
        ),
      );}
}
