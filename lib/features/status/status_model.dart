class StatusModel {
  final String name;
  final String time;
  final String? imageUrl;
  final bool isVerified;

  const StatusModel({
    required this.name,
    required this.time,
    this.imageUrl,
    this.isVerified = false,
  });
}

const List<StatusModel> mockStatuses = [
  StatusModel(name: 'Dad', time: '5 minutes ago', imageUrl: 'https://images.unsplash.com/photo-1506744038136-46273834b3fb?w=150'),
  StatusModel(name: 'Tech boss', time: '7 minutes ago', imageUrl: 'https://i.pravatar.cc/150?img=68', isVerified: true),
  StatusModel(name: 'Elon Musk (Son)', time: '15 minutes ago', imageUrl: 'https://i.pravatar.cc/150?img=60', isVerified: true),
  StatusModel(name: 'Narendra Modi', time: '2 hours ago', imageUrl: 'https://i.pravatar.cc/150?img=59', isVerified: true),
  StatusModel(name: 'Reonsly(Friend)', time: '6 hours ago', imageUrl: 'https://i.pravatar.cc/150?img=13', isVerified: true),
  StatusModel(name: 'Madan Gowri', time: '12 hours ago', imageUrl: 'https://i.pravatar.cc/150?img=11', isVerified: true),
  StatusModel(name: 'Bharathi', time: '23 hours ago', imageUrl: 'https://i.pravatar.cc/150?img=15', isVerified: true),
  StatusModel(name: 'Brother', time: 'Yesterday', imageUrl: 'https://i.pravatar.cc/150?img=17'),
];