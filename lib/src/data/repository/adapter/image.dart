import '../../../domain/models/image/image.dart';
import '../../models/image.dart';

extension ImageItemResponseExtension on ImageItemResponse {
  ImageItem getImage() {
    return ImageItem(
      id: id,
      pageURL: pageURL,
      previewURL: previewURL,
      largeImageURL: largeImageURL,
    );
  }
}
