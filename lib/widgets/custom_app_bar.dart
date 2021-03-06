import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:nightflex/assets.dart';
import 'package:nightflex/widgets/widgets.dart';

class CustomAppBar extends StatelessWidget {
  final double scrollOffset;

  const CustomAppBar({Key key, this.scrollOffset = 0.0}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 24.0),
        color: Colors.black
            .withOpacity((scrollOffset / 350).clamp(0, 1).toDouble()),
        child: Responsive(
          mobile: _CustomAppBarMobile(),
          desktop: _CustomAppBarDesktop(),
        ));
  }
}

class _AppBarButton extends StatelessWidget {
  final String title;
  final Function onTap;

  const _AppBarButton({Key key, this.title, this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap,
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16.0,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}

class _CustomAppBarMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo0),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'TV Shows',
                  onTap: () => print('TV shows'),
                ),
                _AppBarButton(
                  title: 'Movies',
                  onTap: () => print('TV shows'),
                ),
                _AppBarButton(
                  title: 'My List',
                  onTap: () => print('My List'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _CustomAppBarDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Row(
        children: [
          Image.asset(Assets.netflixLogo1),
          const SizedBox(
            width: 12.0,
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _AppBarButton(
                  title: 'Home',
                  onTap: () => print('Home'),
                ),
                _AppBarButton(
                  title: 'TV Shows',
                  onTap: () => print('TV shows'),
                ),
                _AppBarButton(
                  title: 'Movies',
                  onTap: () => print('TV shows'),
                ),
                _AppBarButton(
                  title: 'Latest',
                  onTap: () => print('Latest'),
                ),
                _AppBarButton(
                  title: 'My List',
                  onTap: () => print('My List'),
                )
              ],
            ),
          ),
          const Spacer(),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 28.0,
                    color: Colors.white,
                    icon: Icon(Icons.search),
                    onPressed: () => print('search')),
                _AppBarButton(
                  title: 'KIDS',
                  onTap: () => print('KIDS'),
                ),
                _AppBarButton(
                  title: 'DVD',
                  onTap: () => print('DVD'),
                ),
                IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 28.0,
                    color: Colors.white,
                    icon: Icon(Icons.card_giftcard),
                    onPressed: () => print('gift')),
                IconButton(
                    padding: EdgeInsets.zero,
                    iconSize: 28.0,
                    color: Colors.white,
                    icon: Icon(Icons.notifications),
                    onPressed: () => print('Notifications')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
