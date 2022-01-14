import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:gallery/src/data/models/image.dart';

part 'state.freezed.dart';


@freezed
abstract class HomeState with _$HomeState{
  const factory HomeState.onSuccess(List<ImageItemResponse> images) = HomeStateOnSuccess;
  const factory HomeState.onFailure() = HomeStateOnFailure;
  const factory HomeState.onLoading() = HomeStateOnLoading;
  const factory HomeState.onComplete() = HomeStateOnComplete;
}