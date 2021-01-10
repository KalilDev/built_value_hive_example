// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'values.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SimpleValue> _$simpleValueSerializer = new _$SimpleValueSerializer();
Serializer<CompoundValue> _$compoundValueSerializer =
    new _$CompoundValueSerializer();
Serializer<CompoundValueNoNesting> _$compoundValueNoNestingSerializer =
    new _$CompoundValueNoNestingSerializer();
Serializer<CompoundValueExplicitNoNesting>
    _$compoundValueExplicitNoNestingSerializer =
    new _$CompoundValueExplicitNoNestingSerializer();
Serializer<ValidatedValue> _$validatedValueSerializer =
    new _$ValidatedValueSerializer();
Serializer<NoFieldsValue> _$noFieldsValueSerializer =
    new _$NoFieldsValueSerializer();
Serializer<NestedThingsValue> _$nestedThingsValueSerializer =
    new _$NestedThingsValueSerializer();
Serializer<NestedThingsValueNoNestedBuilder>
    _$nestedThingsValueNoNestedBuilderSerializer =
    new _$NestedThingsValueNoNestedBuilderSerializer();

class _$SimpleValueSerializer implements StructuredSerializer<SimpleValue> {
  @override
  final Iterable<Type> types = const [SimpleValue, _$SimpleValue];
  @override
  final String wireName = 'SimpleValue';

  @override
  Iterable<Object> serialize(Serializers serializers, SimpleValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'anInt',
      serializers.serialize(object.anInt, specifiedType: const FullType(int)),
    ];
    Object value;
    value = object.aString;
    if (value != null) {
      result
        ..add('aString')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.$mustBeEscaped;
    if (value != null) {
      result
        ..add('\$mustBeEscaped')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  SimpleValue deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SimpleValueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'anInt':
          result.anInt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'aString':
          result.aString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '\$mustBeEscaped':
          result.$mustBeEscaped = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$CompoundValueSerializer implements StructuredSerializer<CompoundValue> {
  @override
  final Iterable<Type> types = const [CompoundValue, _$CompoundValue];
  @override
  final String wireName = 'CompoundValue';

  @override
  Iterable<Object> serialize(Serializers serializers, CompoundValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'simpleValue',
      serializers.serialize(object.simpleValue,
          specifiedType: const FullType(SimpleValue)),
    ];
    Object value;
    value = object.validatedValue;
    if (value != null) {
      result
        ..add('validatedValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ValidatedValue)));
    }
    return result;
  }

  @override
  CompoundValue deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompoundValueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'simpleValue':
          result.simpleValue.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleValue)) as SimpleValue);
          break;
        case 'validatedValue':
          result.validatedValue.replace(serializers.deserialize(value,
              specifiedType: const FullType(ValidatedValue)) as ValidatedValue);
          break;
      }
    }

    return result.build();
  }
}

class _$CompoundValueNoNestingSerializer
    implements StructuredSerializer<CompoundValueNoNesting> {
  @override
  final Iterable<Type> types = const [
    CompoundValueNoNesting,
    _$CompoundValueNoNesting
  ];
  @override
  final String wireName = 'CompoundValueNoNesting';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CompoundValueNoNesting object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'simpleValue',
      serializers.serialize(object.simpleValue,
          specifiedType: const FullType(SimpleValue)),
    ];
    Object value;
    value = object.validatedValue;
    if (value != null) {
      result
        ..add('validatedValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ValidatedValue)));
    }
    return result;
  }

  @override
  CompoundValueNoNesting deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompoundValueNoNestingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'simpleValue':
          result.simpleValue = serializers.deserialize(value,
              specifiedType: const FullType(SimpleValue)) as SimpleValue;
          break;
        case 'validatedValue':
          result.validatedValue = serializers.deserialize(value,
              specifiedType: const FullType(ValidatedValue)) as ValidatedValue;
          break;
      }
    }

    return result.build();
  }
}

class _$CompoundValueExplicitNoNestingSerializer
    implements StructuredSerializer<CompoundValueExplicitNoNesting> {
  @override
  final Iterable<Type> types = const [
    CompoundValueExplicitNoNesting,
    _$CompoundValueExplicitNoNesting
  ];
  @override
  final String wireName = 'CompoundValueExplicitNoNesting';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CompoundValueExplicitNoNesting object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'simpleValue',
      serializers.serialize(object.simpleValue,
          specifiedType: const FullType(SimpleValue)),
    ];
    Object value;
    value = object.validatedValue;
    if (value != null) {
      result
        ..add('validatedValue')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ValidatedValue)));
    }
    return result;
  }

  @override
  CompoundValueExplicitNoNesting deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CompoundValueExplicitNoNestingBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'simpleValue':
          result.simpleValue.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleValue)) as SimpleValue);
          break;
        case 'validatedValue':
          result.validatedValue = serializers.deserialize(value,
              specifiedType: const FullType(ValidatedValue)) as ValidatedValue;
          break;
      }
    }

    return result.build();
  }
}

