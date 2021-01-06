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
      ..add(BuiltValue.serializer)
      ..add(OtherBuiltValue.serializer)
      ..addBuilderFactory(
          const FullType(BuiltList, const [const FullType(OtherBuiltValue)]),
          () => new ListBuilder<OtherBuiltValue>())
      ..addBuilderFactory(
          const FullType(BuiltSet, const [const FullType(OtherBuiltValue)]),
          () => new SetBuilder<OtherBuiltValue>())
      ..addBuilderFactory(
          const FullType(BuiltMap,
              const [const FullType(String), const FullType(OtherBuiltValue)]),
          () => new MapBuilder<String, OtherBuiltValue>()))
    .build();
Serializer<BuiltEnum> _$builtEnumSerializer = new _$BuiltEnumSerializer();
Serializer<BuiltValue> _$builtValueSerializer = new _$BuiltValueSerializer();
Serializer<OtherBuiltValue> _$otherBuiltValueSerializer =
    new _$OtherBuiltValueSerializer();

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

class _$BuiltValueSerializer implements StructuredSerializer<BuiltValue> {
  @override
  final Iterable<Type> types = const [BuiltValue, _$BuiltValue];
  @override
  final String wireName = 'BuiltValue';

  @override
  Iterable<Object> serialize(Serializers serializers, BuiltValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'surname',
      serializers.serialize(object.surname,
          specifiedType: const FullType(String)),
      'otherValue',
      serializers.serialize(object.otherValue,
          specifiedType: const FullType(OtherBuiltValue)),
      'valuesList',
      serializers.serialize(object.valuesList,
          specifiedType: const FullType(
              BuiltList, const [const FullType(OtherBuiltValue)])),
      'valuesSet',
      serializers.serialize(object.valuesSet,
          specifiedType: const FullType(
              BuiltSet, const [const FullType(OtherBuiltValue)])),
      'valuesMap',
      serializers.serialize(object.valuesMap,
          specifiedType: const FullType(BuiltMap,
              const [const FullType(String), const FullType(OtherBuiltValue)])),
      'enumField',
      serializers.serialize(object.enumField,
          specifiedType: const FullType(BuiltEnum)),
    ];

    return result;
  }

  @override
  BuiltValue deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BuiltValueBuilder();

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
          result.otherValue.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OtherBuiltValue))
              as OtherBuiltValue);
          break;
        case 'valuesList':
          result.valuesList.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(OtherBuiltValue)]))
              as BuiltList<Object>);
          break;
        case 'valuesSet':
          result.valuesSet.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltSet, const [const FullType(OtherBuiltValue)]))
              as BuiltSet<Object>);
          break;
        case 'valuesMap':
          result.valuesMap.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(OtherBuiltValue)
              ])));
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

