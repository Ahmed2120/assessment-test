import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class SendMessageWidget extends StatelessWidget {
  const SendMessageWidget({
    super.key,
    required this.messageController, required this.function,
  });

  final TextEditingController messageController;
  final Function function;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: const BoxDecoration(
          border: Border(
              top: BorderSide(color: Color(0xFFE4E5E7), width: 1))),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: messageController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Color(0xFFF6F7F8)),
                    borderRadius: BorderRadius.circular(12)),
                suffixIcon: const Icon(IconlyLight.voice),
                prefixIcon: const Icon(Icons.language),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                    const BorderSide(color: Color(0xFFF6F7F8)),
                    borderRadius: BorderRadius.circular(12)),
                hintText: 'Type something...',
                filled: true,
                fillColor: const Color(0xFFF6F7F8),
              ),
            ),
          ),
          IconButton(
              onPressed: () => function(),
              icon: const Icon(IconlyLight.send))
        ],
      ),
    );
  }
}
