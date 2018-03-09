import 'package:blurry_artist_details_page/data/mock_data.dart';
import 'package:blurry_artist_details_page/ui/artist_details_page.dart';
import 'package:flutter/material.dart';

class ArtistsDetailsContainer extends StatefulWidget {
  @override
  _ArtistDetailsContainerState createState() =>
      new _ArtistDetailsContainerState();
}

class _ArtistDetailsContainerState extends State<ArtistsDetailsContainer>
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
