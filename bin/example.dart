import 'dart:io';

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:hive/hive.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:collection/collection.dart';
part 'example.g.dart';

OtherValueClass _otherValueClass([int i = 10]) => OtherValueClass((b) => b
  ..doubleField = 3.0 * i
  ..intField = i
  ..stringField = i.toRadixString(16));

BuiltList<OtherValueClass> _valuesList() =>
    BuiltList.from(List.generate(5, _otherValueClass));
BuiltMap<String, OtherValueClass> _valuesMap() => BuiltMap.from(
      Map.fromEntries(
        _valuesList().map((e) => MapEntry(e.stringField, e)),
      ),
    );

ValueClass _createBuiltValue({String name}) => ValueClass((b) => b
  ..name = name ?? 'name'
  ..surname = 'surname'
  ..valuesList = _valuesList()
  ..valuesMap = _valuesMap()
  ..valuesSet = SetBuilder<OtherValueClass>(_valuesList()).build()
  ..enumField = BuiltEnum.caseA
  ..otherValue = _otherValueClass());

void main() async {
  await Hive.init(Directory.current.path);
  Hive
    ..registerAdapter<BuiltEnum>(BuiltEnumAdapter())
    ..registerAdapter<ValueClass>(ValueClassAdapter())
    ..registerAdapter<OtherValueClass>(OtherValueClassAdapter());
  var builtValueBox = await Hive.openBox<ValueClass>('builtValueBox');
  await builtValueBox.clear();
  final values = List.generate(3, (i) => _createBuiltValue(name: i.toString()));
  await builtValueBox.addAll(values);
  await builtValueBox.close();
  builtValueBox = await Hive.openBox<ValueClass>('builtValueBox');
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
  ValueClass,
  OtherValueClass,
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
@BuiltValue(nestedBuilders: false)
abstract class ValueClass implements Built<ValueClass, ValueClassBuilder> {
  @HiveField(0)
  String get name;

  @HiveField(1)
  String get surname;

  @HiveField(2)
  OtherValueClass get otherValue;

  @HiveField(3)
  BuiltList<OtherValueClass> get valuesList;

  @HiveField(4)
  BuiltSet<OtherValueClass> get valuesSet;

  @HiveField(5)
  BuiltMap<String, OtherValueClass> get valuesMap;

  @HiveField(6)
  BuiltEnum get enumField;

  ValueClass._();
  factory ValueClass([void Function(ValueClassBuilder) updates]) = _$ValueClass;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(ValueClass.serializer, this);
  }

  static ValueClass fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(ValueClass.serializer, json);
  }

  static Serializer<ValueClass> get serializer => _$valueClassSerializer;
}

@HiveType(typeId: 2)
abstract class OtherValueClass
    implements Built<OtherValueClass, OtherValueClassBuilder> {
  @HiveField(0)
  int get intField;
  @HiveField(1)
  String get stringField;
  @HiveField(2)
  double get doubleField;

  OtherValueClass._();
  factory OtherValueClass([void Function(OtherValueClassBuilder) updates]) =
      _$OtherValueClass;

  Map<String, dynamic> toJson() {
    return serializers.serializeWith(OtherValueClass.serializer, this);
  }

  static OtherValueClass fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(OtherValueClass.serializer, json);
  }

  static Serializer<OtherValueClass> get serializer =>
      _$otherValueClassSerializer;
}

abstract class OtherValueClassBuilder
    implements Builder<OtherValueClass, OtherValueClassBuilder> {
  @HiveField(0)
  int intField = 1;
  @HiveField(1)
  String stringField = '1';
  @HiveField(2)
  double doubleField = 1.0;

  factory OtherValueClassBuilder() = _$OtherValueClassBuilder;
  OtherValueClassBuilder._();
}
