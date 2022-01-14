import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:share/share.dart';

import '../../home/screen/home.dart';

class DetailsScreen extends StatelessWidget {
  final String url;

  const DetailsScreen({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Center(
            child: InteractiveViewer(
              child: CachedNetworkImage(
                imageUrl: url,
                fit: BoxFit.cover,
              ),
            ),
          ),
          _AppBar(url: url),
        ],
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  final String url;

  const _AppBar({
    Key? key,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).padding.top,
          color: Colors.grey.withOpacity(0.2),
        ),
        Container(
          height: 50,
          width: double.infinity,
          color: Colors.grey.withOpacity(0.2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const _IconBack(),
              _IconShare(url: url),
            ],
          ),
        ),
      ],
    );
  }
}

class _IconShare extends StatelessWidget {
  final String url;

  const _IconShare({
    Key? key,
    required this.url,
  }) : super(key: key);

  _onSharePressed(BuildContext context) => Share.share(url);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icons.share,
      onPressed: () => _onSharePressed(context),
    );
  }
}

class _IconBack extends StatelessWidget {
  const _IconBack({Key? key}) : super(key: key);

  _onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icons.arrow_back_sharp,
      onPressed: () => _onBackPressed(context),
    );
  }
}

class IconButton extends StatelessWidget {
  final Function() onPressed;
  final IconData icon;
  final Color? color;
  final double? width;
  final double? height;

  const IconButton({
    Key? key,
    required this.onPressed,
    required this.icon,
    this.color,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: SizedBox(
        width: width ?? 25,
        height: height ?? 25,
        child: MaterialTapWrapper(
          onPressed: onPressed,
          child: Icon(icon, color: color ?? Colors.white),
        ),
      ),
    );
  }
}
