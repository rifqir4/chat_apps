import 'package:chat_apps/models/chats.dart';
import 'package:chat_apps/widgets/chat_bubbles.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final chatsData = Provider.of<Chats>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('PanChat'),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: ListView.builder(
                    itemCount: chatsData.chats.length,
                    itemBuilder: (contex, index) => ChatBubble()),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(50))),
                    width: 300,
                    child: TextField(
                      keyboardType: TextInputType.multiline,
                      minLines: 1,
                      maxLines: 5,
                      cursorColor: Colors.white,
                      decoration: InputDecoration(
                          hintText: 'Tulis Pesan',
                          hintStyle: TextStyle(color: Colors.blue[50]),
                          fillColor: Colors.blue,
                          filled: true,
                          border: new OutlineInputBorder(
                            borderRadius: const BorderRadius.all(
                              const Radius.circular(25.0),
                            ),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 20, vertical: 20)),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(
                        Radius.circular(50),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        chatsData.addChat('Hai');
                      },
                      child: Icon(
                        Icons.send,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