class _$OtherBuiltValueSerializer
    implements StructuredSerializer<OtherBuiltValue> {
  @override
  final Iterable<Type> types = const [OtherBuiltValue, _$OtherBuiltValue];
  @override
  final String wireName = 'OtherBuiltValue';

  @override
  Iterable<Object> serialize(Serializers serializers, OtherBuiltValue object,
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
  OtherBuiltValue deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OtherBuiltValueBuilder();

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

class _$BuiltValue extends BuiltValue {
  @override
  final String name;
  @override
  final String surname;
  @override
  final OtherBuiltValue otherValue;
  @override
  final BuiltList<OtherBuiltValue> valuesList;
  @override
  final BuiltSet<OtherBuiltValue> valuesSet;
  @override
  final BuiltMap<String, OtherBuiltValue> valuesMap;
  @override
  final BuiltEnum enumField;

  factory _$BuiltValue([void Function(BuiltValueBuilder) updates]) =>
      (new BuiltValueBuilder()..update(updates)).build();

  _$BuiltValue._(
      {this.name,
      this.surname,
      this.otherValue,
      this.valuesList,
      this.valuesSet,
      this.valuesMap,
      this.enumField})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, 'BuiltValue', 'name');
    BuiltValueNullFieldError.checkNotNull(surname, 'BuiltValue', 'surname');
    BuiltValueNullFieldError.checkNotNull(
        otherValue, 'BuiltValue', 'otherValue');
    BuiltValueNullFieldError.checkNotNull(
        valuesList, 'BuiltValue', 'valuesList');
    BuiltValueNullFieldError.checkNotNull(valuesSet, 'BuiltValue', 'valuesSet');
    BuiltValueNullFieldError.checkNotNull(valuesMap, 'BuiltValue', 'valuesMap');
    BuiltValueNullFieldError.checkNotNull(enumField, 'BuiltValue', 'enumField');
  }

  @override
  BuiltValue rebuild(void Function(BuiltValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BuiltValueBuilder toBuilder() => new BuiltValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BuiltValue &&
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
    return (newBuiltValueToStringHelper('BuiltValue')
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

class BuiltValueBuilder implements Builder<BuiltValue, BuiltValueBuilder> {
  _$BuiltValue _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _surname;
  String get surname => _$this._surname;
  set surname(String surname) => _$this._surname = surname;

  OtherBuiltValueBuilder _otherValue;
  OtherBuiltValueBuilder get otherValue =>
      _$this._otherValue ??= new OtherBuiltValueBuilder();
  set otherValue(OtherBuiltValueBuilder otherValue) =>
      _$this._otherValue = otherValue;

  ListBuilder<OtherBuiltValue> _valuesList;
  ListBuilder<OtherBuiltValue> get valuesList =>
      _$this._valuesList ??= new ListBuilder<OtherBuiltValue>();
  set valuesList(ListBuilder<OtherBuiltValue> valuesList) =>
      _$this._valuesList = valuesList;

  SetBuilder<OtherBuiltValue> _valuesSet;
  SetBuilder<OtherBuiltValue> get valuesSet =>
      _$this._valuesSet ??= new SetBuilder<OtherBuiltValue>();
  set valuesSet(SetBuilder<OtherBuiltValue> valuesSet) =>
      _$this._valuesSet = valuesSet;

  MapBuilder<String, OtherBuiltValue> _valuesMap;
  MapBuilder<String, OtherBuiltValue> get valuesMap =>
      _$this._valuesMap ??= new MapBuilder<String, OtherBuiltValue>();
  set valuesMap(MapBuilder<String, OtherBuiltValue> valuesMap) =>
      _$this._valuesMap = valuesMap;

  BuiltEnum _enumField;
  BuiltEnum get enumField => _$this._enumField;
  set enumField(BuiltEnum enumField) => _$this._enumField = enumField;

  BuiltValueBuilder();

  BuiltValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _surname = $v.surname;
      _otherValue = $v.otherValue.toBuilder();
      _valuesList = $v.valuesList.toBuilder();
      _valuesSet = $v.valuesSet.toBuilder();
      _valuesMap = $v.valuesMap.toBuilder();
      _enumField = $v.enumField;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BuiltValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$BuiltValue;
  }

  @override
  void update(void Function(BuiltValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BuiltValue build() {
    _$BuiltValue _$result;
    try {
      _$result = _$v ??
          new _$BuiltValue._(
              name: BuiltValueNullFieldError.checkNotNull(
                  name, 'BuiltValue', 'name'),
              surname: BuiltValueNullFieldError.checkNotNull(
                  surname, 'BuiltValue', 'surname'),
              otherValue: otherValue.build(),
              valuesList: valuesList.build(),
              valuesSet: valuesSet.build(),
              valuesMap: valuesMap.build(),
              enumField: BuiltValueNullFieldError.checkNotNull(
                  enumField, 'BuiltValue', 'enumField'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'otherValue';
        otherValue.build();
        _$failedField = 'valuesList';
        valuesList.build();
        _$failedField = 'valuesSet';
        valuesSet.build();
        _$failedField = 'valuesMap';
        valuesMap.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'BuiltValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$OtherBuiltValue extends OtherBuiltValue {
  @override
  final int intField;
  @override
  final String stringField;
  @override
  final double doubleField;

  factory _$OtherBuiltValue([void Function(OtherBuiltValueBuilder) updates]) =>
      (new OtherBuiltValueBuilder()..update(updates)).build();

  _$OtherBuiltValue._({this.intField, this.stringField, this.doubleField})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        intField, 'OtherBuiltValue', 'intField');
    BuiltValueNullFieldError.checkNotNull(
        stringField, 'OtherBuiltValue', 'stringField');
    BuiltValueNullFieldError.checkNotNull(
        doubleField, 'OtherBuiltValue', 'doubleField');
  }

  @override
  OtherBuiltValue rebuild(void Function(OtherBuiltValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OtherBuiltValueBuilder toBuilder() =>
      new OtherBuiltValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OtherBuiltValue &&
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
    return (newBuiltValueToStringHelper('OtherBuiltValue')
          ..add('intField', intField)
          ..add('stringField', stringField)
          ..add('doubleField', doubleField))
        .toString();
  }
}

class OtherBuiltValueBuilder
    implements Builder<OtherBuiltValue, OtherBuiltValueBuilder> {
  _$OtherBuiltValue _$v;

  int _intField;
  int get intField => _$this._intField;
  set intField(int intField) => _$this._intField = intField;

  String _stringField;
  String get stringField => _$this._stringField;
  set stringField(String stringField) => _$this._stringField = stringField;

  double _doubleField;
  double get doubleField => _$this._doubleField;
  set doubleField(double doubleField) => _$this._doubleField = doubleField;

  OtherBuiltValueBuilder();

  OtherBuiltValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _intField = $v.intField;
      _stringField = $v.stringField;
      _doubleField = $v.doubleField;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OtherBuiltValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$OtherBuiltValue;
  }

  @override
  void update(void Function(OtherBuiltValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OtherBuiltValue build() {
    final _$result = _$v ??
        new _$OtherBuiltValue._(
            intField: BuiltValueNullFieldError.checkNotNull(
                intField, 'OtherBuiltValue', 'intField'),
            stringField: BuiltValueNullFieldError.checkNotNull(
                stringField, 'OtherBuiltValue', 'stringField'),
            doubleField: BuiltValueNullFieldError.checkNotNull(
                doubleField, 'OtherBuiltValue', 'doubleField'));
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

class BuiltValueAdapter extends TypeAdapter<BuiltValue> {
  @override
  final int typeId = 1;

  @override
  BuiltValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (BuiltValueBuilder()
          ..name = fields[0] as String
          ..surname = fields[1] as String
          ..otherValue = (fields[2] as OtherBuiltValue)?.toBuilder()
          ..valuesList = ListBuilder<OtherBuiltValue>(fields[3] as List)
          ..valuesSet = SetBuilder<OtherBuiltValue>(fields[4] as List)
          ..valuesMap = MapBuilder<String, OtherBuiltValue>(fields[5] as Map)
          ..enumField = fields[6] as BuiltEnum)
        .build();
  }

  @override
  void write(BinaryWriter writer, BuiltValue obj) {
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
      other is BuiltValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class OtherBuiltValueAdapter extends TypeAdapter<OtherBuiltValue> {
  @override
  final int typeId = 2;

  @override
  OtherBuiltValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (OtherBuiltValueBuilder()
          ..intField = fields[0] as int
          ..stringField = fields[1] as String
          ..doubleField = fields[2] as double)
        .build();
  }

  @override
  void write(BinaryWriter writer, OtherBuiltValue obj) {
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
      other is OtherBuiltValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
