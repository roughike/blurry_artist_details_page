import 'package:flutter/material.dart';

class ArtistDetailsAnimator {
  ArtistDetailsAnimator(this.controller)
      : backdropOpacity = _backdropOpacity(controller),
        backdropBlur = _backdropBlur(controller),
        avatarSize = _avatarSize(controller),
        nameOpacity = _nameOpacity(controller),
        locationOpacity = _locationOpacity(controller),
        dividerWidth = _dividerWidth(controller),
        biographyOpacity = _biographyOpacity(controller),
        videoScrollerXTranslation = _videoScrollerXTranslation(controller),
        videoScrollerOpacity = _videoScrollerOpacity(controller);

  final AnimationController controller;
  final Animation<double> backdropOpacity;
  final Animation<double> backdropBlur;
  final Animation<double> avatarSize;
  final Animation<double> nameOpacity;
  final Animation<double> locationOpacity;
  final Animation<double> dividerWidth;
  final Animation<double> biographyOpacity;
  final Animation<double> videoScrollerXTranslation;
  final Animation<double> videoScrollerOpacity;

  static Animation<double> _backdropOpacity(AnimationController controller) {
    return new Tween(begin: 0.5, end: 1.0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.000,
          0.500,
          curve: Curves.ease,
        ),
      ),
    );
  }

  static Animation<double> _backdropBlur(AnimationController controller) {
    return new Tween(begin: 0.0, end: 5.0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.000,
          0.800,
          curve: Curves.ease,
        ),
      ),
    );
  }

  static Animation<double> _avatarSize(AnimationController controller) {
    return new Tween(begin: 0.0, end: 1.0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.100,
          0.400,
          curve: Curves.elasticOut,
        ),
      ),
    );
  }

  static Animation<double> _nameOpacity(AnimationController controller) {
    return new Tween(begin: 0.0, end: 1.0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.350,
          0.450,
          curve: Curves.easeIn,
        ),
      ),
    );
  }

  static Animation<double> _locationOpacity(AnimationController controller) {
    return new Tween(begin: 0.0, end: 0.85).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.500,
          0.600,
          curve: Curves.easeIn,
        ),
      ),
    );
  }

  static Animation<double> _dividerWidth(AnimationController controller) {
    return new Tween(begin: 0.0, end: 225.0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.650,
          0.750,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }

  static Animation<double> _biographyOpacity(AnimationController controller) {
    return new Tween(begin: 0.0, end: 0.85).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.750,
          0.900,
          curve: Curves.easeIn,
        ),
      ),
    );
  }

  static Animation<double> _videoScrollerXTranslation(
      AnimationController controller) {
    return new Tween(begin: 60.0, end: 0.0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.830,
          1.000,
          curve: Curves.ease,
        ),
      ),
    );
  }

  static Animation<double> _videoScrollerOpacity(
      AnimationController controller) {
    return new Tween(begin: 0.0, end: 1.0).animate(
      new CurvedAnimation(
        parent: controller,
        curve: new Interval(
          0.830,
          1.000,
          curve: Curves.fastOutSlowIn,
        ),
      ),
    );
  }
}
