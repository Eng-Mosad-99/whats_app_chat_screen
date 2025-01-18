import 'package:flutter/material.dart';
import 'package:whats_screen/widgets/custom_app_bar_title.dart';
import 'package:whats_screen/widgets/custom_icon.dart';
import 'package:whats_screen/widgets/custom_text_field.dart';

import '../widgets/message_bubble.dart';

class WhatsAppScreen extends StatelessWidget {
  const WhatsAppScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/background.png',
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
          title: const CustomAppBarTitle(),
          actions: const [
            CustomIcon(
              icon: Icons.video_call,
            ),
            CustomIcon(
              icon: Icons.call,
            ),
            CustomIcon(
              icon: Icons.more_vert,
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: MessageBubble(
                  personImage: 'assets/images/person1.jpg',
                  messageTitle: 'This is my first message',
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                  horizontal: 20,
                ),
                child: MessageBubble(
                  personImage: 'assets/images/person2.jpg',
                  messageTitle: 'This is my second message',
                  textDirection: TextDirection.rtl,
                ),
              ),
              const Expanded(
                child: SizedBox(
                  height: 10,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Row(
                  children: [
                    const Expanded(
                      child: CustomTextField(),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 1,
                          ),
                          shape: BoxShape.circle,
                          color: Colors.black,
                        ),
                        child: IconButton(
                          icon: const Icon(
                            Icons.mic,
                            color: Colors.white,
                          ),
                          onPressed: () {},
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
