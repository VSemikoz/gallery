import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/src/view/details/screen/details.dart';

import 'bloc/home.dart';

const double _itemSize = 57;
const _itemsFromEnd = 7;

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          return SafeArea(
            top: false,
            child: Column(
              children: [
                const _HomeAppBar(),
                if (state is HomeStateOnSuccess) _SuccessScreen(state: state),
                if (state is HomeStateOnLoading) const _LoadingScreen(),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _SuccessScreen extends StatefulWidget {
  final HomeStateOnSuccess state;

  const _SuccessScreen({
    Key? key,
    required this.state,
  }) : super(key: key);

  @override
  State<_SuccessScreen> createState() => _SuccessScreenState();
}

class _SuccessScreenState extends State<_SuccessScreen> {
  late ScrollController controller;
  late bool isLoading;

  @override
  void initState() {
    controller = ScrollController(keepScrollOffset: false);
    isLoading = false;
    return super.initState();
  }

  bool _onNotification(BuildContext context, ScrollNotification scroll) {
    print("aboba");
    if (scroll.metrics.pixels == scroll.metrics.maxScrollExtent) {
      setState(() => isLoading = true);
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: NotificationListener<ScrollNotification>(
        onNotification: (scroll) => _onNotification(context, scroll),
        child: GridView.builder(
          controller: controller,
          padding: EdgeInsets.zero,
          itemCount: widget.state.images.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
          itemBuilder: (context, index) => _HomeItem(
            url: widget.state.images[index].largeImageURL ?? "",
          ),
        ),
      ),
    );
  }
}

class _LoadingScreen extends StatelessWidget {
  const _LoadingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          CircularProgressIndicator(),
        ],
      ),
    );
  }
}

class _HomeItem extends StatelessWidget {
  final String url;

  const _HomeItem({
    Key? key,
    required this.url,
  }) : super(key: key);

  _onImagePressed(BuildContext context) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(url: url)));

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1),
      child: MaterialTapWrapper(
          onPressed: () => _onImagePressed(context),
          child: CachedNetworkImage(
            imageUrl: url,
            fit: BoxFit.fitHeight,
            width: double.infinity,
            height: double.infinity,
            progressIndicatorBuilder: (context, url, downloadProgress) => Container(
              padding: const EdgeInsets.all(30),
              color: Colors.grey,
              child: const CircularProgressIndicator(),
            ),
          )),
    );
  }
}

class _HomeAppBar extends StatelessWidget {
  const _HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.of(context).padding.top,
          width: double.infinity,
          color: Colors.blue,
        ),
        Container(
          height: 60,
          width: double.infinity,
          color: Colors.blue,
          child: const Center(child: Text("Gallery")),
        ),
      ],
    );
  }
}

const double _opacity = 0.3;

class MaterialTapWrapper extends StatelessWidget {
  final Widget child;
  final Function() onPressed;
  final double? width;
  final double? height;

  const MaterialTapWrapper({
    Key? key,
    required this.child,
    required this.onPressed,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Center(child: child),
          ),
          Positioned.fill(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                  onTap: () => onPressed(),
                  highlightColor: Colors.white.withOpacity(_opacity),
                  splashColor: Colors.white.withOpacity(_opacity)),
            ),
          ),
        ],
      ),
    );
  }
}
