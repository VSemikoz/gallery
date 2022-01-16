import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import '../../../../domain/images.dart';
import '../../../../domain/models/image/image.dart';
import 'home.dart';

const int _maxImages = 100;
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

  final List<ImageItem> _images = [];
  bool isLoading = false;

  var totalImages = -1;
  int _offset = 1;

  _onInit(MainEventInit event, Emitter emitter) async => add(const HomeEvent.loadNext());

  _loadNext(MainEventLoadNext event, Emitter emitter) async {
    if (isLoading || _images.length >= _maxImages) return;

    isLoading = true;
    final result = await _imagesUseCase(limit: _limit, offset: _offset);

    if (result == null) {
      isLoading = false;
      emitter(const HomeState.onFailure());
      return;
    }
    _images.addAll(result);
    _offset += 1;
    isLoading = false;

    emitter(HomeState.onSuccess([..._images]));
    if (_images.length >= _maxImages) emitter(const HomeState.onComplete());
  }
}
