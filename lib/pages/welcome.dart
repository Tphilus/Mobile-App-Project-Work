import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:flutter_tabler_icons/flutter_tabler_icons.dart';
import 'package:nft_app_project/pages/home.dart';
import 'package:nft_app_project/utils/extensions.dart';

class welcomePage extends StatelessWidget {
  const welcomePage({super.key});

  get builder => null;

  @override
  Widget build(BuildContext context) {
    return AnimationLimiter(
      child: Scaffold(
        extendBodyBehindAppBar: false,
        appBar: AppBar(
          centerTitle: false,
          title: Icon(
            TablerIcons.brand_sentry,
            color: context.colorScheme.onBackground,
            size: 36,
          ),
          elevation: 0,
          backgroundColor: context.colorScheme.background,
          actions: [
            Container(
              margin: const EdgeInsets.only(right: 16),
              decoration: BoxDecoration(
                  color: context.colorScheme.onBackground,
                  shape: BoxShape.circle),
              child: Padding(
                padding: EdgeInsets.all(12),
                child: Icon(
                  TablerIcons.wallet,
                  color: context.colorScheme.background,
                ),
              ),
            ),
          ],
        ), // AppBar

        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: context.height * 0.05,
              ),

              Padding(
                padding: EdgeInsets.only(left: 24),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(TablerIcons.bolt,
                        size: context.theme.textTheme.subtitle2?.fontSize),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Started',
                      style: context.theme.textTheme.subtitle1,
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 32,
              ),

              Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: AnimationConfiguration.toStaggeredList(
                    duration: Duration(milliseconds: 550),

                    ///  Animation
                    childAnimationBuilder: (child) => SlideAnimation(
                      ///  Animates from right to left
                      horizontalOffset: 50.0,

                      child: FadeInAnimation(child: child),
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'Discover '),
                              TextSpan(
                                text: 'Rare Collections, ',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              TextSpan(text: ' Of'),
                              TextSpan(
                                text: ' Art & NFTs.',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                            style: context.theme.textTheme.headline3,
                          ),
                        ),
                      ),

                      // SixedBox
                      SizedBox(
                        height: 24,
                      ),

                      // Subtitle Sction
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 24),
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                  text:
                                      'Digital marketpalce for crypto collectiobles                     '),
                              TextSpan(
                                text: 'and non-fungible tokens ',
                              ),
                              TextSpan(
                                text: 'NFTS',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  )),

              // SizedBox
              SizedBox(
                height: context.height * 0.05,
              ),

              // Bottom section.
              Row(
                children: [
                  Column(
                    children: AnimationConfiguration.toStaggeredList(
                      duration: Duration(milliseconds: 950),

                      /// Animation Sections
                      childAnimationBuilder: (child) => SlideAnimation(
                        ///  Animates from left to right
                        horizontalOffset: -50.0,

                        child: FadeInAnimation(child: child),
                      ),
                      children: [
                        // Artwork
                        Padding(
                          padding: EdgeInsets.only(left: 50, top: 0),
                          child: Text(
                            '12.1K',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 40),
                          child: Text(
                            '''Art Work  ''',
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),

                        Padding(
                          padding: EdgeInsets.only(
                            left: 50,
                          ),
                          child: Text(
                            '1.7M+',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text('''  Artist'''),
                        SizedBox(
                          height: 50,
                        ),

                        Padding(
                          padding: EdgeInsets.only(
                            left: 50,
                          ),
                          child: Text(
                            '45K+',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Text('''      Auction'''),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 38),
                    child: Container(
                      height: 280,
                      width: 250,
                      decoration: BoxDecoration(
                        color: Color(0xFFD2D5FF),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 24),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const HomePage()),
                              );
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xFF8E95FE),
                              ),
                              padding: EdgeInsets.all(24),
                              // Icon
                              child: Icon(
                                Icons.arrow_right_alt,
                                size: 30,
                                color: Colors.black,
                              ),
                            ),
                          ),

                          // SizeBox
                          SizedBox(
                            height: 28,
                          ),

                          // text
                          Text(
                            "Discover Artwork",
                            style: context.theme.textTheme.headline4?.copyWith(
                                color: context.colorScheme.onBackground,
                                fontWeight: FontWeight.w500),
                          ),

                          Divider(
                            color: context.colorScheme.onBackground,
                            thickness: 3,
                            endIndent: context.width * 0.2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              // Footer Section
              Padding(
                padding: EdgeInsets.fromLTRB(40, 40, 24, 16),
                child: SafeArea(
                  top: false,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Supported by",
                        style: context.theme.textTheme.subtitle1,
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      Expanded(
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                          // Animations
                          children: AnimationConfiguration.toStaggeredList(
                            duration: Duration(milliseconds: 1100),

                            ///  Animation
                            childAnimationBuilder: (child) => SlideAnimation(
                              ///  Animates from bottom to top
                              verticalOffset: 50.0,

                              child: FadeInAnimation(child: child),
                            ),
                            children: [
                              Icon(TablerIcons.brand_airbnb,
                                  size: context.width * 0.1),
                              Icon(TablerIcons.brand_angular,
                                  size: context.width * 0.1),
                              Icon(TablerIcons.brand_firebase,
                                  size: context.width * 0.1), // Icon
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
