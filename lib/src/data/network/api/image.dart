import 'package:gallery/src/data/models/image.dart';
import 'package:gallery/src/data/network/client.dart';
import 'package:injectable/injectable.dart';

abstract class ImageApi {
  Future<List<ImageItemResponse>> getImages(int limit, int offset);
}

@Injectable(as: ImageApi)
class ImageApiImpl implements ImageApi {
  @override
  Future<List<ImageItemResponse>> getImages(int limit, int offset) async {
    final response = await BaseClient.client().get(
      "",
      queryParameters: {
        "per_page": limit.toString(),
        "page": offset.toString(),
      },
    );
    return (response.data["hits"] as List).map((e) => ImageItemResponse.fromMap(e)).toList();
  }
}
