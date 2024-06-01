import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class NewsDetailPage extends StatelessWidget {
  final String appBarTitle;

  const NewsDetailPage({
    Key? key,
    required this.appBarTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          appBarTitle,
          style: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          SizedBox(height: 20),
          Center(
            child: Text(
              'โปรดเลือกชนิดยานพาหนะ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSmallButton(
                      url: 'https://lin.ee/yDLQhKj',
                      imagePath:
                          'images/302bb139-936f-43cf-ab11-d439770a9e07.jpg',
                      width: 120,
                      height: 120,
                    ),
                    SizedBox(width: 25),
                    CustomSmallButton(
                      url: 'https://lin.ee/yDLQhKj',
                      imagePath:
                          'images/2274579a-5eb1-4d0a-b3b1-8d3fd653327f.jpg',
                      width: 120,
                      height: 120,
                    ),
                  ],
                ),
                SizedBox(height: 25),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomSmallButton(
                      url: 'https://lin.ee/yDLQhKj',
                      imagePath:
                          'images/8a6bf386-5bac-49af-81f0-b84f14d4cf09.jpg',
                      width: 120,
                      height: 120,
                    ),
                    SizedBox(width: 25),
                    CustomSmallButton(
                      url: 'https://lin.ee/yDLQhKj',
                      imagePath:
                          'images/69cd797c-9197-4c60-a12b-1c7431263036.jpg',
                      width: 120,
                      height: 120,
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Center(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ContactButton(
                      url: 'https://lin.ee/yDLQhKj',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSmallPageButton extends StatelessWidget {
  final String buttonText;
  final String imagePath;
  final double fontSize;

  const CustomSmallPageButton({
    Key? key,
    required this.buttonText,
    required this.imagePath,
    this.fontSize = 20.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => NewsDetailPage(
              appBarTitle: buttonText,
            ),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            width: 100,
            height: 100,
          ),
          SizedBox(height: 5),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Text(
              buttonText,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: fontSize,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomSmallButton extends StatelessWidget {
  final String url;
  final String imagePath;
  final double width;
  final double height;

  const CustomSmallButton({
    Key? key,
    required this.url,
    required this.imagePath,
    required this.width,
    required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _launchURL(url),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.zero,
        elevation: 0,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        visualDensity: VisualDensity.compact,
      ),
      child: Container(
        width: 150,
        height: 150,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              imagePath,
              width: 140,
              height: 140,
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.inAppBrowserView)) {
      throw 'Could not launch $url';
    }
  }
}

class ContactButton extends StatelessWidget {
  final String url;

  const ContactButton({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => _launchURL(url),
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        elevation: 0,
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: Image.asset(
          'images/a5ff7007-8fea-4441-8512-92f48b773730.jpg',
          fit: BoxFit.fitWidth,
        ),
      ),
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);

    if (!await launchUrl(uri, mode: LaunchMode.inAppBrowserView)) {
      throw 'Could not launch $url';
    }
  }
}
