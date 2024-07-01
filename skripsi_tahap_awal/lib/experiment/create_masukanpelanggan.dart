import 'package:flutter/material.dart';

class CreateMasukanPelanggan extends StatelessWidget {
  final List<String> messages = [
    "Hello, how are you?",
    "I'm good, thanks! How about you?",
    "I'm doing well. What are you up to?",
    "Just working on some Flutter projects.",
    "That's awesome! Keep it up!"
  ];

  CreateMasukanPelanggan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Customer Feedback'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ChatBubble(message: messages[index]);
        },
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;

  const ChatBubble({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Stack(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.only(left: 10),
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 174, 236, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
              ),
              child: Text(
                message,
                style: const TextStyle(fontSize: 16),
              ),
            ),
            Positioned(
              left: 0,
              top: 15,
              child: CustomPaint(
                painter: ChatBubbleArrowPainter(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ChatBubbleArrowPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = const Color.fromARGB(255, 174, 236, 255)
      ..style = PaintingStyle.fill;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(10, 10)
      ..lineTo(20, 0)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
