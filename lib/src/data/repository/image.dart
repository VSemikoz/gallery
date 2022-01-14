import 'package:gallery/src/data/models/image.dart';
import 'package:gallery/src/data/network/api/image.dart';
import 'package:injectable/injectable.dart';

abstract class ImageRepository {
  Future<List<ImageItemResponse>> getImages(int limit, int offset);
}

@Injectable(as: ImageRepository)
class ImageRepositoryImpl implements ImageRepository {
  final ImageApi _api;

  ImageRepositoryImpl(this._api);

  @override
  Future<List<ImageItemResponse>> getImages(int limit, int offset) {
    return _api.getImages(limit, offset);
  }
}
