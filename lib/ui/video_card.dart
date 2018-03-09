import 'package:blurry_artist_details_page/data/models.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class VideoCard extends StatelessWidget {
  VideoCard(this.video);
  final Video video;

  BoxDecoration _buildShadowAndRoundedCorners() {
    return new BoxDecoration(
      color: Colors.white.withOpacity(0.4),
      borderRadius: new BorderRadius.circular(10.0),
      boxShadow: <BoxShadow>[
        new BoxShadow(
          spreadRadius: 2.0,
          blurRadius: 10.0,
          color: Colors.black26,
        ),
      ],
    );
  }

  Widget _buildThumbnail() {
    return new ClipRRect(
      borderRadius: new BorderRadius.circular(8.0),
      child: new Stack(
        children: <Widget>[
          new Image.asset(video.thumbnail),
          new Positioned(
            bottom: 12.0,
            right: 12.0,
            child: _buildPlayButton(),
          ),
        ],
      ),
    );
  }

  Widget _buildPlayButton() {
    return new Material(
      color: Colors.black87,
      type: MaterialType.circle,
      child: new InkWell(
        onTap: () async {
          if (await canLaunch(video.url)) {
            await launch(video.url);
          }
        },
        child: new Padding(
          padding: const EdgeInsets.all(8.0),
          child: new Icon(
            Icons.play_arrow,
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget _buildInfo() {
    return new Padding(
      padding: const EdgeInsets.only(top: 16.0, left: 4.0, right: 4.0),
      child: new Text(
        video.title,
        style: new TextStyle(color: Colors.white.withOpacity(0.85)),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      width: 175.0,
      padding: const EdgeInsets.all(8.0),
      margin: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 16.0),
      decoration: _buildShadowAndRoundedCorners(),
      child: new Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          new Flexible(flex: 3, child: _buildThumbnail()),
          new Flexible(flex: 2, child: _buildInfo()),
        ],
      ),
    );
  }
}
