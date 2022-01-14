import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gallery/src/data/models/image.dart';
import 'package:gallery/src/domain/images.dart';
import 'package:injectable/injectable.dart';

import 'home.dart';

const int _maxImages = 150;
const int _limit = 10;

@Injectable()
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(
    this._imagesUseCase,
  ) : super(const HomeState.onLoading()) {
    on<MainEventInit>((event, emit) => _onInit(event, emit));
    on<MainEventLoadNext>((event, emit) => _loadNext(event, emit));
  }

  final ImagesUseCase _imagesUseCase;

  List<ImageItemResponse> _images = [];

  var totalImages = -1;
  int offset = 1;

  _onInit(MainEventInit event, Emitter emitter) async => add(const HomeEvent.loadNext());

  _loadNext(MainEventLoadNext event, Emitter emitter) async {
    final a = await _imagesUseCase(limit: _limit, offset: offset);
    _images.addAll(a);
    emitter(HomeState.onSuccess(_images));
    offset += 1;
  }
}
