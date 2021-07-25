import 'package:chat/components/filled_outline_button.dart';
import 'package:chat/constants.dart';
import 'package:chat/models/Chat.dart';
import 'package:chat/screens/chats/components/chat_card.dart';
import 'package:chat/screens/messages/message_screen.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(
                press: () {},
                text: "Recent Messages",
              ),
              SizedBox(
                width: kDefaultPadding / 2,
              ),
              FillOutlineButton(
                press: () {},
                isFilled: false,
                text: "Active",
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MessageScreen()),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
