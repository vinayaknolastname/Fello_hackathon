// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goal_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class GoalModelAdapter extends TypeAdapter<GoalModel> {
  @override
  final int typeId = 0;

  @override
  GoalModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return GoalModel(
      id: fields[0] as int,
      goalName: fields[1] as String,
      percentage: fields[2] as double,
      goalDate: fields[3] as DateTime,
      totalAmount: fields[4] as double,
      currentAmount: fields[5] as double,
    );
  }

  @override
  void write(BinaryWriter writer, GoalModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.goalName)
      ..writeByte(2)
      ..write(obj.percentage)
      ..writeByte(3)
      ..write(obj.goalDate)
      ..writeByte(4)
      ..write(obj.totalAmount)
      ..writeByte(5)
      ..write(obj.currentAmount);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GoalModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
