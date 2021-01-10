// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'example.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const BuiltEnum _$caseA = const BuiltEnum._('caseA');
const BuiltEnum _$caseB = const BuiltEnum._('caseB');
const BuiltEnum _$caseC = const BuiltEnum._('caseC');

BuiltEnum _$BuiltEnumValueOf(String name) {
  switch (name) {
    case 'caseA':
      return _$caseA;
    case 'caseB':
      return _$caseB;
    case 'caseC':
      return _$caseC;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<BuiltEnum> _$BuiltEnumValues =
    new BuiltSet<BuiltEnum>(const <BuiltEnum>[
  _$caseA,
  _$caseB,
  _$caseC,
]);

Serializers _$serializers = (new Serializers().toBuilder()
      ..add(BuiltEnum.serializer)
      ..add(OtherValueClass.serializer)
      ..add(ValueClass.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(OtherValueClass)]),
          () => new ListBuilder<OtherValueClass>())
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(OtherValueClass)]),
          () => new SetBuilder<OtherValueClass>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(OtherValueClass)]),
          () => new MapBuilder<String, OtherValueClass>()))
    .build();
Serializer<BuiltEnum> _$builtEnumSerializer = new _$BuiltEnumSerializer();
Serializer<ValueClass> _$valueClassSerializer = new _$ValueClassSerializer();
Serializer<OtherValueClass> _$otherValueClassSerializer =
    new _$OtherValueClassSerializer();

class _$BuiltEnumSerializer implements PrimitiveSerializer<BuiltEnum> {
  @override
  final Iterable<Type> types = const <Type>[BuiltEnum];
  @override
  final String wireName = 'BuiltEnum';

  @override
  Object serialize(Serializers serializers, BuiltEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      object.name;

  @override
  BuiltEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      BuiltEnum.valueOf(serialized as String);
}

class _$ValueClassSerializer implements StructuredSerializer<ValueClass> {
  @override
  final Iterable<Type> types = const [ValueClass, _$ValueClass];
  @override
  final String wireName = 'ValueClass';

  @override
  Iterable<Object> serialize(Serializers serializers, ValueClass object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'surname',
      serializers.serialize(object.surname,
          specifiedType: const FullType(String)),
      'otherValue',
      serializers.serialize(object.otherValue,
          specifiedType: const FullType(OtherValueClass)),
      'valuesList',
      serializers.serialize(object.valuesList,
          specifiedType: const FullType(
              BuiltList, const [const FullType(OtherValueClass)])),
      'valuesSet',
      serializers.serialize(object.valuesSet,
          specifiedType: const FullType(
              BuiltSet, const [const FullType(OtherValueClass)])),
      'valuesMap',
      serializers.serialize(object.valuesMap,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(OtherValueClass)])),
      'enumField',
      serializers.serialize(object.enumField,
          specifiedType: const FullType(BuiltEnum)),
    ];

    return result;
  }

  @override
  ValueClass deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ValueClassBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'surname':
          result.surname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'otherValue':
          result.otherValue = serializers.deserialize(value,
                  specifiedType: const FullType(OtherValueClass))
              as OtherValueClass;
          break;
        case 'valuesList':
          result.valuesList = serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OtherValueClass)]))
              as BuiltList<OtherValueClass>;
          break;
        case 'valuesSet':
          result.valuesSet = serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(OtherValueClass)]))
              as BuiltSet<OtherValueClass>;
          break;
        case 'valuesMap':
          result.valuesMap = serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(OtherValueClass)
              ])) as BuiltMap<String, OtherValueClass>;
          break;
        case 'enumField':
          result.enumField = serializers.deserialize(value,
              specifiedType: const FullType(BuiltEnum)) as BuiltEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$OtherValueClassSerializer
    implements StructuredSerializer<OtherValueClass> {
  @override
  final Iterable<Type> types = const [OtherValueClass, _$OtherValueClass];
  @override
  final String wireName = 'OtherValueClass';

  @override
  Iterable<Object> serialize(Serializers serializers, OtherValueClass object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'intField',
      serializers.serialize(object.intField,
          specifiedType: const FullType(int)),
      'stringField',
      serializers.serialize(object.stringField,
          specifiedType: const FullType(String)),
      'doubleField',
      serializers.serialize(object.doubleField,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  OtherValueClass deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OtherValueClassBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'intField':
          result.intField = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'stringField':
          result.stringField = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'doubleField':
          result.doubleField = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double;
          break;
      }
    }

    return result.build();
  }
}

class _$ValueClass extends ValueClass {
  @override
  final String name;
  @override
  final String surname;
  @override
  final OtherValueClass otherValue;
  @override
  final BuiltList<OtherValueClass> valuesList;
  @override
  final BuiltSet<OtherValueClass> valuesSet;
  @override
  final BuiltMap<String, OtherValueClass> valuesMap;
  @override
  final BuiltEnum enumField;

