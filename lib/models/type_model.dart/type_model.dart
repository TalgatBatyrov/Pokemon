import 'package:freezed_annotation/freezed_annotation.dart';

part 'type_model.freezed.dart';
part 'type_model.g.dart';

@freezed
class TypeModel with _$TypeModel {
  const factory TypeModel({
    required String name,
    required String url,
  }) = _TypeModel;

  factory TypeModel.fromJson(Map<String, dynamic> json) =>
      _$TypeModelFromJson(json);
}
