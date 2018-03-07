import 'package:flutter/material.dart';

Animation<double> backdropOpacity(AnimationController controller) {
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

Animation<double> backdropBlur(AnimationController controller) {
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

Animation<double> avatarSize(AnimationController controller) {
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

Animation<double> nameOpacity(AnimationController controller) {
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

Animation<double> locationOpacity(AnimationController controller) {
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

Animation<double> dividerWidth(AnimationController controller) {
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

Animation<double> biographyOpacity(AnimationController controller) {
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

Animation<double> videoScrollerXTranslation(AnimationController controller) {
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

Animation<double> videoScrollerOpacity(AnimationController controller) {
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