class _$ValidatedValueSerializer
    implements StructuredSerializer<ValidatedValue> {
  @override
  final Iterable<Type> types = const [ValidatedValue, _$ValidatedValue];
  @override
  final String wireName = 'ValidatedValue';

  @override
  Iterable<Object> serialize(Serializers serializers, ValidatedValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'anInt',
      serializers.serialize(object.anInt, specifiedType: const FullType(int)),
    ];
    Object value;
    value = object.aString;
    if (value != null) {
      result
        ..add('aString')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ValidatedValue deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ValidatedValueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'anInt':
          result.anInt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'aString':
          result.aString = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$NoFieldsValueSerializer implements StructuredSerializer<NoFieldsValue> {
  @override
  final Iterable<Type> types = const [NoFieldsValue, _$NoFieldsValue];
  @override
  final String wireName = 'NoFieldsValue';

  @override
  Iterable<Object> serialize(Serializers serializers, NoFieldsValue object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object>[];
  }

  @override
  NoFieldsValue deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new NoFieldsValueBuilder().build();
  }
}

class _$NestedThingsValueSerializer
    implements StructuredSerializer<NestedThingsValue> {
  @override
  final Iterable<Type> types = const [NestedThingsValue, _$NestedThingsValue];
  @override
  final String wireName = 'NestedThingsValue';

  @override
  Iterable<Object> serialize(Serializers serializers, NestedThingsValue object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mapWithListValue',
      serializers.serialize(object.mapWithListValue,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(NoFieldsValue)])
          ])),
      'mapWithKey',
      serializers.serialize(object.mapWithKey,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(BuiltList, const [const FullType(NoFieldsValue)]),
            const FullType(String)
          ])),
      'mapWithMapValue',
      serializers.serialize(object.mapWithMapValue,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltMap,
                const [const FullType(String), const FullType(NoFieldsValue)])
          ])),
      'mapWithMapKey',
      serializers.serialize(object.mapWithMapKey,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(BuiltMap,
                const [const FullType(String), const FullType(NoFieldsValue)]),
            const FullType(String)
          ])),
      'singleNestedList',
      serializers.serialize(object.singleNestedList,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(NoFieldsValue)])
          ])),
      'dualNestedList',
      serializers.serialize(object.dualNestedList,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltList, const [
              const FullType(BuiltList, const [const FullType(NoFieldsValue)])
            ])
          ])),
      'listSetList',
      serializers.serialize(object.listSetList,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltSet, const [
              const FullType(BuiltList, const [const FullType(NoFieldsValue)])
            ])
          ])),
      'setListSet',
      serializers.serialize(object.setListSet,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltSet, const [
              const FullType(BuiltList, const [const FullType(NoFieldsValue)])
            ])
          ])),
      'setListMap',
      serializers.serialize(object.setListMap,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltSet, const [
              const FullType(BuiltMap,
                  const [const FullType(String), const FullType(NoFieldsValue)])
            ])
          ])),
    ];

    return result;
  }

  @override
  NestedThingsValue deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NestedThingsValueBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'mapWithListValue':
          result.mapWithListValue.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltList, const [const FullType(NoFieldsValue)])
              ])));
          break;
        case 'mapWithKey':
          result.mapWithKey.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(
                    BuiltList, const [const FullType(NoFieldsValue)]),
                const FullType(String)
              ])));
          break;
        case 'mapWithMapValue':
          result.mapWithMapValue.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltMap, const [
                  const FullType(String),
                  const FullType(NoFieldsValue)
                ])
              ])));
          break;
        case 'mapWithMapKey':
          result.mapWithMapKey.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(BuiltMap, const [
                  const FullType(String),
                  const FullType(NoFieldsValue)
                ]),
                const FullType(String)
              ])));
          break;
        case 'singleNestedList':
          result.singleNestedList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltList, const [const FullType(NoFieldsValue)])
              ])) as BuiltList<Object>);
          break;
        case 'dualNestedList':
          result.dualNestedList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltList, const [
                  const FullType(
                      BuiltList, const [const FullType(NoFieldsValue)])
                ])
              ])) as BuiltList<Object>);
          break;
        case 'listSetList':
          result.listSetList.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltSet, const [
                  const FullType(
                      BuiltList, const [const FullType(NoFieldsValue)])
                ])
              ])) as BuiltList<Object>);
          break;
        case 'setListSet':
          result.setListSet.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltSet, const [
                  const FullType(
                      BuiltList, const [const FullType(NoFieldsValue)])
                ])
              ])) as BuiltList<Object>);
          break;
        case 'setListMap':
          result.setListMap.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltSet, const [
                  const FullType(BuiltMap, const [
                    const FullType(String),
                    const FullType(NoFieldsValue)
                  ])
                ])
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$NestedThingsValueNoNestedBuilderSerializer
    implements StructuredSerializer<NestedThingsValueNoNestedBuilder> {
  @override
  final Iterable<Type> types = const [
    NestedThingsValueNoNestedBuilder,
    _$NestedThingsValueNoNestedBuilder
  ];
  @override
  final String wireName = 'NestedThingsValueNoNestedBuilder';

  @override
  Iterable<Object> serialize(
      Serializers serializers, NestedThingsValueNoNestedBuilder object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'mapWithListValue',
      serializers.serialize(object.mapWithListValue,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltList, const [const FullType(NoFieldsValue)])
          ])),
      'mapWithKey',
      serializers.serialize(object.mapWithKey,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(BuiltList, const [const FullType(NoFieldsValue)]),
            const FullType(String)
          ])),
      'mapWithMapValue',
      serializers.serialize(object.mapWithMapValue,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(String),
            const FullType(BuiltMap,
                const [const FullType(String), const FullType(NoFieldsValue)])
          ])),
      'mapWithMapKey',
      serializers.serialize(object.mapWithMapKey,
          specifiedType: const FullType(BuiltMap, const [
            const FullType(BuiltMap,
                const [const FullType(String), const FullType(NoFieldsValue)]),
            const FullType(String)
          ])),
      'singleNestedList',
      serializers.serialize(object.singleNestedList,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltList, const [const FullType(NoFieldsValue)])
          ])),
      'dualNestedList',
      serializers.serialize(object.dualNestedList,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltList, const [
              const FullType(BuiltList, const [const FullType(NoFieldsValue)])
            ])
          ])),
      'listSetList',
      serializers.serialize(object.listSetList,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltSet, const [
              const FullType(BuiltList, const [const FullType(NoFieldsValue)])
            ])
          ])),
      'setListSet',
      serializers.serialize(object.setListSet,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltSet, const [
              const FullType(BuiltList, const [const FullType(NoFieldsValue)])
            ])
          ])),
      'setListMap',
      serializers.serialize(object.setListMap,
          specifiedType: const FullType(BuiltList, const [
            const FullType(BuiltSet, const [
              const FullType(BuiltMap,
                  const [const FullType(String), const FullType(NoFieldsValue)])
            ])
          ])),
    ];

    return result;
  }

  @override
  NestedThingsValueNoNestedBuilder deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new NestedThingsValueNoNestedBuilderBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'mapWithListValue':
          result.mapWithListValue = serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltList, const [const FullType(NoFieldsValue)])
              ])) as BuiltMap<String, BuiltList<NoFieldsValue>>;
          break;
        case 'mapWithKey':
          result.mapWithKey = serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(
                    BuiltList, const [const FullType(NoFieldsValue)]),
                const FullType(String)
              ])) as BuiltMap<BuiltList<NoFieldsValue>, String>;
          break;
        case 'mapWithMapValue':
          result.mapWithMapValue = serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(String),
                const FullType(BuiltMap, const [
                  const FullType(String),
                  const FullType(NoFieldsValue)
                ])
              ])) as BuiltMap<String, BuiltMap<String, NoFieldsValue>>;
          break;
        case 'mapWithMapKey':
          result.mapWithMapKey = serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap, const [
                const FullType(BuiltMap, const [
                  const FullType(String),
                  const FullType(NoFieldsValue)
                ]),
                const FullType(String)
              ])) as BuiltMap<BuiltMap<String, NoFieldsValue>, String>;
          break;
        case 'singleNestedList':
          result.singleNestedList = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltList, const [const FullType(NoFieldsValue)])
              ])) as BuiltList<BuiltList<NoFieldsValue>>;
          break;
        case 'dualNestedList':
          result.dualNestedList = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltList, const [
                  const FullType(
                      BuiltList, const [const FullType(NoFieldsValue)])
                ])
              ])) as BuiltList<BuiltList<BuiltList<NoFieldsValue>>>;
          break;
        case 'listSetList':
          result.listSetList = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltSet, const [
                  const FullType(
                      BuiltList, const [const FullType(NoFieldsValue)])
                ])
              ])) as BuiltList<BuiltSet<BuiltList<NoFieldsValue>>>;
          break;
        case 'setListSet':
          result.setListSet = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltSet, const [
                  const FullType(
                      BuiltList, const [const FullType(NoFieldsValue)])
                ])
              ])) as BuiltList<BuiltSet<BuiltList<NoFieldsValue>>>;
          break;
        case 'setListMap':
          result.setListMap = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(BuiltSet, const [
                  const FullType(BuiltMap, const [
                    const FullType(String),
                    const FullType(NoFieldsValue)
                  ])
                ])
              ])) as BuiltList<BuiltSet<BuiltMap<String, NoFieldsValue>>>;
          break;
      }
    }

    return result.build();
  }
}

class _$SimpleValue extends SimpleValue {
  @override
  final int anInt;
  @override
  final String aString;
  @override
  final bool $mustBeEscaped;

  factory _$SimpleValue([void Function(SimpleValueBuilder) updates]) =>
      (new SimpleValueBuilder()..update(updates)).build();

  _$SimpleValue._({this.anInt, this.aString, this.$mustBeEscaped}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anInt, 'SimpleValue', 'anInt');
  }

  @override
  SimpleValue rebuild(void Function(SimpleValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SimpleValueBuilder toBuilder() => new SimpleValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SimpleValue &&
        anInt == other.anInt &&
        aString == other.aString &&
        $mustBeEscaped == other.$mustBeEscaped;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, anInt.hashCode), aString.hashCode),
        $mustBeEscaped.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SimpleValue')
          ..add('anInt', anInt)
          ..add('aString', aString)
          ..add('\$mustBeEscaped', $mustBeEscaped))
        .toString();
  }
}

class SimpleValueBuilder implements Builder<SimpleValue, SimpleValueBuilder> {
  _$SimpleValue _$v;

  int _anInt;
  int get anInt => _$this._anInt;
  set anInt(int anInt) => _$this._anInt = anInt;

  String _aString;
  String get aString => _$this._aString;
  set aString(String aString) => _$this._aString = aString;

  bool _$mustBeEscaped;
  bool get $mustBeEscaped => _$this._$mustBeEscaped;
  set $mustBeEscaped(bool $mustBeEscaped) =>
      _$this._$mustBeEscaped = $mustBeEscaped;

  SimpleValueBuilder();

  SimpleValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anInt = $v.anInt;
      _aString = $v.aString;
      _$mustBeEscaped = $v.$mustBeEscaped;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SimpleValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SimpleValue;
  }

  @override
  void update(void Function(SimpleValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SimpleValue build() {
    final _$result = _$v ??
        new _$SimpleValue._(
            anInt: BuiltValueNullFieldError.checkNotNull(
                anInt, 'SimpleValue', 'anInt'),
            aString: aString,
            $mustBeEscaped: $mustBeEscaped);
    replace(_$result);
    return _$result;
  }
}

class _$CompoundValue extends CompoundValue {
  @override
  final SimpleValue simpleValue;
  @override
  final ValidatedValue validatedValue;

  factory _$CompoundValue([void Function(CompoundValueBuilder) updates]) =>
      (new CompoundValueBuilder()..update(updates)).build();

  _$CompoundValue._({this.simpleValue, this.validatedValue}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        simpleValue, 'CompoundValue', 'simpleValue');
  }

  @override
  CompoundValue rebuild(void Function(CompoundValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompoundValueBuilder toBuilder() => new CompoundValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompoundValue &&
        simpleValue == other.simpleValue &&
        validatedValue == other.validatedValue;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, simpleValue.hashCode), validatedValue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CompoundValue')
          ..add('simpleValue', simpleValue)
          ..add('validatedValue', validatedValue))
        .toString();
  }
}

