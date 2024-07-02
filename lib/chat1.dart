// ignore_for_file: camel_case_types

import 'package:chat_app/const.dart';
import 'package:chat_bubbles/bubbles/bubble_special_three.dart';
import 'package:flutter/material.dart';

class Chat_1 extends StatefulWidget {
  const Chat_1({super.key});

  @override
  State<Chat_1> createState() => _Chat_1State();
}

class _Chat_1State extends State<Chat_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        foregroundColor: Colors.white,
        elevation: 0,
        title: const Text('Chat 1'),
      ),
      body: Container(
        color: Colors.grey,
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: chat.length,
                itemBuilder: (_, index) => BubbleSpecialThree(
                  text: chat[index].toString(),
                  color: Colors.green,
                  tail: true,
                  textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Container(
              color: Colors.black87,
              height: 100,
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      style: TextStyle(
                        color: Colors.white,
                        ),
                    ),
                  ),
                  IconButton(
                    onPressed: (){}, 
                    icon: Icon(Icons.send, 
                    color: Colors.green,
                    ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
