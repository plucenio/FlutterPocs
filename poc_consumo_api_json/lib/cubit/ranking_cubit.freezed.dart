// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'ranking_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$RankingStateTearOff {
  const _$RankingStateTearOff();

// ignore: unused_element
  Idle<T> idle<T>() {
    return Idle<T>();
  }

// ignore: unused_element
  Loading<T> loading<T>() {
    return Loading<T>();
  }

// ignore: unused_element
  Loaded<T> loaded<T>({@required T data}) {
    return Loaded<T>(
      data: data,
    );
  }

// ignore: unused_element
  Error<T> error<T>({@required NetworkExceptions networkExceptions}) {
    return Error<T>(
      networkExceptions: networkExceptions,
    );
  }
}

// ignore: unused_element
const $RankingState = _$RankingStateTearOff();

mixin _$RankingState<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result loaded(T data),
    @required Result error(NetworkExceptions networkExceptions),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result loaded(T data),
    Result error(NetworkExceptions networkExceptions),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle<T> value),
    @required Result loading(Loading<T> value),
    @required Result loaded(Loaded<T> value),
    @required Result error(Error<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle<T> value),
    Result loading(Loading<T> value),
    Result loaded(Loaded<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  });
}

abstract class $RankingStateCopyWith<T, $Res> {
  factory $RankingStateCopyWith(
          RankingState<T> value, $Res Function(RankingState<T>) then) =
      _$RankingStateCopyWithImpl<T, $Res>;
}

class _$RankingStateCopyWithImpl<T, $Res>
    implements $RankingStateCopyWith<T, $Res> {
  _$RankingStateCopyWithImpl(this._value, this._then);

  final RankingState<T> _value;
  // ignore: unused_field
  final $Res Function(RankingState<T>) _then;
}

abstract class $IdleCopyWith<T, $Res> {
  factory $IdleCopyWith(Idle<T> value, $Res Function(Idle<T>) then) =
      _$IdleCopyWithImpl<T, $Res>;
}

class _$IdleCopyWithImpl<T, $Res> extends _$RankingStateCopyWithImpl<T, $Res>
    implements $IdleCopyWith<T, $Res> {
  _$IdleCopyWithImpl(Idle<T> _value, $Res Function(Idle<T>) _then)
      : super(_value, (v) => _then(v as Idle<T>));

  @override
  Idle<T> get _value => super._value as Idle<T>;
}

class _$Idle<T> implements Idle<T> {
  const _$Idle();

  @override
  String toString() {
    return 'RankingState<$T>.idle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Idle<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result loaded(T data),
    @required Result error(NetworkExceptions networkExceptions),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return idle();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result loaded(T data),
    Result error(NetworkExceptions networkExceptions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle<T> value),
    @required Result loading(Loading<T> value),
    @required Result loaded(Loaded<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return idle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle<T> value),
    Result loading(Loading<T> value),
    Result loaded(Loaded<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (idle != null) {
      return idle(this);
    }
    return orElse();
  }
}

abstract class Idle<T> implements RankingState<T> {
  const factory Idle() = _$Idle<T>;
}

abstract class $LoadingCopyWith<T, $Res> {
  factory $LoadingCopyWith(Loading<T> value, $Res Function(Loading<T>) then) =
      _$LoadingCopyWithImpl<T, $Res>;
}

class _$LoadingCopyWithImpl<T, $Res> extends _$RankingStateCopyWithImpl<T, $Res>
    implements $LoadingCopyWith<T, $Res> {
  _$LoadingCopyWithImpl(Loading<T> _value, $Res Function(Loading<T>) _then)
      : super(_value, (v) => _then(v as Loading<T>));

  @override
  Loading<T> get _value => super._value as Loading<T>;
}

class _$Loading<T> implements Loading<T> {
  const _$Loading();

