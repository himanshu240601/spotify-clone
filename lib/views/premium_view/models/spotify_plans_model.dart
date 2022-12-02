import 'package:flutter/material.dart';

class SpotifyPlansModel{
  String planTitle;
  String planPrice;
  String planDuration;
  String planPerks;
  String planButtonText;
  String planInformation;
  Color colorTopLeft;
  Color colorBottomRight;
  SpotifyPlansModel(
      this.planTitle,
      this.planPrice,
      this.planDuration,
      this.planPerks,
      this.planButtonText,
      this.planInformation,
      this.colorTopLeft,
      this.colorBottomRight
      );
}