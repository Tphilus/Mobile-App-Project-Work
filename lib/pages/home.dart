import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:home_work/utils/extensions.dart';
import 'package:home_work/models/auction.dart';
import 'package:home_work/widgets/auction.tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// categories tScetions
  final _categories = [
    'Trending',
    'Digital Arts',
    '3D Videos',
    'Games',
    'Collectibles'
  ];

  /// Reverse list Section
  final _auctions = kSampleAuctions.reversed.toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.colorScheme.background,
        elevation: 0,
        automaticallyImplyLeading: false,
        centerTitle: false,
        title: Icon(
          TablerIcons.brand_sentry,
          color: context.colorScheme.onBackground,
          size: 36,
        ),

        // Profile Section
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.theme.disabledColor.withOpacity(0.1),
            ),
            height: 56,
            width: 56,
            child: CachedNetworkImage(
              imageUrl:
                  'https://media.istockphoto.com/id/1392744098/photo/adorable-african-little-girl-on-studio-white-background.jpg?b=1&s=170667a&w=0&k=20&c=-sog06aoX-iCddhrPTwbCVJqb2R2_WFRuTTgMWyaKXo=',
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///  Animate from left to right
                  AnimationConfiguration.synchronized(
                    duration: const Duration(milliseconds: 850),
                    child: SlideAnimation(
                      horizontalOffset: -50,
                      child: FadeInAnimation(
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: 'Live\n',
                                style: context.theme.textTheme.subtitle1,
                              ),
                              TextSpan(
                                text: 'Auctions\n',
                                style: context.theme.textTheme.headline4,
                              ),
                              TextSpan(text: 'Enjoy the latest hot auctions'),
                            ],
                          ),
                          style: context.theme.textTheme.subtitle1,
                        ),
                      ),
                    ),
                  ),

                  /// Animate from right to left
                  AnimationConfiguration.synchronized(
                    duration: const Duration(milliseconds: 850),
                    child: SlideAnimation(
                      horizontalOffset: 50,
                      child: FadeInAnimation(
                        child: IconButton(
                          onPressed: () {},
                          /*todo -› add a tap action*/
                          icon: Icon(Icons.tune),
                          iconSize: 32,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 40),

            //  Categories Section
            //  Scrolls horizontally
            SizedBox(
              height: 40,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      AnimationConfiguration.staggeredList(
                        duration: const Duration(milliseconds: 1200),
                        position: index,
                        child: SlideAnimation(
                          horizontalOffset: 100,
                          child: FadeInAnimation(
                            child: Container(
                              decoration: BoxDecoration(
                                color: index == 0
                                    ? context.colorScheme.onBackground
                                    : context.colorScheme.background,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              child: Text(
                                _categories[index],
                                style:
                                    context.theme.textTheme.subtitle1?.copyWith(
                                  /// Invert Colors Section
                                  color: index == 0
                                      ? context.colorScheme.background
                                      : context.colorScheme.onBackground,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                  separatorBuilder: (context, index) => SizedBox(width: 16),
                  itemCount: _categories.length),
            ),

            ///  NFTs Section

            Expanded(
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) =>
                    AnimationConfiguration.staggeredList(
                  position: index,
                  // shorter duration
                  duration: const Duration(milliseconds: 550),
                  child: SlideAnimation(
                    key: ValueKey(index),
                    horizontalOffset: 150,
                    child: FadeInAnimation(
                      child: AuctionItemTile(auction: _auctions[index]),
                    ),
                  ),
                ),
                separatorBuilder: (context, index) => SizedBox(width: 24),
                itemCount: _auctions.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
