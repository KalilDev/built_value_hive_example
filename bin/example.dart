import 'dart:io';

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:hive/hive.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:collection/collection.dart';
part 'example.g.dart';

OtherBuiltValue _otherBuiltValue([int i = 10]) => OtherBuiltValue((b) => b
  ..doubleField = 3.0 * i
  ..intField = i
  ..stringField = i.toRadixString(16));

BuiltList<OtherBuiltValue> _valuesList() =>
    BuiltList.from(List.generate(5, _otherBuiltValue));
BuiltMap<String, OtherBuiltValue> _valuesMap() => BuiltMap.from(
      Map.fromEntries(
        _valuesList().map((e) => MapEntry(e.stringField, e)),
      ),
    );

BuiltValue _createBuiltValue({String name}) => BuiltValue((b) => b
  ..name = name ?? 'name'
  ..surname = 'surname'
  ..valuesList = _valuesList().toBuilder()
  ..valuesMap = _valuesMap().toBuilder()
  ..valuesSet = SetBuilder<OtherBuiltValue>(_valuesList())
  ..enumField = BuiltEnum.caseA
  ..otherValue = _otherBuiltValue().toBuilder());

void main() async {
  await Hive.init(Directory.current.path);
  Hive
    ..registerAdapter<BuiltEnum>(BuiltEnumAdapter())
    ..registerAdapter<BuiltValue>(BuiltValueAdapter())
    ..registerAdapter<OtherBuiltValue>(OtherBuiltValueAdapter());
  var builtValueBox = await Hive.openBox<BuiltValue>('builtValueBox');
  await builtValueBox.clear();
  final values = List.generate(3, (i) => _createBuiltValue(name: i.toString()));
  await builtValueBox.addAll(values);
  await builtValueBox.close();
  builtValueBox = await Hive.openBox<BuiltValue>('builtValueBox');
  final deserializedValues = builtValueBox.values.toList();
  if (!IterableEquality().equals(values, deserializedValues)) {
    throw StateError('they arent equal.\na: $values\nb:$deserializedValues');
  } else {
    print(
        'Successfully serialized and deserialized the built values \n$values');
  }
}

@SerializersFor([
  BuiltEnum,
  BuiltValue,
  OtherBuiltValue,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();

@HiveType(typeId: 0)
class BuiltEnum extends EnumClass {
  static const BuiltEnum caseA = _$caseA;
  static const BuiltEnum caseB = _$caseB;
  static const BuiltEnum caseC = _$caseC;

  const BuiltEnum._(String name) : super(name);

  static BuiltSet<BuiltEnum> get values => _$BuiltEnumValues;
  static BuiltEnum valueOf(String name) => _$BuiltEnumValueOf(name);

  String serialize() {
    return serializers.serializeWith(BuiltEnum.serializer, this);
  }

  static BuiltEnum deserialize(String string) {
    return serializers.deserializeWith(BuiltEnum.serializer, string);
  }

  static Serializer<BuiltEnum> get serializer => _$builtEnumSerializer;
}

@HiveType(typeId: 1)
abstract class BuiltValue implements Built<BuiltValue, BuiltValueBuilder> {
  @HiveField(0)
  String get name;

  @HiveField(1)
  String get surname;

  @HiveField(2)
  OtherBuiltValue get otherValue;

  @HiveField(3)
  BuiltList<OtherBuiltValue> get valuesList;

  @HiveField(4)
  BuiltSet<OtherBuiltValue> get valuesSet;

  @HiveField(5)
  BuiltMap<String, OtherBuiltValue> get valuesMap;

  @HiveField(6)
  BuiltEnum get enumField;

  BuiltValue._();
  factory BuiltValue([void Function(BuiltValueBuilder) updates]) = _$BuiltValue;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(BuiltValue.serializer, this);
  }

  static BuiltValue fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(BuiltValue.serializer, json);
  }

  static Serializer<BuiltValue> get serializer => _$builtValueSerializer;
}

@HiveType(typeId: 2)
abstract class OtherBuiltValue
    implements Built<OtherBuiltValue, OtherBuiltValueBuilder> {
  @HiveField(0)
  int get intField;
  @HiveField(1)
  String get stringField;
  @HiveField(2)
  double get doubleField;

  OtherBuiltValue._();
  factory OtherBuiltValue([void Function(OtherBuiltValueBuilder) updates]) =
      _$OtherBuiltValue;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(OtherBuiltValue.serializer, this);
  }

  static OtherBuiltValue fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(OtherBuiltValue.serializer, json);
  }

  static Serializer<OtherBuiltValue> get serializer =>
      _$otherBuiltValueSerializer;
}
