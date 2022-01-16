import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

import '../../domain/models/image/image.dart';
import '../network/api/image.dart';
import 'adapter/image.dart';

abstract class ImageRepository {
  Future<List<ImageItem>?> getImages(int limit, int offset);
}

@Injectable(as: ImageRepository)
class ImageRepositoryImpl implements ImageRepository {
  final ImageApi _api;

  ImageRepositoryImpl(this._api);

  @override
  Future<List<ImageItem>?> getImages(int limit, int offset) async {
    try {
      final response = await _api.getImages(limit, offset);
      final List<ImageItem> imageList = [];

      for (var image in response) {
        final isReachable = await _checkIsReachable(image.largeImageURL ?? "");
        imageList.add(image.toImage(isReachable));
      }
      return imageList;
    } catch (e) {
      return null;
    }
  }
}

///Check if image is exist
Future<bool> _checkIsReachable(String url) async {
  final response = await http.head(Uri.parse(url));
  return response.statusCode == 200;
}
