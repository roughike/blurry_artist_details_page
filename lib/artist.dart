import 'package:meta/meta.dart';

class Artist {
  Artist({
    @required this.firstName,
    @required this.lastName,
    @required this.avatar,
    @required this.backdropPhoto,
    @required this.location,
    @required this.biography,
    @required this.videos,
  });

  final String firstName;
  final String lastName;
  final String avatar;
  final String backdropPhoto;
  final String location;
  final String biography;
  final List<Video> videos;
}

class Video {
  Video({
    @required this.title,
    @required this.thumbnail,
    @required this.url,
  });

  final String title;
  final String thumbnail;
  final String url;
}
