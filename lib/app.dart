import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:gallery/src/common/injection.dart';
import 'package:gallery/src/view/home/screen/bloc/bloc.dart';

import 'src/view/home/screen/bloc/event.dart';
import 'src/view/home/screen/home.dart';

class GalleryApp extends StatelessWidget {
  const GalleryApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        title: "Gallery",
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        home: BlocProvider(
          create: (c) => getIt<HomeBloc>()..add(const HomeEvent.init()),
          child: const HomeScreen(),
        ),
      );
}
