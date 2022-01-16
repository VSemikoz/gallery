class ImageItem {
  final int? id;
  final String? largeImageURL;
  final bool isReachable;

  const ImageItem({
    this.id,
    this.largeImageURL,
    required this.isReachable,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ImageItem &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          largeImageURL == other.largeImageURL &&
          isReachable == other.isReachable);

  @override
  int get hashCode => id.hashCode ^ largeImageURL.hashCode ^ isReachable.hashCode;

  @override
  String toString() {
    return 'ImageItem{' ' id: $id,' ' largeImageURL: $largeImageURL,' ' isReachable: $isReachable,' '}';
  }

  ImageItem copyWith({
    int? id,
    String? largeImageURL,
    bool? isReachable,
  }) {
    return ImageItem(
      id: id ?? this.id,
      largeImageURL: largeImageURL ?? this.largeImageURL,
      isReachable: isReachable ?? this.isReachable,
    );
  }
}
