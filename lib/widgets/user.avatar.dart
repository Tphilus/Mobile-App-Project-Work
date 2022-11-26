import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:home_work/utils/extensions.dart';

// user profile image widget
class UserAvatar extends StatelessWidget {
  final String avatar;
  final double size;
  const UserAvatar({super.key, required this.avatar, required this.size});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 16),
      // Force Image To Fit The Decoration of The (Container]
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: context.theme.disabledColor.withOpacity(0.1),
      ),
      height: size,
      width: size,

      child: CachedNetworkImage(
        imageUrl: avatar,
        // Crop Image
        fit: BoxFit.cover,
      ),
    );
  }
}
