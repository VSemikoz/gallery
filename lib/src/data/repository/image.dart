import 'package:injectable/injectable.dart';

import '../../domain/models/image/image.dart';
import '../network/api/image.dart';
import 'adapter/image.dart';

abstract class ImageRepository {
  Future<List<ImageItem>> getImages(int limit, int offset);
}

@Injectable(as: ImageRepository)
class ImageRepositoryImpl implements ImageRepository {
  final ImageApi _api;

  ImageRepositoryImpl(this._api);

  @override
  Future<List<ImageItem>> getImages(int limit, int offset) async {
    final response = await _api.getImages(limit, offset);
    return response.map((e) => e.getImage()).toList();
  }
}
