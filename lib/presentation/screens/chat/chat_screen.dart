import 'package:flutter/material.dart';
import 'package:flutter_application_3/presentation/screens/widgets/chat/her_message_bubble.dart';
import 'package:flutter_application_3/presentation/screens/widgets/chat/my_message_bubble.dart';
import 'package:flutter_application_3/presentation/screens/widgets/shared/message_field_box.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(3.0),
          child: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.cinemascomics.com/wp-content/uploads/2022/11/Iron-Man-Marvel-960x720.jpg'),
          ),
        ),
        title: const Text('Mau'),
        centerTitle: true,
      ),
      body: _ChatView(),
    );
  }
}

class _ChatView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            Expanded(
                child: ListView.builder(
              itemCount: 100,
              itemBuilder: (context, index) {
                return (index % 2 == 0)
                    ? const MyMessageBubble()
                    : const HerMessageBubble();
              },
            )),
            const MessageFieldBox(),
          ],
        ),
      ),
    );
  }
}
