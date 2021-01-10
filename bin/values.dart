import 'dart:io';

import 'package:built_value/built_value.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:hive/hive.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:collection/collection.dart';

part 'values.g.dart';

@HiveType(typeId: 0)
abstract class SimpleValue implements Built<SimpleValue, SimpleValueBuilder> {
  static Serializer<SimpleValue> get serializer => _$simpleValueSerializer;

  @HiveField(0)
  int get anInt;

  // Only fields marked @nullable can hold null.
  @nullable
  @HiveField(1)
  String get aString;

  @nullable
  @HiveField(2)
  bool get $mustBeEscaped;

  factory SimpleValue([void Function(SimpleValueBuilder) updates]) =
      _$SimpleValue;
  SimpleValue._();
}

@HiveType(typeId: 0)
abstract class CompoundValue
    implements Built<CompoundValue, CompoundValueBuilder> {
  static Serializer<CompoundValue> get serializer => _$compoundValueSerializer;

  @HiveField(0)
  SimpleValue get simpleValue;
  @nullable
  @HiveField(1)
  ValidatedValue get validatedValue;

  factory CompoundValue([void Function(CompoundValueBuilder) updates]) =
      _$CompoundValue;
  CompoundValue._();
}

@HiveType(typeId: 0)
@BuiltValue(nestedBuilders: false)
abstract class CompoundValueNoNesting
    implements Built<CompoundValueNoNesting, CompoundValueNoNestingBuilder> {
  static Serializer<CompoundValueNoNesting> get serializer =>
      _$compoundValueNoNestingSerializer;

  @HiveField(0)
  SimpleValue get simpleValue;
  @nullable
  @HiveField(1)
  ValidatedValue get validatedValue;

  factory CompoundValueNoNesting(
          [void Function(CompoundValueNoNestingBuilder) updates]) =
      _$CompoundValueNoNesting;
  CompoundValueNoNesting._();
}

@HiveType(typeId: 0)
abstract class CompoundValueExplicitNoNesting
    implements
        Built<CompoundValueExplicitNoNesting,
            CompoundValueExplicitNoNestingBuilder> {
  static Serializer<CompoundValueExplicitNoNesting> get serializer =>
      _$compoundValueExplicitNoNestingSerializer;

  @HiveField(0)
  SimpleValue get simpleValue;
  @nullable
  @HiveField(1)
  ValidatedValue get validatedValue;

  factory CompoundValueExplicitNoNesting(
          [void Function(CompoundValueExplicitNoNestingBuilder) updates]) =
      _$CompoundValueExplicitNoNesting;
  CompoundValueExplicitNoNesting._();
}

abstract class CompoundValueExplicitNoNestingBuilder
    implements
        Builder<CompoundValueExplicitNoNesting,
            CompoundValueExplicitNoNestingBuilder> {
  // One field using nesting.
  @HiveField(0)
  SimpleValueBuilder simpleValue;
  // One field not using nesting.
  @HiveField(1)
  ValidatedValue validatedValue;

  factory CompoundValueExplicitNoNestingBuilder() =
      _$CompoundValueExplicitNoNestingBuilder;
  CompoundValueExplicitNoNestingBuilder._();
}

// Check that nested collections work with a manually declared builder.
@HiveType(typeId: 0)
abstract class ExplicitNestedList
    implements Built<ExplicitNestedList, ExplicitNestedListBuilder> {
  @HiveField(0)
  BuiltList<BuiltList<int>> get nestedList;

  factory ExplicitNestedList(
          [void Function(ExplicitNestedListBuilder) updates]) =
      _$ExplicitNestedList;
  ExplicitNestedList._();
}

abstract class ExplicitNestedListBuilder
    implements Builder<ExplicitNestedList, ExplicitNestedListBuilder> {
  @HiveField(0)
  ListBuilder<BuiltList<int>> nestedList;

  factory ExplicitNestedListBuilder() = _$ExplicitNestedListBuilder;
  ExplicitNestedListBuilder._();
}

@HiveType(typeId: 0)
abstract class DerivedValue
    implements Built<DerivedValue, DerivedValueBuilder> {
  @HiveField(0)
  int get anInt;

  @memoized
  int get derivedValue {
    ++derivedValueGetterCount;

    return anInt + 10;
  }

  @memoized
  Iterable<String> get derivedString {
    ++derivedStringGetterCount;

    return [toString()];
  }

  factory DerivedValue([void Function(DerivedValueBuilder) updates]) =
      _$DerivedValue;
  DerivedValue._();
}

int derivedValueGetterCount = 0;

int derivedStringGetterCount = 0;

