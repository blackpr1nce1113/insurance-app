import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:async';

class BannerSlider extends StatefulWidget {
  @override
  _BannerSliderState createState() => _BannerSliderState();
}

class _BannerSliderState extends State<BannerSlider> {
  int _currentIndex = 0;
  List<String> _imageUrls = [
    "images/d1ee75a0-c4b1-48ad-a365-6a4276880a95.jpg",
    "images/0314f213-f49b-48ec-884b-e2cb1e2a0617.jpg",
    "images/03ed1373-c0a3-41b7-b18f-e1027c56c083.jpg",
    "images/b4d16d5b-88d5-48dc-aa04-1b5dcd980920.jpg",
  ];
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 7), (Timer timer) {
      if (_currentIndex < _imageUrls.length - 1) {
        setState(() {
          _currentIndex++;
        });
      } else {
        setState(() {
          _currentIndex = 0;
        });
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: _imageUrls.map((url) {
        return Container(
          child: Image.asset(
            url,
            fit: BoxFit.contain,
            width: double.infinity,
          ),
        );
      }).toList(),
      options: CarouselOptions(
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
        onPageChanged: (index, reason) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
