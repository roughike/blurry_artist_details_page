import 'package:blurry_artist_details_page/artist.dart';
import 'package:blurry_artist_details_page/artist_details_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  static final Artist andy = new Artist(
    firstName: 'Andy',
    lastName: 'Fraser',
    avatar: 'assets/avatar.png',
    backdropPhoto: 'assets/backdrop.png',
    location: 'London, England',
    biography: 'Andrew McLan "Andy" Fraser was an English songwriter and bass '
        'guitarist whose career lasted over forty years, and includes two spells '
        'as a member of the rock band Free, which he helped found in 1968, aged 15.',
    videos: <Video>[
      new Video(
        title: 'Free - Mr. Big - Live at Granada Studios 1970',
        thumbnail: 'assets/video1_thumb.png',
        url: 'https://www.youtube.com/watch?v=_FhCilozomo',
      ),
      new Video(
        title: 'Free - I\'ll Be Creepin\' - Live at Granada Studios 1970',
        thumbnail: 'assets/video2_thumb.png',
        url: 'https://www.youtube.com/watch?v=3qK8O3UoqN8',
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter Demo',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: new ArtistDetailsPage(andy),
    );
  }
}