@HiveType(typeId: 0)
abstract class ValidatedValue
    implements Built<ValidatedValue, ValidatedValueBuilder> {
  static Serializer<ValidatedValue> get serializer =>
      _$validatedValueSerializer;

  @HiveField(0)
  int get anInt;
  @nullable
  @HiveField(1)
  String get aString;

  factory ValidatedValue([void Function(ValidatedValueBuilder) updates]) =
      _$ValidatedValue;

  ValidatedValue._() {
    if (anInt == 7) throw StateError('anInt may not be 7');
  }
}

@HiveType(typeId: 0)
abstract class NoFieldsValue
    implements Built<NoFieldsValue, NoFieldsValueBuilder> {
  static Serializer<NoFieldsValue> get serializer => _$noFieldsValueSerializer;

  factory NoFieldsValue([void Function(NoFieldsValueBuilder) updates]) =
      _$NoFieldsValue;

  NoFieldsValue._();
}

abstract class TheNestedThings {
  BuiltMap<String, BuiltList<NoFieldsValue>> get mapWithListValue;
  BuiltMap<BuiltList<NoFieldsValue>, String> get mapWithKey;
  BuiltMap<String, BuiltMap<String, NoFieldsValue>> get mapWithMapValue;
  BuiltMap<BuiltMap<String, NoFieldsValue>, String> get mapWithMapKey;
  BuiltList<BuiltList<NoFieldsValue>> get singleNestedList;
  BuiltList<BuiltList<BuiltList<NoFieldsValue>>> get dualNestedList;
  BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> get listSetList;
  BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> get setListSet;
  BuiltList<BuiltSet<BuiltMap<String, NoFieldsValue>>> get setListMap;
}

@HiveType(typeId: 0)
abstract class NestedThingsValue
    implements
        TheNestedThings,
        Built<NestedThingsValue, NestedThingsValueBuilder> {
  @HiveField(0)
  BuiltMap<String, BuiltList<NoFieldsValue>> get mapWithListValue;
  @HiveField(1)
  BuiltMap<BuiltList<NoFieldsValue>, String> get mapWithKey;
  @HiveField(2)
  BuiltMap<String, BuiltMap<String, NoFieldsValue>> get mapWithMapValue;
  @HiveField(3)
  BuiltMap<BuiltMap<String, NoFieldsValue>, String> get mapWithMapKey;
  @HiveField(4)
  BuiltList<BuiltList<NoFieldsValue>> get singleNestedList;
  @HiveField(5)
  BuiltList<BuiltList<BuiltList<NoFieldsValue>>> get dualNestedList;
  @HiveField(6)
  BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> get listSetList;
  @HiveField(7)
  BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> get setListSet;
  @HiveField(8)
  BuiltList<BuiltSet<BuiltMap<String, NoFieldsValue>>> get setListMap;

  static Serializer<NestedThingsValue> get serializer =>
      _$nestedThingsValueSerializer;

  factory NestedThingsValue([void Function(NestedThingsValueBuilder) updates]) =
      _$NestedThingsValue;

  NestedThingsValue._();
}

@HiveType(typeId: 0)
@BuiltValue(nestedBuilders: false)
abstract class NestedThingsValueNoNestedBuilder
    implements
        TheNestedThings,
        Built<NestedThingsValueNoNestedBuilder,
            NestedThingsValueNoNestedBuilderBuilder> {
  @HiveField(0)
  BuiltMap<String, BuiltList<NoFieldsValue>> get mapWithListValue;
  @HiveField(1)
  BuiltMap<BuiltList<NoFieldsValue>, String> get mapWithKey;
  @HiveField(2)
  BuiltMap<String, BuiltMap<String, NoFieldsValue>> get mapWithMapValue;
  @HiveField(3)
  BuiltMap<BuiltMap<String, NoFieldsValue>, String> get mapWithMapKey;
  @HiveField(4)
  BuiltList<BuiltList<NoFieldsValue>> get singleNestedList;
  @HiveField(5)
  BuiltList<BuiltList<BuiltList<NoFieldsValue>>> get dualNestedList;
  @HiveField(6)
  BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> get listSetList;
  @HiveField(7)
  BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> get setListSet;
  @HiveField(8)
  BuiltList<BuiltSet<BuiltMap<String, NoFieldsValue>>> get setListMap;

  static Serializer<NestedThingsValueNoNestedBuilder> get serializer =>
      _$nestedThingsValueNoNestedBuilderSerializer;

  factory NestedThingsValueNoNestedBuilder(
          [void Function(NestedThingsValueNoNestedBuilderBuilder) updates]) =
      _$NestedThingsValueNoNestedBuilder;

  NestedThingsValueNoNestedBuilder._();
}
