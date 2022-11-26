import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:home_work/models/auction.dart';
import 'package:home_work/utils/extensions.dart';
import 'package:home_work/widgets/user.avatar.dart';

class AuctionPage extends StatefulWidget {
  final Auction auction;

  const AuctionPage({Key? key, required this.auction}) : super(key: key);

  @override
  State<AuctionPage> createState() => _AuctionPageState();
}

class _AuctionPageState extends State<AuctionPage> {
  @override
  Widget build(BuildContext context) => AnimationLimiter(
        child: Scaffold(
          extendBody: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Transform(
              transform: Matrix4.translationValues(-120.0, 0.0, 0.0),
              child: Text(
                'Auctions',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            centerTitle: true,
            elevation: 0,
            backgroundColor: context.colorScheme.background,
            leading: IconButton(
              icon: Icon(Icons.arrow_back, color: Colors.black),
              onPressed: () => Navigator.of(context).pop(),
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.favorite,
                  color: context.colorScheme.error,
                ),
              ),

              // Icons
              IconButton(
                onPressed: () {},
                icon: Icon(
                  TablerIcons.dots_vertical,
                  color: context.colorScheme.onBackground,
                ),
              ),
            ],
          ),
          body: ListView(
            padding: EdgeInsets.fromLTRB(
              24,
              40,
              24,
              context.height * 0.15,
            ),
            children: [
              Container(
                width: context.width,
                height: context.height * 0.45,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: 2.5,
                    color: context.theme.disabledColor.withOpacity(0.1),
                  ),
                ),
                padding: const EdgeInsets.all(12),
                child: Hero(
                  tag: widget.auction.imageUrl,
                  child: CachedNetworkImage(
                    imageUrl: widget.auction.imageUrl,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.auction.tag,
                    style: context.theme.textTheme.headline4,
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      UserAvatar(
                          avatar: widget.auction.artistAvatarUrl, size: 36),
                      SizedBox(width: 8),
                      Text('@${widget.auction.artist}',
                          style: context.theme.textTheme.subtitle1),
                    ],
                  ),
                  SizedBox(height: 24),
                  Text(
                    widget.auction.description,
                    style: context.theme.textTheme.bodyText1,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Divider(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            // Avatar
                            Container(
                              margin: const EdgeInsets.only(right: 16),
                              // Force Image to Fit The Decoration of the (Container]
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: context.theme.disabledColor
                                    .withOpacity(0.1),
                              ),
                              height: 56,
                              width: 56,

                              child: CachedNetworkImage(
                                imageUrl:
                                    'https://media.istockphoto.com/id/1392744098/photo/adorable-african-little-girl-on-studio-white-background.jpg?b=1&s=170667a&w=0&k=20&c=-sog06aoX-iCddhrPTwbCVJqb2R2_WFRuTTgMWyaKXo=',
                                fit: BoxFit.cover,
                              ),
                            ),
                            const SizedBox(width: 8),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Highest Bid Placed By',
                                    style: context.theme.textTheme.subtitle2),
                                Text(
                                  'Mercy Idan',
                                  style: context.theme.textTheme.subtitle1
                                      ?.copyWith(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      // SizeBox
                      SizedBox(width: 24),
                      Text(
                        '15.97 ETH',
                        style: context.theme.textTheme.headline6
                            ?.copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),

          // bottom navigation bar
          bottomNavigationBar: SafeArea(
            top: false,
            child: GestureDetector(
              onTap: () {},
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                decoration: BoxDecoration(
                  color: context.colorScheme.onBackground,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Place Bid',
                      style: context.theme.textTheme.headline6?.copyWith(
                        color: context.colorScheme.background,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '20h: 35min: 08s',
                      style: context.theme.textTheme.subtitle1?.copyWith(
                        color: context.colorScheme.background,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );
}
