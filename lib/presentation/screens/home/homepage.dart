import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';
import 'package:leeplay/config/theme.dart';
import 'package:leeplay/presentation/widgets/home/playlist_carousel.dart';
import 'package:marquee/marquee.dart';

import '../../../config/media_query.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 24.0),
              child: SvgPicture.asset("assets/leeplay.svg"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 12.0),
              child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Stack(
                  children: [
                    Image.asset(
                      "assets/sample_thumb.png",
                      fit: BoxFit.cover,
                      width: MQuery.width(1, context),
                      alignment: Alignment.center,
                      filterQuality: FilterQuality.high,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 24.0)
                          .copyWith(bottom: 24),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                            flex: 6,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 24),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  SizedBox(
                                    height: 64,
                                    child: Marquee(
                                      text: "우리 나중에 파리 여행 가면 에펠탑 보면서 같이 듣자",
                                      style: AppTheme.text.headline,
                                      scrollAxis: Axis.horizontal,
                                      crossAxisAlignment: CrossAxisAlignment.end,
                                      blankSpace: 20.0,
                                      velocity: 20.0,
                                      startPadding: 10.0,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(top: 6.0),
                                    child: Text(
                                      "58 minutes",
                                      style: AppTheme.text.footnote,
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            flex: 1,
                            child: AspectRatio(
                              aspectRatio: 1 / 1,
                              child: CupertinoButton.filled(
                                onPressed: () {},
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(100)),
                                padding: const EdgeInsets.symmetric(vertical: 10),
                                child: const Padding(
                                  padding: EdgeInsets.only(left: 3.0),
                                  child: Icon(
                                    CupertinoIcons.play_fill,
                                    size: 24,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            PlaylistCarousel(
              carouselTitle: "Just for you",
              seeAllOnTap: () {},
              itemCount: 5,
            ),
            PlaylistCarousel(
              carouselTitle: "Jump back in",
              seeAllOnTap: () {},
              itemCount: 5,
            ),
          ],
        ),
      ),
    );
  }
}