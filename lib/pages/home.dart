// ignore_for_file: prefer_const_constructors, unused_import, unused_field

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:nft_app_project/utils/extensions.dart';
import 'package:nft_app_project/models/auction.dart';
import 'package:nft_app_project/widgets/auction.tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// categories to render
  final _categories = [
    'Trending',
    'Digital Arts',
    '3D Videos',
    'Games',
    'Collectibles'
  ];

  /// Reverse the list
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

        // Add Profile
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 16),
            // force image to be bound by the decoration of the (Container]
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: context.theme.disabledColor.withOpacity(0.1),
            ),
            height: 56,
            width: 56,

            // however, this image provider does not cache the image
            /// and downloads it every time the user visits the page
            /// which is not ideal. So let's use a package called
            /// 'cached_network_image. By the way I have added all of the needed
            ///dependencies

            child: CachedNetworkImage(
              imageUrl:
                  'https://images.unsplash.com/photo-1488426862026-3ee34a7d66df?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8bGFkeXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60',

              // crop in on the image
              fit: BoxFit.cover,
            ),
          ),
        ],
      ),

      // Main content of the page
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 16, 24, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  /// left hand side
                  /// animate each child individually. animate from left to right
                  AnimationConfiguration.synchronized(
                    duration: const Duration(milliseconds: 850),
                    child: SlideAnimation(
                      horizontalOffset: -50,
                      child: FadeInAnimation(
                        child: Text.rich(
                          TextSpan(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              //Live
                              TextSpan(
                                text: 'Live\n',
                                style: context.theme.textTheme.subtitle1,
                              ),

                              //Auctions
                              TextSpan(
                                text: 'Auctions\n',
                                style: context.theme.textTheme.headline4,
                              ),

                              // Enjoy the latest hot auctions
                              TextSpan(text: 'Enjoy the latest hot auctions'),
                            ],
                          ),
                          style: context.theme.textTheme.subtitle1,
                        ),
                      ),
                    ),
                  ),

                  /// right hand side.
                  /// icon for setting,
                  /// animate from right to left
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

            // list of categories
            // we will use a list view that scrolls horizontally
            SizedBox(
              // using 40 because the height of the text and the spacing <= 40
              height: 40,
              child: ListView.separated(
                  padding: EdgeInsets.symmetric(horizontal: 20),

                  /// change scroll direction, but this requires that we make
                  /// our list constrained vertically in terms of the height
                  scrollDirection: Axis.horizontal,

                  /// allow it to shrink to the size of it content
                  shrinkWrap: true,

                  /// animate the list specially too
                  itemBuilder: (context, index) =>
                      AnimationConfiguration.staggeredList(
                        duration: const Duration(milliseconds: 1200),
                        position: index,
                        child: SlideAnimation(
                          horizontalOffset: 100,
                          child: FadeInAnimation(
                            child: Container(
                              decoration: BoxDecoration(
                                // only set the first item to be active
                                color: index == 0
                                    ? context.colorScheme.onBackground
                                    : context.colorScheme.background,

                                // small curvature at the edges of the container
                                borderRadius: BorderRadius.circular(4),
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              // get the text at the selected index in the categories list
                              child: Text(
                                _categories[index],
                                style:
                                    context.theme.textTheme.subtitle1?.copyWith(
                                  /// invert the colors
                                  color: index == 0
                                      ? context.colorScheme.background
                                      : context.colorScheme.onBackground,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),

                  // set some spacing between the individual children
                  separatorBuilder: (context, index) => SizedBox(width: 16),

                  /// show as many itens as there are in the category
                  itemCount: _categories.length),
            ),

            /// actual NFTs
            /// since it is in an [Expanded], we don't need to constrain it vertically
            /// because it is already filling up the remaining space
            ///
            Expanded(
              child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,

                /// let's extract this into a standalone widget to keep our page cleaned
                itemBuilder: (context, index) =>
                    AnimationConfiguration.staggeredList(
                  position: index,
                  // shorter duration
                  duration: const Duration(milliseconds: 550),
                  child: SlideAnimation(
                    /// let's make the list static through the animation with keys,
                    key: ValueKey(index),
                    horizontalOffset: 150,
                    child: FadeInAnimation(
                      child: AuctionItemTile(auction: _auctions[index]),
                    ),
                  ),
                ),

                // set some spacing between the individual children
                separatorBuilder: (context, index) => SizedBox(width: 24),

                /// show as many itens as there are in the auction
                itemCount: _auctions.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
