class MessageModel {
  final String text;
  final String time;
  final bool isMe;

  const MessageModel({
    required this.text,
    required this.time,
    required this.isMe,
  });
}

const List<MessageModel> mockMessages = [
  MessageModel(text: 'Bro i have secret identity\nNo one does know about me!!', time: '5:00 AM', isMe: false),
  MessageModel(text: 'What\'s Secret\n?!', time: '2:00 AM', isMe: true),
  MessageModel(text: 'bro', time: '5:00 AM', isMe: true),
  MessageModel(text: 'Hello', time: '5:30 AM', isMe: false),
  MessageModel(text: 'Are you free now?', time: '5:30 AM', isMe: true),
  MessageModel(text: 'Nope!\nWhat happen tell me!', time: '5:31 AM', isMe: false),
  MessageModel(text: 'I can\'t tell you now!', time: '5:31 AM', isMe: true),
  MessageModel(text: 'Ok!\nCome to Parade at 11:00 AM', time: '5:33 AM', isMe: false),
  MessageModel(text: 'Ok!', time: '5:33 AM', isMe: true),
  MessageModel(text: 'Should I call you now ?', time: '5:33 AM', isMe: false),
];