  factory _$ValueClass([void Function(ValueClassBuilder) updates]) =>
      (new ValueClassBuilder()..update(updates)).build();

  _$ValueClass._(
      {this.name,
      this.surname,
      this.otherValue,
      this.valuesList,
      this.valuesSet,
      this.valuesMap,
      this.enumField})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'ValueClass', 'name');
    BuiltValueNullFieldError.checkNotNull(surname, 'ValueClass', 'surname');
    BuiltValueNullFieldError.checkNotNull(
        otherValue, 'ValueClass', 'otherValue');
    BuiltValueNullFieldError.checkNotNull(
        valuesList, 'ValueClass', 'valuesList');
    BuiltValueNullFieldError.checkNotNull(valuesSet, 'ValueClass', 'valuesSet');
    BuiltValueNullFieldError.checkNotNull(valuesMap, 'ValueClass', 'valuesMap');
    BuiltValueNullFieldError.checkNotNull(enumField, 'ValueClass', 'enumField');
  }

  @override
  ValueClass rebuild(void Function(ValueClassBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValueClassBuilder toBuilder() => new ValueClassBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValueClass &&
        name == other.name &&
        surname == other.surname &&
        otherValue == other.otherValue &&
        valuesList == other.valuesList &&
        valuesSet == other.valuesSet &&
        valuesMap == other.valuesMap &&
        enumField == other.enumField;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, name.hashCode), surname.hashCode),
                        otherValue.hashCode),
                    valuesList.hashCode),
                valuesSet.hashCode),
            valuesMap.hashCode),
        enumField.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValueClass')
          ..add('name', name)
          ..add('surname', surname)
          ..add('otherValue', otherValue)
          ..add('valuesList', valuesList)
          ..add('valuesSet', valuesSet)
          ..add('valuesMap', valuesMap)
          ..add('enumField', enumField))
        .toString();
  }
}

class ValueClassBuilder implements Builder<ValueClass, ValueClassBuilder> {
  _$ValueClass _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _surname;
  String get surname => _$this._surname;
  set surname(String surname) => _$this._surname = surname;

  OtherValueClass _otherValue;
  OtherValueClass get otherValue => _$this._otherValue;
  set otherValue(OtherValueClass otherValue) => _$this._otherValue = otherValue;

  BuiltList<OtherValueClass> _valuesList;
  BuiltList<OtherValueClass> get valuesList => _$this._valuesList;
  set valuesList(BuiltList<OtherValueClass> valuesList) =>
      _$this._valuesList = valuesList;

  BuiltSet<OtherValueClass> _valuesSet;
  BuiltSet<OtherValueClass> get valuesSet => _$this._valuesSet;
  set valuesSet(BuiltSet<OtherValueClass> valuesSet) =>
      _$this._valuesSet = valuesSet;

  BuiltMap<String, OtherValueClass> _valuesMap;
  BuiltMap<String, OtherValueClass> get valuesMap => _$this._valuesMap;
  set valuesMap(BuiltMap<String, OtherValueClass> valuesMap) =>
      _$this._valuesMap = valuesMap;

  BuiltEnum _enumField;
  BuiltEnum get enumField => _$this._enumField;
  set enumField(BuiltEnum enumField) => _$this._enumField = enumField;

  ValueClassBuilder();

  ValueClassBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _surname = $v.surname;
      _otherValue = $v.otherValue;
      _valuesList = $v.valuesList;
      _valuesSet = $v.valuesSet;
      _valuesMap = $v.valuesMap;
      _enumField = $v.enumField;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValueClass other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValueClass;
  }

  @override
  void update(void Function(ValueClassBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ValueClass build() {
    final _$result = _$v ??
        new _$ValueClass._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, 'ValueClass', 'name'),
            surname: BuiltValueNullFieldError.checkNotNull(
                surname, 'ValueClass', 'surname'),
            otherValue: BuiltValueNullFieldError.checkNotNull(
                otherValue, 'ValueClass', 'otherValue'),
            valuesList: BuiltValueNullFieldError.checkNotNull(
                valuesList, 'ValueClass', 'valuesList'),
            valuesSet: BuiltValueNullFieldError.checkNotNull(
                valuesSet, 'ValueClass', 'valuesSet'),
            valuesMap: BuiltValueNullFieldError.checkNotNull(
                valuesMap, 'ValueClass', 'valuesMap'),
            enumField: BuiltValueNullFieldError.checkNotNull(
                enumField, 'ValueClass', 'enumField'));
    replace(_$result);
    return _$result;
  }
}

class _$OtherValueClass extends OtherValueClass {
  @override
  final int intField;
  @override
  final String stringField;
  @override
  final double doubleField;

