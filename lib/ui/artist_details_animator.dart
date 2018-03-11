import 'package:blurry_artist_details_page/data/mock_data.dart';
import 'package:blurry_artist_details_page/ui/artist_details_page.dart';
import 'package:flutter/material.dart';

class ArtistsDetailsAnimator extends StatefulWidget {
  @override
  _ArtistDetailsAnimator createState() => new _ArtistDetailsAnimator();
}

class _ArtistDetailsAnimator extends State<ArtistsDetailsAnimator>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      duration: const Duration(milliseconds: 2200),
      vsync: this,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return new ArtistDetailsPage(
      artist: MockData.andy,
      controller: _controller,
    );
  }
}