  @override
  String toString() {
    return 'RankingState<$T>.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading<T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result loaded(T data),
    @required Result error(NetworkExceptions networkExceptions),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result loaded(T data),
    Result error(NetworkExceptions networkExceptions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle<T> value),
    @required Result loading(Loading<T> value),
    @required Result loaded(Loaded<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle<T> value),
    Result loading(Loading<T> value),
    Result loaded(Loaded<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<T> implements RankingState<T> {
  const factory Loading() = _$Loading<T>;
}

abstract class $LoadedCopyWith<T, $Res> {
  factory $LoadedCopyWith(Loaded<T> value, $Res Function(Loaded<T>) then) =
      _$LoadedCopyWithImpl<T, $Res>;
  $Res call({T data});
}

class _$LoadedCopyWithImpl<T, $Res> extends _$RankingStateCopyWithImpl<T, $Res>
    implements $LoadedCopyWith<T, $Res> {
  _$LoadedCopyWithImpl(Loaded<T> _value, $Res Function(Loaded<T>) _then)
      : super(_value, (v) => _then(v as Loaded<T>));

  @override
  Loaded<T> get _value => super._value as Loaded<T>;

  @override
  $Res call({
    Object data = freezed,
  }) {
    return _then(Loaded<T>(
      data: data == freezed ? _value.data : data as T,
    ));
  }
}

class _$Loaded<T> implements Loaded<T> {
  const _$Loaded({@required this.data}) : assert(data != null);

  @override
  final T data;

  @override
  String toString() {
    return 'RankingState<$T>.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded<T> &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @override
  $LoadedCopyWith<T, Loaded<T>> get copyWith =>
      _$LoadedCopyWithImpl<T, Loaded<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result loaded(T data),
    @required Result error(NetworkExceptions networkExceptions),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result loaded(T data),
    Result error(NetworkExceptions networkExceptions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle<T> value),
    @required Result loading(Loading<T> value),
    @required Result loaded(Loaded<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle<T> value),
    Result loading(Loading<T> value),
    Result loaded(Loaded<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded<T> implements RankingState<T> {
  const factory Loaded({@required T data}) = _$Loaded<T>;

  T get data;
  $LoadedCopyWith<T, Loaded<T>> get copyWith;
}

abstract class $ErrorCopyWith<T, $Res> {
  factory $ErrorCopyWith(Error<T> value, $Res Function(Error<T>) then) =
      _$ErrorCopyWithImpl<T, $Res>;
  $Res call({NetworkExceptions networkExceptions});

  $NetworkExceptionsCopyWith<$Res> get networkExceptions;
}

class _$ErrorCopyWithImpl<T, $Res> extends _$RankingStateCopyWithImpl<T, $Res>
    implements $ErrorCopyWith<T, $Res> {
  _$ErrorCopyWithImpl(Error<T> _value, $Res Function(Error<T>) _then)
      : super(_value, (v) => _then(v as Error<T>));

  @override
  Error<T> get _value => super._value as Error<T>;

  @override
  $Res call({
    Object networkExceptions = freezed,
  }) {
    return _then(Error<T>(
      networkExceptions: networkExceptions == freezed
          ? _value.networkExceptions
          : networkExceptions as NetworkExceptions,
    ));
  }

  @override
  $NetworkExceptionsCopyWith<$Res> get networkExceptions {
    if (_value.networkExceptions == null) {
      return null;
    }
    return $NetworkExceptionsCopyWith<$Res>(_value.networkExceptions, (value) {
      return _then(_value.copyWith(networkExceptions: value));
    });
  }
}

class _$Error<T> implements Error<T> {
  const _$Error({@required this.networkExceptions})
      : assert(networkExceptions != null);

  @override
  final NetworkExceptions networkExceptions;

  @override
  String toString() {
    return 'RankingState<$T>.error(networkExceptions: $networkExceptions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error<T> &&
            (identical(other.networkExceptions, networkExceptions) ||
                const DeepCollectionEquality()
                    .equals(other.networkExceptions, networkExceptions)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(networkExceptions);

  @override
  $ErrorCopyWith<T, Error<T>> get copyWith =>
      _$ErrorCopyWithImpl<T, Error<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result idle(),
    @required Result loading(),
    @required Result loaded(T data),
    @required Result error(NetworkExceptions networkExceptions),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(networkExceptions);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result idle(),
    Result loading(),
    Result loaded(T data),
    Result error(NetworkExceptions networkExceptions),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(networkExceptions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result idle(Idle<T> value),
    @required Result loading(Loading<T> value),
    @required Result loaded(Loaded<T> value),
    @required Result error(Error<T> value),
  }) {
    assert(idle != null);
    assert(loading != null);
    assert(loaded != null);
    assert(error != null);
    return error(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result idle(Idle<T> value),
    Result loading(Loading<T> value),
    Result loaded(Loaded<T> value),
    Result error(Error<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<T> implements RankingState<T> {
  const factory Error({@required NetworkExceptions networkExceptions}) =
      _$Error<T>;

  NetworkExceptions get networkExceptions;
  $ErrorCopyWith<T, Error<T>> get copyWith;
}