  factory _$OtherValueClass([void Function(OtherValueClassBuilder) updates]) =>
      (new OtherValueClassBuilder()..update(updates)).build()
          as _$OtherValueClass;

  _$OtherValueClass._({this.intField, this.stringField, this.doubleField})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        intField, 'OtherValueClass', 'intField');
    BuiltValueNullFieldError.checkNotNull(
        stringField, 'OtherValueClass', 'stringField');
    BuiltValueNullFieldError.checkNotNull(
        doubleField, 'OtherValueClass', 'doubleField');
  }

  @override
  OtherValueClass rebuild(void Function(OtherValueClassBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  _$OtherValueClassBuilder toBuilder() =>
      new _$OtherValueClassBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OtherValueClass &&
        intField == other.intField &&
        stringField == other.stringField &&
        doubleField == other.doubleField;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, intField.hashCode), stringField.hashCode),
        doubleField.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OtherValueClass')
          ..add('intField', intField)
          ..add('stringField', stringField)
          ..add('doubleField', doubleField))
        .toString();
  }
}

class _$OtherValueClassBuilder extends OtherValueClassBuilder {
  _$OtherValueClass _$v;

  @override
  int get intField {
    _$this;
    return super.intField;
  }

  @override
  set intField(int intField) {
    _$this;
    super.intField = intField;
  }

  @override
  String get stringField {
    _$this;
    return super.stringField;
  }

  @override
  set stringField(String stringField) {
    _$this;
    super.stringField = stringField;
  }

  @override
  double get doubleField {
    _$this;
    return super.doubleField;
  }

  @override
  set doubleField(double doubleField) {
    _$this;
    super.doubleField = doubleField;
  }

  _$OtherValueClassBuilder() : super._();

  OtherValueClassBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      super.intField = $v.intField;
      super.stringField = $v.stringField;
      super.doubleField = $v.doubleField;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OtherValueClass other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OtherValueClass;
  }

  @override
  void update(void Function(OtherValueClassBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OtherValueClass build() {
    final _$result = _$v ??
        new _$OtherValueClass._(
            intField: BuiltValueNullFieldError.checkNotNull(
                intField, 'OtherValueClass', 'intField'),
            stringField: BuiltValueNullFieldError.checkNotNull(
                stringField, 'OtherValueClass', 'stringField'),
            doubleField: BuiltValueNullFieldError.checkNotNull(
                doubleField, 'OtherValueClass', 'doubleField'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class BuiltEnumAdapter extends TypeAdapter<BuiltEnum> {
  @override
  final int typeId = 0;

  @override
  BuiltEnum read(BinaryReader reader) {
    return BuiltEnum.valueOf(reader.read() as String);
  }

  @override
  void write(BinaryWriter writer, BuiltEnum obj) {
    writer..write(obj.name);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BuiltEnumAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ValueClassAdapter extends TypeAdapter<ValueClass> {
  @override
  final int typeId = 1;

  @override
  ValueClass read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (ValueClassBuilder()
          ..name = fields[0] as String
          ..surname = fields[1] as String
          ..otherValue = fields[2] as OtherValueClass
          ..valuesList = fields[3] == null
              ? null
              : ListBuilder<OtherValueClass>(fields[3] as Iterable).build()
          ..valuesSet = fields[4] == null
              ? null
              : SetBuilder<OtherValueClass>(fields[4] as Iterable).build()
          ..valuesMap = fields[5] == null
              ? null
              : MapBuilder<String, OtherValueClass>(
                      (fields[5] as Map)?.cast<String, OtherValueClass>())
                  .build()
          ..enumField = fields[6] as BuiltEnum)
        .build();
  }

  @override
  void write(BinaryWriter writer, ValueClass obj) {
    writer
      ..writeByte(7)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.surname)
      ..writeByte(2)
      ..write(obj.otherValue)
      ..writeByte(3)
      ..write(obj.valuesList?.toList())
      ..writeByte(4)
      ..write(obj.valuesSet?.toList())
      ..writeByte(5)
      ..write(obj.valuesMap?.toMap())
      ..writeByte(6)
      ..write(obj.enumField);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValueClassAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OtherValueClassAdapter extends TypeAdapter<OtherValueClass> {
  @override
  final int typeId = 2;

  @override
  OtherValueClass read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (OtherValueClassBuilder()
          ..intField = fields[0] as int
          ..stringField = fields[1] as String
          ..doubleField = fields[2] as double)
        .build();
  }

  @override
  void write(BinaryWriter writer, OtherValueClass obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.intField)
      ..writeByte(1)
      ..write(obj.stringField)
      ..writeByte(2)
      ..write(obj.doubleField);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is OtherValueClassAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
