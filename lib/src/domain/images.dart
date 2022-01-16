import 'package:injectable/injectable.dart';

import '../data/repository/image.dart';
import 'models/image/image.dart';

abstract class ImagesUseCase {
  Future<List<ImageItem>?> call({required int limit, required int offset});
}

@Injectable(as: ImagesUseCase)
class ImagesUseCaseImpl implements ImagesUseCase {
  final ImageRepository _imageRepository;

  ImagesUseCaseImpl(this._imageRepository);

  @override
  Future<List<ImageItem>?> call({required int limit, required int offset}) async =>
      _imageRepository.getImages(limit, offset);
}
