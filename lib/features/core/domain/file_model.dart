import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uuid/uuid.dart';

part 'file_model.freezed.dart';

enum FileType {
  img,
  voi,
  vid,
}

@freezed
class FileModel with _$FileModel {
  const FileModel._();
  const factory FileModel(
    String name,
    String path,
  ) = _FileModel;

  static const _uuid = Uuid();

  factory FileModel.fromfile(File file, String identifier) => FileModel(
        '$identifier-${_uuid.v4()}',
        file.path,
      );
}
