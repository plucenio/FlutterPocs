// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'health_insurance_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class HealthInsuranceAdapter extends TypeAdapter<HealthInsurance> {
  @override
  final int typeId = 0;

  @override
  HealthInsurance read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return HealthInsurance(
      name: fields[0] as String,
      country: fields[1] as String,
      city: fields[2] as String,
    );
  }

  @override
  void write(BinaryWriter writer, HealthInsurance obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.country)
      ..writeByte(2)
      ..write(obj.city);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HealthInsuranceAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
