// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_box_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class WebBoxModelAdapter extends TypeAdapter<WebBoxModel> {
  @override
  final int typeId = 1;

  @override
  WebBoxModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return WebBoxModel(
      offsetDx: fields[0] as double,
      offsetDy: fields[1] as double,
      spreadRadius: fields[2] as double,
      blurRadius: fields[3] as double,
      shadowColor: fields[4] as int,
      animatedBoxColor: fields[5] as int,
    );
  }

  @override
  void write(BinaryWriter writer, WebBoxModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.offsetDx)
      ..writeByte(1)
      ..write(obj.offsetDy)
      ..writeByte(2)
      ..write(obj.spreadRadius)
      ..writeByte(3)
      ..write(obj.blurRadius)
      ..writeByte(4)
      ..write(obj.shadowColor)
      ..writeByte(5)
      ..write(obj.animatedBoxColor);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is WebBoxModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
