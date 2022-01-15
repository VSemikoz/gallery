import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/src/ui/tappable/base.dart';
import 'package:shimmer/shimmer.dart';

import '../../details/screen/details.dart';
import 'bloc/home.dart';

const int _defaultPaginationSize = 100;
const int _itemsInRow = 3;
const double _appBarHeight = 60;
const EdgeInsets _defaultPadding = EdgeInsets.all(8.0);
const double _loadingHeightPercent = 0.1;
const EdgeInsets _itemPadding = EdgeInsets.all(1);

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) => current is! HomeStateOnComplete,
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
  late bool showProgressBar;
  late bool isComplete;
  double? itemSize;

  @override
  void initState() {
    controller = ScrollController(keepScrollOffset: false);
    showProgressBar = false;
    isComplete = false;
    return super.initState();
  }

  bool _onNotification(BuildContext context, ScrollNotification scroll) {
    final isLoading = context.read<HomeBloc>().isLoading;
    final paginationSize = itemSize ?? _defaultPaginationSize;
    if (scroll.metrics.pixels >= (scroll.metrics.maxScrollExtent - paginationSize) && !isLoading) {
      context.read<HomeBloc>().add(const HomeEvent.loadNext());
      setState(() => showProgressBar = true);
      return true;
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    itemSize ??= MediaQuery.of(context).size.width / _itemsInRow;
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state is HomeStateOnSuccess) {
          setState(() => showProgressBar = false);
        } else if (state is HomeStateOnComplete) {
          setState(() => isComplete = true);
        }
      },
      child: Expanded(
        child: NotificationListener<ScrollNotification>(
          onNotification: (scroll) => _onNotification(context, scroll),
          child: CustomScrollView(
            slivers: [
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: _itemsInRow),
                delegate: SliverChildBuilderDelegate(
                  (context, index) => _HomeItem(url: widget.state.images[index].largeImageURL ?? ""),
                  childCount: widget.state.images.length,
                  addAutomaticKeepAlives: true,
                ),
              ),
              if (showProgressBar && !isComplete) const SliverToBoxAdapter(child: _LoadingIndicator()),
              if (isComplete) const SliverToBoxAdapter(child: _CompleteIndicator()),
            ],
          ),
        ),
      ),
    );
  }
}

class _CompleteIndicator extends StatelessWidget {
  const _CompleteIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: _defaultPadding,
      child: Center(child: Text("end of story :(")),
    );
  }
}

class _LoadingIndicator extends StatelessWidget {
  const _LoadingIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width * _loadingHeightPercent;
    return Column(
      children: [
        Padding(
          padding: _defaultPadding,
          child: SizedBox(
            width: size,
            height: size,
            child: const CircularProgressIndicator(),
          ),
        ),
      ],
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
      padding: _itemPadding,
      child: MaterialTapWrapper(
        onPressed: () => _onImagePressed(context),
        child: Hero(
          tag: "image$url",
          child: CachedNetworkImage(
            imageUrl: url,
            fit: BoxFit.fitHeight,
            width: double.infinity,
            height: double.infinity,
            progressIndicatorBuilder: (context, url, downloadProgress) => const _LoadingImage(),
          ),
        ),
      ),
    );
  }
}

class _LoadingImage extends StatelessWidget {
  const _LoadingImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: Colors.grey,
      highlightColor: Colors.white60,
      child: Container(
        color: Colors.white60,
      ),
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
          height: _appBarHeight,
          width: double.infinity,
          color: Colors.blue,
          child: const Center(child: Text("Gallery")),
        ),
      ],
    );
  }
}


