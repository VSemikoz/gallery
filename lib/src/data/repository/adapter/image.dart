import '../../../domain/models/image/image.dart';
import '../../models/image.dart';

extension ImageItemResponseExtension on ImageItemResponse {
  ImageItem toImage(bool isReachable) {
    return ImageItem(
      id: id,
      largeImageURL: largeImageURL,
      isReachable: isReachable,
    );
  }
}

