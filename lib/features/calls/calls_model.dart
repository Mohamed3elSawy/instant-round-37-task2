class CallModel {
  final String name;
  final String? imageUrl;
  final String time;
  final bool isVideo;
  final bool isMissed; 
  final bool isVerified;

  const CallModel({
    required this.name,
    this.imageUrl,
    required this.time,
    this.isVideo = false,
    this.isMissed = false,
    this.isVerified = false,
  });
}

const List<CallModel> mockCalls = [
  CallModel(
    name: 'Brother',
    imageUrl: 'https://i.pravatar.cc/150?img=17',
    time: '10 minutes ago',
    isMissed: true,
  ),
  CallModel(
    name: 'Madan Gowri',
    imageUrl: 'https://i.pravatar.cc/150?img=11',
    time: '15 minutes ago',
    isVideo: true,
    isVerified: true,
  ),
  CallModel(
    name: 'Reonsly(Friend)',
    imageUrl: 'https://i.pravatar.cc/150?img=13',
    time: '30 minutes ago',
    isVideo: true,
    isVerified: true,
  ),
  CallModel(
    name: 'Monish',
    imageUrl: 'https://i.pravatar.cc/150?img=3',
    time: '1 hour ago',
    isMissed: true,
  ),
  CallModel(
    name: 'Tech boss',
    imageUrl: 'https://i.pravatar.cc/150?img=68',
    time: '14 hours ago',
    isVerified: true,
  ),
  CallModel(
    name: 'Brother',
    imageUrl: 'https://i.pravatar.cc/150?img=17',
    time: '23 hours ago',
  ),
  CallModel(
    name: 'Bharathi',
    imageUrl: 'https://i.pravatar.cc/150?img=15',
    time: 'Yesterday',
    isMissed: true,
  ),
  CallModel(
    name: 'Narendra Modi',
    imageUrl: 'https://i.pravatar.cc/150?img=59',
    time: 'Yesterday',
    isVerified: true,
  ),
];