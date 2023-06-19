import 'package:get/get.dart';

import '../model/chat_model.dart';

class ChatController extends GetxController {
  DateTime times = DateTime.now();
  List<String> itemname = [
    '#Healthcare',
    '#Announcement',
    '#Healthcare',
    '#Healthcare',
  ];

  final List<ChatMessage> messages = [
    ChatMessage(
        messageContent: "We have a new consultation", messageType: "receiver", isRead: false),
    ChatMessage(
        messageContent: "We have a new consultation",
        messageType: "receiver",
        isRead: false),
    ChatMessage(
        messageContent: "Hey Kriss, I am doing fine dude. wbu?",
        messageType: "sender",
        isRead: true),
    ChatMessage(
        messageContent: "We have a new consultation.",
        messageType: "receiver",
        isRead: false),
    ChatMessage(
        messageContent: "#Schedule This is the new oncall schedule updates",
        messageType: "sender",
        isRead: true),
  ];
}