class CompoundValueBuilder
    implements Builder<CompoundValue, CompoundValueBuilder> {
  _$CompoundValue _$v;

  SimpleValueBuilder _simpleValue;
  SimpleValueBuilder get simpleValue =>
      _$this._simpleValue ??= new SimpleValueBuilder();
  set simpleValue(SimpleValueBuilder simpleValue) =>
      _$this._simpleValue = simpleValue;

  ValidatedValueBuilder _validatedValue;
  ValidatedValueBuilder get validatedValue =>
      _$this._validatedValue ??= new ValidatedValueBuilder();
  set validatedValue(ValidatedValueBuilder validatedValue) =>
      _$this._validatedValue = validatedValue;

  CompoundValueBuilder();

  CompoundValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _simpleValue = $v.simpleValue.toBuilder();
      _validatedValue = $v.validatedValue?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompoundValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompoundValue;
  }

  @override
  void update(void Function(CompoundValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompoundValue build() {
    _$CompoundValue _$result;
    try {
      _$result = _$v ??
          new _$CompoundValue._(
              simpleValue: simpleValue.build(),
              validatedValue: _validatedValue?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'simpleValue';
        simpleValue.build();
        _$failedField = 'validatedValue';
        _validatedValue?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CompoundValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$CompoundValueNoNesting extends CompoundValueNoNesting {
  @override
  final SimpleValue simpleValue;
  @override
  final ValidatedValue validatedValue;

  factory _$CompoundValueNoNesting(
          [void Function(CompoundValueNoNestingBuilder) updates]) =>
      (new CompoundValueNoNestingBuilder()..update(updates)).build();

  _$CompoundValueNoNesting._({this.simpleValue, this.validatedValue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        simpleValue, 'CompoundValueNoNesting', 'simpleValue');
  }

  @override
  CompoundValueNoNesting rebuild(
          void Function(CompoundValueNoNestingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CompoundValueNoNestingBuilder toBuilder() =>
      new CompoundValueNoNestingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompoundValueNoNesting &&
        simpleValue == other.simpleValue &&
        validatedValue == other.validatedValue;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, simpleValue.hashCode), validatedValue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CompoundValueNoNesting')
          ..add('simpleValue', simpleValue)
          ..add('validatedValue', validatedValue))
        .toString();
  }
}

class CompoundValueNoNestingBuilder
    implements Builder<CompoundValueNoNesting, CompoundValueNoNestingBuilder> {
  _$CompoundValueNoNesting _$v;

  SimpleValue _simpleValue;
  SimpleValue get simpleValue => _$this._simpleValue;
  set simpleValue(SimpleValue simpleValue) => _$this._simpleValue = simpleValue;

  ValidatedValue _validatedValue;
  ValidatedValue get validatedValue => _$this._validatedValue;
  set validatedValue(ValidatedValue validatedValue) =>
      _$this._validatedValue = validatedValue;

  CompoundValueNoNestingBuilder();

  CompoundValueNoNestingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _simpleValue = $v.simpleValue;
      _validatedValue = $v.validatedValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompoundValueNoNesting other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompoundValueNoNesting;
  }

  @override
  void update(void Function(CompoundValueNoNestingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompoundValueNoNesting build() {
    final _$result = _$v ??
        new _$CompoundValueNoNesting._(
            simpleValue: BuiltValueNullFieldError.checkNotNull(
                simpleValue, 'CompoundValueNoNesting', 'simpleValue'),
            validatedValue: validatedValue);
    replace(_$result);
    return _$result;
  }
}

class _$CompoundValueExplicitNoNesting extends CompoundValueExplicitNoNesting {
  @override
  final SimpleValue simpleValue;
  @override
  final ValidatedValue validatedValue;

  factory _$CompoundValueExplicitNoNesting(
          [void Function(CompoundValueExplicitNoNestingBuilder) updates]) =>
      (new CompoundValueExplicitNoNestingBuilder()..update(updates)).build()
          as _$CompoundValueExplicitNoNesting;

  _$CompoundValueExplicitNoNesting._({this.simpleValue, this.validatedValue})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        simpleValue, 'CompoundValueExplicitNoNesting', 'simpleValue');
  }

  @override
  CompoundValueExplicitNoNesting rebuild(
          void Function(CompoundValueExplicitNoNestingBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  _$CompoundValueExplicitNoNestingBuilder toBuilder() =>
      new _$CompoundValueExplicitNoNestingBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CompoundValueExplicitNoNesting &&
        simpleValue == other.simpleValue &&
        validatedValue == other.validatedValue;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, simpleValue.hashCode), validatedValue.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CompoundValueExplicitNoNesting')
          ..add('simpleValue', simpleValue)
          ..add('validatedValue', validatedValue))
        .toString();
  }
}

class _$CompoundValueExplicitNoNestingBuilder
    extends CompoundValueExplicitNoNestingBuilder {
  _$CompoundValueExplicitNoNesting _$v;

  @override
  SimpleValueBuilder get simpleValue {
    _$this;
    return super.simpleValue ??= new SimpleValueBuilder();
  }

  @override
  set simpleValue(SimpleValueBuilder simpleValue) {
    _$this;
    super.simpleValue = simpleValue;
  }

  @override
  ValidatedValue get validatedValue {
    _$this;
    return super.validatedValue;
  }

  @override
  set validatedValue(ValidatedValue validatedValue) {
    _$this;
    super.validatedValue = validatedValue;
  }

  _$CompoundValueExplicitNoNestingBuilder() : super._();

  CompoundValueExplicitNoNestingBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      super.simpleValue = $v.simpleValue.toBuilder();
      super.validatedValue = $v.validatedValue;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CompoundValueExplicitNoNesting other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CompoundValueExplicitNoNesting;
  }

  @override
  void update(void Function(CompoundValueExplicitNoNestingBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CompoundValueExplicitNoNesting build() {
    _$CompoundValueExplicitNoNesting _$result;
    try {
      _$result = _$v ??
          new _$CompoundValueExplicitNoNesting._(
              simpleValue: simpleValue.build(), validatedValue: validatedValue);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'simpleValue';
        simpleValue.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CompoundValueExplicitNoNesting', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ExplicitNestedList extends ExplicitNestedList {
  @override
  final BuiltList<BuiltList<int>> nestedList;

  factory _$ExplicitNestedList(
          [void Function(ExplicitNestedListBuilder) updates]) =>
      (new ExplicitNestedListBuilder()..update(updates)).build()
          as _$ExplicitNestedList;

  _$ExplicitNestedList._({this.nestedList}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        nestedList, 'ExplicitNestedList', 'nestedList');
  }

  @override
  ExplicitNestedList rebuild(
          void Function(ExplicitNestedListBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  _$ExplicitNestedListBuilder toBuilder() =>
      new _$ExplicitNestedListBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExplicitNestedList && nestedList == other.nestedList;
  }

  @override
  int get hashCode {
    return $jf($jc(0, nestedList.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ExplicitNestedList')
          ..add('nestedList', nestedList))
        .toString();
  }
}

class _$ExplicitNestedListBuilder extends ExplicitNestedListBuilder {
  _$ExplicitNestedList _$v;

  @override
  ListBuilder<BuiltList<int>> get nestedList {
    _$this;
    return super.nestedList ??= new ListBuilder<BuiltList<int>>();
  }

  @override
  set nestedList(ListBuilder<BuiltList<int>> nestedList) {
    _$this;
    super.nestedList = nestedList;
  }

  _$ExplicitNestedListBuilder() : super._();

  ExplicitNestedListBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      super.nestedList = $v.nestedList.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExplicitNestedList other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ExplicitNestedList;
  }

  @override
  void update(void Function(ExplicitNestedListBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ExplicitNestedList build() {
    _$ExplicitNestedList _$result;
    try {
      _$result =
          _$v ?? new _$ExplicitNestedList._(nestedList: nestedList.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'nestedList';
        nestedList.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ExplicitNestedList', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DerivedValue extends DerivedValue {
  @override
  final int anInt;
  int __derivedValue;
  Iterable<String> __derivedString;

  factory _$DerivedValue([void Function(DerivedValueBuilder) updates]) =>
      (new DerivedValueBuilder()..update(updates)).build();

  _$DerivedValue._({this.anInt}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anInt, 'DerivedValue', 'anInt');
  }

  @override
  int get derivedValue => __derivedValue ??= super.derivedValue;

  @override
  Iterable<String> get derivedString => __derivedString ??= super.derivedString;

  @override
  DerivedValue rebuild(void Function(DerivedValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DerivedValueBuilder toBuilder() => new DerivedValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DerivedValue && anInt == other.anInt;
  }

  @override
  int get hashCode {
    return $jf($jc(0, anInt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DerivedValue')..add('anInt', anInt))
        .toString();
  }
}

class DerivedValueBuilder
    implements Builder<DerivedValue, DerivedValueBuilder> {
  _$DerivedValue _$v;

  int _anInt;
  int get anInt => _$this._anInt;
  set anInt(int anInt) => _$this._anInt = anInt;

  DerivedValueBuilder();

  DerivedValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anInt = $v.anInt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DerivedValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DerivedValue;
  }

  @override
  void update(void Function(DerivedValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DerivedValue build() {
    final _$result = _$v ??
        new _$DerivedValue._(
            anInt: BuiltValueNullFieldError.checkNotNull(
                anInt, 'DerivedValue', 'anInt'));
    replace(_$result);
    return _$result;
  }
}

class _$ValidatedValue extends ValidatedValue {
  @override
  final int anInt;
  @override
  final String aString;

  factory _$ValidatedValue([void Function(ValidatedValueBuilder) updates]) =>
      (new ValidatedValueBuilder()..update(updates)).build();

  _$ValidatedValue._({this.anInt, this.aString}) : super._() {
    BuiltValueNullFieldError.checkNotNull(anInt, 'ValidatedValue', 'anInt');
  }

  @override
  ValidatedValue rebuild(void Function(ValidatedValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidatedValueBuilder toBuilder() =>
      new ValidatedValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidatedValue &&
        anInt == other.anInt &&
        aString == other.aString;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, anInt.hashCode), aString.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValidatedValue')
          ..add('anInt', anInt)
          ..add('aString', aString))
        .toString();
  }
}

class ValidatedValueBuilder
    implements Builder<ValidatedValue, ValidatedValueBuilder> {
  _$ValidatedValue _$v;

  int _anInt;
  int get anInt => _$this._anInt;
  set anInt(int anInt) => _$this._anInt = anInt;

  String _aString;
  String get aString => _$this._aString;
  set aString(String aString) => _$this._aString = aString;

  ValidatedValueBuilder();

  ValidatedValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anInt = $v.anInt;
      _aString = $v.aString;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidatedValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ValidatedValue;
  }

  @override
  void update(void Function(ValidatedValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ValidatedValue build() {
    final _$result = _$v ??
        new _$ValidatedValue._(
            anInt: BuiltValueNullFieldError.checkNotNull(
                anInt, 'ValidatedValue', 'anInt'),
            aString: aString);
    replace(_$result);
    return _$result;
  }
}

class _$NoFieldsValue extends NoFieldsValue {
  factory _$NoFieldsValue([void Function(NoFieldsValueBuilder) updates]) =>
      (new NoFieldsValueBuilder()..update(updates)).build();

  _$NoFieldsValue._() : super._();

  @override
  NoFieldsValue rebuild(void Function(NoFieldsValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NoFieldsValueBuilder toBuilder() => new NoFieldsValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NoFieldsValue;
  }

  @override
  int get hashCode {
    return 601485316;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper('NoFieldsValue').toString();
  }
}

class NoFieldsValueBuilder
    implements Builder<NoFieldsValue, NoFieldsValueBuilder> {
  _$NoFieldsValue _$v;

  NoFieldsValueBuilder();

  @override
  void replace(NoFieldsValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NoFieldsValue;
  }

  @override
  void update(void Function(NoFieldsValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NoFieldsValue build() {
    final _$result = _$v ?? new _$NoFieldsValue._();
    replace(_$result);
    return _$result;
  }
}

class _$NestedThingsValue extends NestedThingsValue {
  @override
  final BuiltMap<String, BuiltList<NoFieldsValue>> mapWithListValue;
  @override
  final BuiltMap<BuiltList<NoFieldsValue>, String> mapWithKey;
  @override
  final BuiltMap<String, BuiltMap<String, NoFieldsValue>> mapWithMapValue;
  @override
  final BuiltMap<BuiltMap<String, NoFieldsValue>, String> mapWithMapKey;
  @override
  final BuiltList<BuiltList<NoFieldsValue>> singleNestedList;
  @override
  final BuiltList<BuiltList<BuiltList<NoFieldsValue>>> dualNestedList;
  @override
  final BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> listSetList;
  @override
  final BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> setListSet;
  @override
  final BuiltList<BuiltSet<BuiltMap<String, NoFieldsValue>>> setListMap;

  factory _$NestedThingsValue(
          [void Function(NestedThingsValueBuilder) updates]) =>
      (new NestedThingsValueBuilder()..update(updates)).build();

  _$NestedThingsValue._(
      {this.mapWithListValue,
      this.mapWithKey,
      this.mapWithMapValue,
      this.mapWithMapKey,
      this.singleNestedList,
      this.dualNestedList,
      this.listSetList,
      this.setListSet,
      this.setListMap})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        mapWithListValue, 'NestedThingsValue', 'mapWithListValue');
    BuiltValueNullFieldError.checkNotNull(
        mapWithKey, 'NestedThingsValue', 'mapWithKey');
    BuiltValueNullFieldError.checkNotNull(
        mapWithMapValue, 'NestedThingsValue', 'mapWithMapValue');
    BuiltValueNullFieldError.checkNotNull(
        mapWithMapKey, 'NestedThingsValue', 'mapWithMapKey');
    BuiltValueNullFieldError.checkNotNull(
        singleNestedList, 'NestedThingsValue', 'singleNestedList');
    BuiltValueNullFieldError.checkNotNull(
        dualNestedList, 'NestedThingsValue', 'dualNestedList');
    BuiltValueNullFieldError.checkNotNull(
        listSetList, 'NestedThingsValue', 'listSetList');
    BuiltValueNullFieldError.checkNotNull(
        setListSet, 'NestedThingsValue', 'setListSet');
    BuiltValueNullFieldError.checkNotNull(
        setListMap, 'NestedThingsValue', 'setListMap');
  }

  @override
  NestedThingsValue rebuild(void Function(NestedThingsValueBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NestedThingsValueBuilder toBuilder() =>
      new NestedThingsValueBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedThingsValue &&
        mapWithListValue == other.mapWithListValue &&
        mapWithKey == other.mapWithKey &&
        mapWithMapValue == other.mapWithMapValue &&
        mapWithMapKey == other.mapWithMapKey &&
        singleNestedList == other.singleNestedList &&
        dualNestedList == other.dualNestedList &&
        listSetList == other.listSetList &&
        setListSet == other.setListSet &&
        setListMap == other.setListMap;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, mapWithListValue.hashCode),
                                    mapWithKey.hashCode),
                                mapWithMapValue.hashCode),
                            mapWithMapKey.hashCode),
                        singleNestedList.hashCode),
                    dualNestedList.hashCode),
                listSetList.hashCode),
            setListSet.hashCode),
        setListMap.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NestedThingsValue')
          ..add('mapWithListValue', mapWithListValue)
          ..add('mapWithKey', mapWithKey)
          ..add('mapWithMapValue', mapWithMapValue)
          ..add('mapWithMapKey', mapWithMapKey)
          ..add('singleNestedList', singleNestedList)
          ..add('dualNestedList', dualNestedList)
          ..add('listSetList', listSetList)
          ..add('setListSet', setListSet)
          ..add('setListMap', setListMap))
        .toString();
  }
}

class NestedThingsValueBuilder
    implements Builder<NestedThingsValue, NestedThingsValueBuilder> {
  _$NestedThingsValue _$v;

  MapBuilder<String, BuiltList<NoFieldsValue>> _mapWithListValue;
  MapBuilder<String, BuiltList<NoFieldsValue>> get mapWithListValue =>
      _$this._mapWithListValue ??=
          new MapBuilder<String, BuiltList<NoFieldsValue>>();
  set mapWithListValue(
          MapBuilder<String, BuiltList<NoFieldsValue>> mapWithListValue) =>
      _$this._mapWithListValue = mapWithListValue;

  MapBuilder<BuiltList<NoFieldsValue>, String> _mapWithKey;
  MapBuilder<BuiltList<NoFieldsValue>, String> get mapWithKey =>
      _$this._mapWithKey ??= new MapBuilder<BuiltList<NoFieldsValue>, String>();
  set mapWithKey(MapBuilder<BuiltList<NoFieldsValue>, String> mapWithKey) =>
      _$this._mapWithKey = mapWithKey;

  MapBuilder<String, BuiltMap<String, NoFieldsValue>> _mapWithMapValue;
  MapBuilder<String, BuiltMap<String, NoFieldsValue>> get mapWithMapValue =>
      _$this._mapWithMapValue ??=
          new MapBuilder<String, BuiltMap<String, NoFieldsValue>>();
  set mapWithMapValue(
          MapBuilder<String, BuiltMap<String, NoFieldsValue>>
              mapWithMapValue) =>
      _$this._mapWithMapValue = mapWithMapValue;

  MapBuilder<BuiltMap<String, NoFieldsValue>, String> _mapWithMapKey;
  MapBuilder<BuiltMap<String, NoFieldsValue>, String> get mapWithMapKey =>
      _$this._mapWithMapKey ??=
          new MapBuilder<BuiltMap<String, NoFieldsValue>, String>();
  set mapWithMapKey(
          MapBuilder<BuiltMap<String, NoFieldsValue>, String> mapWithMapKey) =>
      _$this._mapWithMapKey = mapWithMapKey;

  ListBuilder<BuiltList<NoFieldsValue>> _singleNestedList;
  ListBuilder<BuiltList<NoFieldsValue>> get singleNestedList =>
      _$this._singleNestedList ??= new ListBuilder<BuiltList<NoFieldsValue>>();
  set singleNestedList(
          ListBuilder<BuiltList<NoFieldsValue>> singleNestedList) =>
      _$this._singleNestedList = singleNestedList;

  ListBuilder<BuiltList<BuiltList<NoFieldsValue>>> _dualNestedList;
  ListBuilder<BuiltList<BuiltList<NoFieldsValue>>> get dualNestedList =>
      _$this._dualNestedList ??=
          new ListBuilder<BuiltList<BuiltList<NoFieldsValue>>>();
  set dualNestedList(
          ListBuilder<BuiltList<BuiltList<NoFieldsValue>>> dualNestedList) =>
      _$this._dualNestedList = dualNestedList;

  ListBuilder<BuiltSet<BuiltList<NoFieldsValue>>> _listSetList;
  ListBuilder<BuiltSet<BuiltList<NoFieldsValue>>> get listSetList =>
      _$this._listSetList ??=
          new ListBuilder<BuiltSet<BuiltList<NoFieldsValue>>>();
  set listSetList(
          ListBuilder<BuiltSet<BuiltList<NoFieldsValue>>> listSetList) =>
      _$this._listSetList = listSetList;

  ListBuilder<BuiltSet<BuiltList<NoFieldsValue>>> _setListSet;
  ListBuilder<BuiltSet<BuiltList<NoFieldsValue>>> get setListSet =>
      _$this._setListSet ??=
          new ListBuilder<BuiltSet<BuiltList<NoFieldsValue>>>();
  set setListSet(ListBuilder<BuiltSet<BuiltList<NoFieldsValue>>> setListSet) =>
      _$this._setListSet = setListSet;

  ListBuilder<BuiltSet<BuiltMap<String, NoFieldsValue>>> _setListMap;
  ListBuilder<BuiltSet<BuiltMap<String, NoFieldsValue>>> get setListMap =>
      _$this._setListMap ??=
          new ListBuilder<BuiltSet<BuiltMap<String, NoFieldsValue>>>();
  set setListMap(
          ListBuilder<BuiltSet<BuiltMap<String, NoFieldsValue>>> setListMap) =>
      _$this._setListMap = setListMap;

  NestedThingsValueBuilder();

  NestedThingsValueBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mapWithListValue = $v.mapWithListValue.toBuilder();
      _mapWithKey = $v.mapWithKey.toBuilder();
      _mapWithMapValue = $v.mapWithMapValue.toBuilder();
      _mapWithMapKey = $v.mapWithMapKey.toBuilder();
      _singleNestedList = $v.singleNestedList.toBuilder();
      _dualNestedList = $v.dualNestedList.toBuilder();
      _listSetList = $v.listSetList.toBuilder();
      _setListSet = $v.setListSet.toBuilder();
      _setListMap = $v.setListMap.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NestedThingsValue other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NestedThingsValue;
  }

  @override
  void update(void Function(NestedThingsValueBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NestedThingsValue build() {
    _$NestedThingsValue _$result;
    try {
      _$result = _$v ??
          new _$NestedThingsValue._(
              mapWithListValue: mapWithListValue.build(),
              mapWithKey: mapWithKey.build(),
              mapWithMapValue: mapWithMapValue.build(),
              mapWithMapKey: mapWithMapKey.build(),
              singleNestedList: singleNestedList.build(),
              dualNestedList: dualNestedList.build(),
              listSetList: listSetList.build(),
              setListSet: setListSet.build(),
              setListMap: setListMap.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'mapWithListValue';
        mapWithListValue.build();
        _$failedField = 'mapWithKey';
        mapWithKey.build();
        _$failedField = 'mapWithMapValue';
        mapWithMapValue.build();
        _$failedField = 'mapWithMapKey';
        mapWithMapKey.build();
        _$failedField = 'singleNestedList';
        singleNestedList.build();
        _$failedField = 'dualNestedList';
        dualNestedList.build();
        _$failedField = 'listSetList';
        listSetList.build();
        _$failedField = 'setListSet';
        setListSet.build();
        _$failedField = 'setListMap';
        setListMap.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'NestedThingsValue', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$NestedThingsValueNoNestedBuilder
    extends NestedThingsValueNoNestedBuilder {
  @override
  final BuiltMap<String, BuiltList<NoFieldsValue>> mapWithListValue;
  @override
  final BuiltMap<BuiltList<NoFieldsValue>, String> mapWithKey;
  @override
  final BuiltMap<String, BuiltMap<String, NoFieldsValue>> mapWithMapValue;
  @override
  final BuiltMap<BuiltMap<String, NoFieldsValue>, String> mapWithMapKey;
  @override
  final BuiltList<BuiltList<NoFieldsValue>> singleNestedList;
  @override
  final BuiltList<BuiltList<BuiltList<NoFieldsValue>>> dualNestedList;
  @override
  final BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> listSetList;
  @override
  final BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> setListSet;
  @override
  final BuiltList<BuiltSet<BuiltMap<String, NoFieldsValue>>> setListMap;

  factory _$NestedThingsValueNoNestedBuilder(
          [void Function(NestedThingsValueNoNestedBuilderBuilder) updates]) =>
      (new NestedThingsValueNoNestedBuilderBuilder()..update(updates)).build();

  _$NestedThingsValueNoNestedBuilder._(
      {this.mapWithListValue,
      this.mapWithKey,
      this.mapWithMapValue,
      this.mapWithMapKey,
      this.singleNestedList,
      this.dualNestedList,
      this.listSetList,
      this.setListSet,
      this.setListMap})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(mapWithListValue,
        'NestedThingsValueNoNestedBuilder', 'mapWithListValue');
    BuiltValueNullFieldError.checkNotNull(
        mapWithKey, 'NestedThingsValueNoNestedBuilder', 'mapWithKey');
    BuiltValueNullFieldError.checkNotNull(
        mapWithMapValue, 'NestedThingsValueNoNestedBuilder', 'mapWithMapValue');
    BuiltValueNullFieldError.checkNotNull(
        mapWithMapKey, 'NestedThingsValueNoNestedBuilder', 'mapWithMapKey');
    BuiltValueNullFieldError.checkNotNull(singleNestedList,
        'NestedThingsValueNoNestedBuilder', 'singleNestedList');
    BuiltValueNullFieldError.checkNotNull(
        dualNestedList, 'NestedThingsValueNoNestedBuilder', 'dualNestedList');
    BuiltValueNullFieldError.checkNotNull(
        listSetList, 'NestedThingsValueNoNestedBuilder', 'listSetList');
    BuiltValueNullFieldError.checkNotNull(
        setListSet, 'NestedThingsValueNoNestedBuilder', 'setListSet');
    BuiltValueNullFieldError.checkNotNull(
        setListMap, 'NestedThingsValueNoNestedBuilder', 'setListMap');
  }

  @override
  NestedThingsValueNoNestedBuilder rebuild(
          void Function(NestedThingsValueNoNestedBuilderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  NestedThingsValueNoNestedBuilderBuilder toBuilder() =>
      new NestedThingsValueNoNestedBuilderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is NestedThingsValueNoNestedBuilder &&
        mapWithListValue == other.mapWithListValue &&
        mapWithKey == other.mapWithKey &&
        mapWithMapValue == other.mapWithMapValue &&
        mapWithMapKey == other.mapWithMapKey &&
        singleNestedList == other.singleNestedList &&
        dualNestedList == other.dualNestedList &&
        listSetList == other.listSetList &&
        setListSet == other.setListSet &&
        setListMap == other.setListMap;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc(0, mapWithListValue.hashCode),
                                    mapWithKey.hashCode),
                                mapWithMapValue.hashCode),
                            mapWithMapKey.hashCode),
                        singleNestedList.hashCode),
                    dualNestedList.hashCode),
                listSetList.hashCode),
            setListSet.hashCode),
        setListMap.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('NestedThingsValueNoNestedBuilder')
          ..add('mapWithListValue', mapWithListValue)
          ..add('mapWithKey', mapWithKey)
          ..add('mapWithMapValue', mapWithMapValue)
          ..add('mapWithMapKey', mapWithMapKey)
          ..add('singleNestedList', singleNestedList)
          ..add('dualNestedList', dualNestedList)
          ..add('listSetList', listSetList)
          ..add('setListSet', setListSet)
          ..add('setListMap', setListMap))
        .toString();
  }
}

class NestedThingsValueNoNestedBuilderBuilder
    implements
        Builder<NestedThingsValueNoNestedBuilder,
            NestedThingsValueNoNestedBuilderBuilder> {
  _$NestedThingsValueNoNestedBuilder _$v;

  BuiltMap<String, BuiltList<NoFieldsValue>> _mapWithListValue;
  BuiltMap<String, BuiltList<NoFieldsValue>> get mapWithListValue =>
      _$this._mapWithListValue;
  set mapWithListValue(
          BuiltMap<String, BuiltList<NoFieldsValue>> mapWithListValue) =>
      _$this._mapWithListValue = mapWithListValue;

  BuiltMap<BuiltList<NoFieldsValue>, String> _mapWithKey;
  BuiltMap<BuiltList<NoFieldsValue>, String> get mapWithKey =>
      _$this._mapWithKey;
  set mapWithKey(BuiltMap<BuiltList<NoFieldsValue>, String> mapWithKey) =>
      _$this._mapWithKey = mapWithKey;

  BuiltMap<String, BuiltMap<String, NoFieldsValue>> _mapWithMapValue;
  BuiltMap<String, BuiltMap<String, NoFieldsValue>> get mapWithMapValue =>
      _$this._mapWithMapValue;
  set mapWithMapValue(
          BuiltMap<String, BuiltMap<String, NoFieldsValue>> mapWithMapValue) =>
      _$this._mapWithMapValue = mapWithMapValue;

  BuiltMap<BuiltMap<String, NoFieldsValue>, String> _mapWithMapKey;
  BuiltMap<BuiltMap<String, NoFieldsValue>, String> get mapWithMapKey =>
      _$this._mapWithMapKey;
  set mapWithMapKey(
          BuiltMap<BuiltMap<String, NoFieldsValue>, String> mapWithMapKey) =>
      _$this._mapWithMapKey = mapWithMapKey;

  BuiltList<BuiltList<NoFieldsValue>> _singleNestedList;
  BuiltList<BuiltList<NoFieldsValue>> get singleNestedList =>
      _$this._singleNestedList;
  set singleNestedList(BuiltList<BuiltList<NoFieldsValue>> singleNestedList) =>
      _$this._singleNestedList = singleNestedList;

  BuiltList<BuiltList<BuiltList<NoFieldsValue>>> _dualNestedList;
  BuiltList<BuiltList<BuiltList<NoFieldsValue>>> get dualNestedList =>
      _$this._dualNestedList;
  set dualNestedList(
          BuiltList<BuiltList<BuiltList<NoFieldsValue>>> dualNestedList) =>
      _$this._dualNestedList = dualNestedList;

  BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> _listSetList;
  BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> get listSetList =>
      _$this._listSetList;
  set listSetList(BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> listSetList) =>
      _$this._listSetList = listSetList;

  BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> _setListSet;
  BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> get setListSet =>
      _$this._setListSet;
  set setListSet(BuiltList<BuiltSet<BuiltList<NoFieldsValue>>> setListSet) =>
      _$this._setListSet = setListSet;

  BuiltList<BuiltSet<BuiltMap<String, NoFieldsValue>>> _setListMap;
  BuiltList<BuiltSet<BuiltMap<String, NoFieldsValue>>> get setListMap =>
      _$this._setListMap;
  set setListMap(
          BuiltList<BuiltSet<BuiltMap<String, NoFieldsValue>>> setListMap) =>
      _$this._setListMap = setListMap;

  NestedThingsValueNoNestedBuilderBuilder();

  NestedThingsValueNoNestedBuilderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _mapWithListValue = $v.mapWithListValue;
      _mapWithKey = $v.mapWithKey;
      _mapWithMapValue = $v.mapWithMapValue;
      _mapWithMapKey = $v.mapWithMapKey;
      _singleNestedList = $v.singleNestedList;
      _dualNestedList = $v.dualNestedList;
      _listSetList = $v.listSetList;
      _setListSet = $v.setListSet;
      _setListMap = $v.setListMap;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(NestedThingsValueNoNestedBuilder other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$NestedThingsValueNoNestedBuilder;
  }

  @override
  void update(void Function(NestedThingsValueNoNestedBuilderBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$NestedThingsValueNoNestedBuilder build() {
    final _$result = _$v ??
        new _$NestedThingsValueNoNestedBuilder._(
            mapWithListValue: BuiltValueNullFieldError.checkNotNull(
                mapWithListValue, 'NestedThingsValueNoNestedBuilder', 'mapWithListValue'),
            mapWithKey: BuiltValueNullFieldError.checkNotNull(
                mapWithKey, 'NestedThingsValueNoNestedBuilder', 'mapWithKey'),
            mapWithMapValue: BuiltValueNullFieldError.checkNotNull(
                mapWithMapValue, 'NestedThingsValueNoNestedBuilder', 'mapWithMapValue'),
            mapWithMapKey: BuiltValueNullFieldError.checkNotNull(
                mapWithMapKey, 'NestedThingsValueNoNestedBuilder', 'mapWithMapKey'),
            singleNestedList: BuiltValueNullFieldError.checkNotNull(
                singleNestedList, 'NestedThingsValueNoNestedBuilder', 'singleNestedList'),
            dualNestedList: BuiltValueNullFieldError.checkNotNull(
                dualNestedList, 'NestedThingsValueNoNestedBuilder', 'dualNestedList'),
            listSetList: BuiltValueNullFieldError.checkNotNull(
                listSetList, 'NestedThingsValueNoNestedBuilder', 'listSetList'),
            setListSet: BuiltValueNullFieldError.checkNotNull(setListSet, 'NestedThingsValueNoNestedBuilder', 'setListSet'),
            setListMap: BuiltValueNullFieldError.checkNotNull(setListMap, 'NestedThingsValueNoNestedBuilder', 'setListMap'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class SimpleValueAdapter extends TypeAdapter<SimpleValue> {
  @override
  final int typeId = 0;

  @override
  SimpleValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (SimpleValueBuilder()
          ..anInt = fields[0] as int
          ..aString = fields[1] as String
          ..$mustBeEscaped = fields[2] as bool)
        .build();
  }

  @override
  void write(BinaryWriter writer, SimpleValue obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.anInt)
      ..writeByte(1)
      ..write(obj.aString)
      ..writeByte(2)
      ..write(obj.$mustBeEscaped);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SimpleValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CompoundValueAdapter extends TypeAdapter<CompoundValue> {
  @override
  final int typeId = 0;

  @override
  CompoundValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (CompoundValueBuilder()
          ..simpleValue = (fields[0] as SimpleValue)?.toBuilder()
          ..validatedValue = (fields[1] as ValidatedValue)?.toBuilder())
        .build();
  }

  @override
  void write(BinaryWriter writer, CompoundValue obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.simpleValue)
      ..writeByte(1)
      ..write(obj.validatedValue);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompoundValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CompoundValueNoNestingAdapter
    extends TypeAdapter<CompoundValueNoNesting> {
  @override
  final int typeId = 0;

  @override
  CompoundValueNoNesting read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (CompoundValueNoNestingBuilder()
          ..simpleValue = fields[0] as SimpleValue
          ..validatedValue = fields[1] as ValidatedValue)
        .build();
  }

  @override
  void write(BinaryWriter writer, CompoundValueNoNesting obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.simpleValue)
      ..writeByte(1)
      ..write(obj.validatedValue);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompoundValueNoNestingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class CompoundValueExplicitNoNestingAdapter
    extends TypeAdapter<CompoundValueExplicitNoNesting> {
  @override
  final int typeId = 0;

  @override
  CompoundValueExplicitNoNesting read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (CompoundValueExplicitNoNestingBuilder()
          ..simpleValue = (fields[0] as SimpleValue)?.toBuilder()
          ..validatedValue = fields[1] as ValidatedValue)
        .build();
  }

  @override
  void write(BinaryWriter writer, CompoundValueExplicitNoNesting obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.simpleValue)
      ..writeByte(1)
      ..write(obj.validatedValue);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CompoundValueExplicitNoNestingAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ExplicitNestedListAdapter extends TypeAdapter<ExplicitNestedList> {
  @override
  final int typeId = 0;

  @override
  ExplicitNestedList read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (ExplicitNestedListBuilder()
          ..nestedList = fields[0] == null
              ? null
              : ListBuilder<BuiltList<int>>((fields[0] as Iterable)?.map(
                  (dynamic e) => e == null
                      ? null
                      : ListBuilder<int>(e as Iterable).build())))
        .build();
  }

  @override
  void write(BinaryWriter writer, ExplicitNestedList obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.nestedList?.toList()?.map((e) => e?.toList()));
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ExplicitNestedListAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class DerivedValueAdapter extends TypeAdapter<DerivedValue> {
  @override
  final int typeId = 0;

  @override
  DerivedValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (DerivedValueBuilder()..anInt = fields[0] as int).build();
  }

  @override
  void write(BinaryWriter writer, DerivedValue obj) {
    writer
      ..writeByte(1)
      ..writeByte(0)
      ..write(obj.anInt);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DerivedValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class ValidatedValueAdapter extends TypeAdapter<ValidatedValue> {
  @override
  final int typeId = 0;

  @override
  ValidatedValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (ValidatedValueBuilder()
          ..anInt = fields[0] as int
          ..aString = fields[1] as String)
        .build();
  }

  @override
  void write(BinaryWriter writer, ValidatedValue obj) {
    writer
      ..writeByte(2)
      ..writeByte(0)
      ..write(obj.anInt)
      ..writeByte(1)
      ..write(obj.aString);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ValidatedValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NoFieldsValueAdapter extends TypeAdapter<NoFieldsValue> {
  @override
  final int typeId = 0;

  @override
  NoFieldsValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (NoFieldsValueBuilder()).build();
  }

  @override
  void write(BinaryWriter writer, NoFieldsValue obj) {
    writer..writeByte(0);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NoFieldsValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NestedThingsValueAdapter extends TypeAdapter<NestedThingsValue> {
  @override
  final int typeId = 0;

  @override
  NestedThingsValue read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (NestedThingsValueBuilder()
          ..mapWithListValue = fields[0] == null
              ? null
              : MapBuilder<String, BuiltList<NoFieldsValue>>((fields[0] as Map)
                  ?.map((dynamic k, dynamic v) => MapEntry(
                      k as String,
                      v == null
                          ? null
                          : ListBuilder<NoFieldsValue>(v as Iterable).build())))
          ..mapWithKey = fields[1] == null
              ? null
              : MapBuilder<BuiltList<NoFieldsValue>, String>((fields[1] as Map)
                  ?.map((dynamic k, dynamic v) => MapEntry(
                      k == null ? null : ListBuilder<NoFieldsValue>(k as Iterable).build(),
                      v as String)))
          ..mapWithMapValue = fields[2] == null ? null : MapBuilder<String, BuiltMap<String, NoFieldsValue>>((fields[2] as Map)?.map((dynamic k, dynamic v) => MapEntry(k as String, v == null ? null : MapBuilder<String, NoFieldsValue>((v as Map)?.cast<String, NoFieldsValue>()).build())))
          ..mapWithMapKey = fields[3] == null ? null : MapBuilder<BuiltMap<String, NoFieldsValue>, String>((fields[3] as Map)?.map((dynamic k, dynamic v) => MapEntry(k == null ? null : MapBuilder<String, NoFieldsValue>((k as Map)?.cast<String, NoFieldsValue>()).build(), v as String)))
          ..singleNestedList = fields[4] == null ? null : ListBuilder<BuiltList<NoFieldsValue>>((fields[4] as Iterable)?.map((dynamic e) => e == null ? null : ListBuilder<NoFieldsValue>(e as Iterable).build()))
          ..dualNestedList = fields[5] == null ? null : ListBuilder<BuiltList<BuiltList<NoFieldsValue>>>((fields[5] as Iterable)?.map((dynamic e) => e == null ? null : ListBuilder<BuiltList<NoFieldsValue>>((e as Iterable)?.map((dynamic e) => e == null ? null : ListBuilder<NoFieldsValue>(e as Iterable).build())).build()))
          ..listSetList = fields[6] == null ? null : ListBuilder<BuiltSet<BuiltList<NoFieldsValue>>>((fields[6] as Iterable)?.map((dynamic e) => e == null ? null : SetBuilder<BuiltList<NoFieldsValue>>((e as Iterable)?.map((dynamic e) => e == null ? null : ListBuilder<NoFieldsValue>(e as Iterable).build())).build()))
          ..setListSet = fields[7] == null ? null : ListBuilder<BuiltSet<BuiltList<NoFieldsValue>>>((fields[7] as Iterable)?.map((dynamic e) => e == null ? null : SetBuilder<BuiltList<NoFieldsValue>>((e as Iterable)?.map((dynamic e) => e == null ? null : ListBuilder<NoFieldsValue>(e as Iterable).build())).build()))
          ..setListMap = fields[8] == null ? null : ListBuilder<BuiltSet<BuiltMap<String, NoFieldsValue>>>((fields[8] as Iterable)?.map((dynamic e) => e == null ? null : SetBuilder<BuiltMap<String, NoFieldsValue>>((e as Iterable)?.map((dynamic e) => e == null ? null : MapBuilder<String, NoFieldsValue>((e as Map)?.cast<String, NoFieldsValue>()).build())).build())))
        .build();
  }

  @override
  void write(BinaryWriter writer, NestedThingsValue obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.mapWithListValue
          ?.toMap()
          ?.map((k, v) => MapEntry(k, v?.toList())))
      ..writeByte(1)
      ..write(obj.mapWithKey?.toMap()?.map((k, v) => MapEntry(k?.toList(), v)))
      ..writeByte(2)
      ..write(
          obj.mapWithMapValue?.toMap()?.map((k, v) => MapEntry(k, v?.toMap())))
      ..writeByte(3)
      ..write(
          obj.mapWithMapKey?.toMap()?.map((k, v) => MapEntry(k?.toMap(), v)))
      ..writeByte(4)
      ..write(obj.singleNestedList?.toList()?.map((e) => e?.toList()))
      ..writeByte(5)
      ..write(obj.dualNestedList
          ?.toList()
          ?.map((e) => e?.toList()?.map((e) => e?.toList())))
      ..writeByte(6)
      ..write(obj.listSetList
          ?.toList()
          ?.map((e) => e?.toList()?.map((e) => e?.toList())))
      ..writeByte(7)
      ..write(obj.setListSet
          ?.toList()
          ?.map((e) => e?.toList()?.map((e) => e?.toList())))
      ..writeByte(8)
      ..write(obj.setListMap
          ?.toList()
          ?.map((e) => e?.toList()?.map((e) => e?.toMap())));
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NestedThingsValueAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

class NestedThingsValueNoNestedBuilderAdapter
    extends TypeAdapter<NestedThingsValueNoNestedBuilder> {
  @override
  final int typeId = 0;

  @override
  NestedThingsValueNoNestedBuilder read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };

    return (NestedThingsValueNoNestedBuilderBuilder()
          ..mapWithListValue = fields[0] == null
              ? null
              : MapBuilder<String, BuiltList<NoFieldsValue>>((fields[0] as Map)?.map((dynamic k, dynamic v) => MapEntry(k as String, v == null ? null : ListBuilder<NoFieldsValue>(v as Iterable).build())))
                  .build()
          ..mapWithKey = fields[1] == null
              ? null
              : MapBuilder<BuiltList<NoFieldsValue>, String>((fields[1] as Map)?.map((dynamic k, dynamic v) => MapEntry(k == null ? null : ListBuilder<NoFieldsValue>(k as Iterable).build(), v as String)))
                  .build()
          ..mapWithMapValue = fields[2] == null
              ? null
              : MapBuilder<String, BuiltMap<String, NoFieldsValue>>(
                      (fields[2] as Map)?.map((dynamic k, dynamic v) => MapEntry(k as String, v == null ? null : MapBuilder<String, NoFieldsValue>((v as Map)?.cast<String, NoFieldsValue>()).build())))
                  .build()
          ..mapWithMapKey = fields[3] == null
              ? null
              : MapBuilder<BuiltMap<String, NoFieldsValue>, String>(
                      (fields[3] as Map)?.map((dynamic k, dynamic v) => MapEntry(k == null ? null : MapBuilder<String, NoFieldsValue>((k as Map)?.cast<String, NoFieldsValue>()).build(), v as String)))
                  .build()
          ..singleNestedList = fields[4] == null ? null : ListBuilder<BuiltList<NoFieldsValue>>((fields[4] as Iterable)?.map((dynamic e) => e == null ? null : ListBuilder<NoFieldsValue>(e as Iterable).build())).build()
          ..dualNestedList = fields[5] == null ? null : ListBuilder<BuiltList<BuiltList<NoFieldsValue>>>((fields[5] as Iterable)?.map((dynamic e) => e == null ? null : ListBuilder<BuiltList<NoFieldsValue>>((e as Iterable)?.map((dynamic e) => e == null ? null : ListBuilder<NoFieldsValue>(e as Iterable).build())).build())).build()
          ..listSetList = fields[6] == null ? null : ListBuilder<BuiltSet<BuiltList<NoFieldsValue>>>((fields[6] as Iterable)?.map((dynamic e) => e == null ? null : SetBuilder<BuiltList<NoFieldsValue>>((e as Iterable)?.map((dynamic e) => e == null ? null : ListBuilder<NoFieldsValue>(e as Iterable).build())).build())).build()
          ..setListSet = fields[7] == null ? null : ListBuilder<BuiltSet<BuiltList<NoFieldsValue>>>((fields[7] as Iterable)?.map((dynamic e) => e == null ? null : SetBuilder<BuiltList<NoFieldsValue>>((e as Iterable)?.map((dynamic e) => e == null ? null : ListBuilder<NoFieldsValue>(e as Iterable).build())).build())).build()
          ..setListMap = fields[8] == null ? null : ListBuilder<BuiltSet<BuiltMap<String, NoFieldsValue>>>((fields[8] as Iterable)?.map((dynamic e) => e == null ? null : SetBuilder<BuiltMap<String, NoFieldsValue>>((e as Iterable)?.map((dynamic e) => e == null ? null : MapBuilder<String, NoFieldsValue>((e as Map)?.cast<String, NoFieldsValue>()).build())).build())).build())
        .build();
  }

  @override
  void write(BinaryWriter writer, NestedThingsValueNoNestedBuilder obj) {
    writer
      ..writeByte(9)
      ..writeByte(0)
      ..write(obj.mapWithListValue
          ?.toMap()
          ?.map((k, v) => MapEntry(k, v?.toList())))
      ..writeByte(1)
      ..write(obj.mapWithKey?.toMap()?.map((k, v) => MapEntry(k?.toList(), v)))
      ..writeByte(2)
      ..write(
          obj.mapWithMapValue?.toMap()?.map((k, v) => MapEntry(k, v?.toMap())))
      ..writeByte(3)
      ..write(
          obj.mapWithMapKey?.toMap()?.map((k, v) => MapEntry(k?.toMap(), v)))
      ..writeByte(4)
      ..write(obj.singleNestedList?.toList()?.map((e) => e?.toList()))
      ..writeByte(5)
      ..write(obj.dualNestedList
          ?.toList()
          ?.map((e) => e?.toList()?.map((e) => e?.toList())))
      ..writeByte(6)
      ..write(obj.listSetList
          ?.toList()
          ?.map((e) => e?.toList()?.map((e) => e?.toList())))
      ..writeByte(7)
      ..write(obj.setListSet
          ?.toList()
          ?.map((e) => e?.toList()?.map((e) => e?.toList())))
      ..writeByte(8)
      ..write(obj.setListMap
          ?.toList()
          ?.map((e) => e?.toList()?.map((e) => e?.toMap())));
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is NestedThingsValueNoNestedBuilderAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
