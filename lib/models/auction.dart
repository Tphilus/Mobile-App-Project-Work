// ignore_for_file: unused_element

import 'dart:math';

/// auction data model
class Auction {
  // todo
  // final String title;
  final String tag;
  final String imageUrl;
  final String artist;
  final String artistAvatarUrl;
  final String description;
  final double bid;
  final DateTime expiration;

  Auction({
    required this.tag,
    required this.imageUrl,
    required this.artist,
    required this.artistAvatarUrl,
    required this.description,
    required this.bid,
    required this.expiration,
  });
}

const _kDummyText =
    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc venenatis metus a quam tincidunt viverra. In ac euismod turpis. Nullam metus turpis...More';

/// sample data
final kSampleAuctions = <Auction>[
  Auction(
    tag: 'Day ${Random().nextInt(100)}',
    imageUrl:
        'https://images.unsplash.com/photo-1529335764857-3f1164d1cb24?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGNhcnRvb258ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
    artist: 'Jeremy Schneider',
    artistAvatarUrl:
        'https://images.unsplash.com/photo-1560250097-0b93528c311a?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDh8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
    description: _kDummyText,
    bid: Random().nextInt(100).toDouble(),
    expiration: DateTime.now(),
  ),
  Auction(
    tag: 'Day ${Random().nextInt(100)}',
    imageUrl:
        'https://images.unsplash.com/photo-1593085512500-5d55148d6f0d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Y2FydG9vbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
    artist: 'Gregg Curry',
    artistAvatarUrl:
        'https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
    description: _kDummyText,
    bid: Random().nextInt(100).toDouble(),
    expiration: DateTime.now(),
  ),
  Auction(
    tag: 'Day ${Random().nextInt(100)}',
    imageUrl:
        'https://images.unsplash.com/photo-1624213111452-35e8d3d5cc18?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjR8fGNhcnRvb24lMjBjaGFyYWN0ZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
    artist: 'Angela Thornton',
    artistAvatarUrl:
        'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFkeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',
    description: _kDummyText,
    bid: Random().nextInt(100).toDouble(),
    expiration: DateTime.now(),
  ),
  Auction(
    tag: 'Day ${Random().nextInt(100)}',
    imageUrl:
        'https://images.unsplash.com/photo-1637858868799-7f26a0640eb6?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGNhcnRvb258ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60',
    artist: 'John Salazar',
    artistAvatarUrl:
        'https://images.unsplash.com/photo-1547425260-76bcadfb4f2c?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8cGVyc29ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60',
    description: _kDummyText,
    bid: Random().nextInt(100).toDouble(),
    expiration: DateTime.now(),
  ),
];
