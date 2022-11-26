// ignore_for_file: unused_element

import 'dart:math';

/// Auction Data Model Section
class Auction {
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
        'https://images.unsplash.com/photo-1605895773434-3579e181bc3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YmxhY2slMjBwYW50aGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    artist: 'John Doe',
    artistAvatarUrl:
        'https://images.unsplash.com/photo-1605895773434-3579e181bc3e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8YmxhY2slMjBwYW50aGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    description: _kDummyText,
    bid: Random().nextInt(100).toDouble(),
    expiration: DateTime.now(),
  ),
  Auction(
    tag: 'Day ${Random().nextInt(100)}',
    imageUrl:
        'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2lybHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    artist: 'Freeman Phinehas',
    artistAvatarUrl:
        'https://images.unsplash.com/photo-1529626455594-4ff0802cfb7e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8Z2lybHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    description: _kDummyText,
    bid: Random().nextInt(100).toDouble(),
    expiration: DateTime.now(),
  ),
  Auction(
    tag: 'Day ${Random().nextInt(100)}',
    imageUrl:
        'https://images.unsplash.com/photo-1498746607408-1e56960e3bdd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Z2lybHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    artist: 'Winner Dadzie',
    artistAvatarUrl:
        'https://images.unsplash.com/photo-1498746607408-1e56960e3bdd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8Z2lybHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
    description: _kDummyText,
    bid: Random().nextInt(100).toDouble(),
    expiration: DateTime.now(),
  ),
  Auction(
    tag: 'Day ${Random().nextInt(100)}',
    imageUrl:
        'https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGdpcmxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    artist: 'Alexandra Inout',
    artistAvatarUrl:
        'https://images.unsplash.com/photo-1464863979621-258859e62245?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGdpcmxzfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
    description: _kDummyText,
    bid: Random().nextInt(100).toDouble(),
    expiration: DateTime.now(),
  ),
];
