class ChatModel {
  final String name;
  final String? imageUrl; 
  final String lastMessage;
  final String time;
  final bool isPinned;
  final bool isMuted;
  final bool isVerified;
  final int unreadCount;
  final bool isRead;

  const ChatModel({
    required this.name,
    this.imageUrl, 
    required this.lastMessage,
    required this.time,
    this.isPinned = false,
    this.isMuted = false,
    this.isVerified = false,
    this.unreadCount = 0,
    this.isRead = false,
  });
}

const List<ChatModel> mockChats = [
  ChatModel(
    name: 'Madan Gowri',
    imageUrl: 'https://i.pravatar.cc/150?img=11', // راجل
    lastMessage: 'Hello My MG Squad !',
    time: '12:41 AM',
    isVerified: true,
    isRead: true,
  ),
  ChatModel(
    name: 'Monish',
    imageUrl: 'https://i.pravatar.cc/150?img=3', // ولد
    lastMessage: 'How are You?',
    time: '2:00 AM',
    unreadCount: 2,
  ),
  ChatModel(
    name: 'Narendra Modi',
    imageUrl: 'https://i.pravatar.cc/150?img=59', // راجل كبير
    lastMessage: 'Sure Sir!',
    time: '5:00 AM',
    isVerified: true,
    isRead: true,
  ),
  ChatModel(
    name: 'Leo Das (Me)',
    imageUrl: 'https://i.pravatar.cc/150?img=12', // شاب
    lastMessage: 'Yes of Course!',
    time: 'Yesterday',
    isVerified: true,
    unreadCount: 2,
  ),
  ChatModel(
    name: 'Dad',
    imageUrl: 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=150', // طبيعة (بدل صورة الأب)
    lastMessage: 'You reacted 👍 to : Done!',
    time: 'Yesterday',
    isRead: true,
  ),
  ChatModel(
    name: 'Reonsly(Friend)',
    imageUrl: 'https://i.pravatar.cc/150?img=13', // شاب تاني
    lastMessage: 'Should I call you now ?',
    time: 'Yesterday',
    isVerified: true,
    isRead: true,
  ),
  ChatModel(
    name: 'Elon Musk',
    imageUrl: 'https://i.pravatar.cc/150?img=60', // راجل بدلة
    lastMessage: 'I want 9065\$ to buy a Rolls Royce',
    time: 'Yesterday',
    isVerified: true,
    isRead: true,
  ),
  ChatModel(
    name: 'Bharathi',
    imageUrl: 'https://i.pravatar.cc/150?img=15', // شاب
    lastMessage: 'I am giving you Lamborhini',
    time: 'Yesterday',
    isVerified: true,
    isRead: true,
  ),
  ChatModel(
    name: 'Brother',
    imageUrl: 'https://i.pravatar.cc/150?img=17', // شاب
    lastMessage: 'I Want Play station 5 pro bro 🥲',
    time: '31-02-2026',
    unreadCount: 2,
  ),
  ChatModel(
    name: 'Tech boss',
    imageUrl: 'https://i.pravatar.cc/150?img=68', // راجل
    lastMessage: 'You reacted ❤️ to : Happy Birthday leo das',
    time: '30-11-20XX',
    isVerified: true,
    isRead: true,
  ),
];