// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'add_goal_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AddGoalEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String goalName, String amount) addGoal,
    required TResult Function(DateTime newDate) changeDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String goalName, String amount)? addGoal,
    TResult? Function(DateTime newDate)? changeDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String goalName, String amount)? addGoal,
    TResult Function(DateTime newDate)? changeDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddGoal value) addGoal,
    required TResult Function(_ChangeDate value) changeDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddGoal value)? addGoal,
    TResult? Function(_ChangeDate value)? changeDate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddGoal value)? addGoal,
    TResult Function(_ChangeDate value)? changeDate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddGoalEventCopyWith<$Res> {
  factory $AddGoalEventCopyWith(
          AddGoalEvent value, $Res Function(AddGoalEvent) then) =
      _$AddGoalEventCopyWithImpl<$Res, AddGoalEvent>;
}

/// @nodoc
class _$AddGoalEventCopyWithImpl<$Res, $Val extends AddGoalEvent>
    implements $AddGoalEventCopyWith<$Res> {
  _$AddGoalEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AddGoalImplCopyWith<$Res> {
  factory _$$AddGoalImplCopyWith(
          _$AddGoalImpl value, $Res Function(_$AddGoalImpl) then) =
      __$$AddGoalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String goalName, String amount});
}

/// @nodoc
class __$$AddGoalImplCopyWithImpl<$Res>
    extends _$AddGoalEventCopyWithImpl<$Res, _$AddGoalImpl>
    implements _$$AddGoalImplCopyWith<$Res> {
  __$$AddGoalImplCopyWithImpl(
      _$AddGoalImpl _value, $Res Function(_$AddGoalImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? goalName = null,
    Object? amount = null,
  }) {
    return _then(_$AddGoalImpl(
      null == goalName
          ? _value.goalName
          : goalName // ignore: cast_nullable_to_non_nullable
              as String,
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddGoalImpl implements _AddGoal {
  const _$AddGoalImpl(this.goalName, this.amount);

  @override
  final String goalName;
  @override
  final String amount;

  @override
  String toString() {
    return 'AddGoalEvent.addGoal(goalName: $goalName, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGoalImpl &&
            (identical(other.goalName, goalName) ||
                other.goalName == goalName) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, goalName, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGoalImplCopyWith<_$AddGoalImpl> get copyWith =>
      __$$AddGoalImplCopyWithImpl<_$AddGoalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String goalName, String amount) addGoal,
    required TResult Function(DateTime newDate) changeDate,
  }) {
    return addGoal(goalName, amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String goalName, String amount)? addGoal,
    TResult? Function(DateTime newDate)? changeDate,
  }) {
    return addGoal?.call(goalName, amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String goalName, String amount)? addGoal,
    TResult Function(DateTime newDate)? changeDate,
    required TResult orElse(),
  }) {
    if (addGoal != null) {
      return addGoal(goalName, amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddGoal value) addGoal,
    required TResult Function(_ChangeDate value) changeDate,
  }) {
    return addGoal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddGoal value)? addGoal,
    TResult? Function(_ChangeDate value)? changeDate,
  }) {
    return addGoal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddGoal value)? addGoal,
    TResult Function(_ChangeDate value)? changeDate,
    required TResult orElse(),
  }) {
    if (addGoal != null) {
      return addGoal(this);
    }
    return orElse();
  }
}

abstract class _AddGoal implements AddGoalEvent {
  const factory _AddGoal(final String goalName, final String amount) =
      _$AddGoalImpl;

  String get goalName;
  String get amount;
  @JsonKey(ignore: true)
  _$$AddGoalImplCopyWith<_$AddGoalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangeDateImplCopyWith<$Res> {
  factory _$$ChangeDateImplCopyWith(
          _$ChangeDateImpl value, $Res Function(_$ChangeDateImpl) then) =
      __$$ChangeDateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime newDate});
}

/// @nodoc
class __$$ChangeDateImplCopyWithImpl<$Res>
    extends _$AddGoalEventCopyWithImpl<$Res, _$ChangeDateImpl>
    implements _$$ChangeDateImplCopyWith<$Res> {
  __$$ChangeDateImplCopyWithImpl(
      _$ChangeDateImpl _value, $Res Function(_$ChangeDateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newDate = null,
  }) {
    return _then(_$ChangeDateImpl(
      null == newDate
          ? _value.newDate
          : newDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$ChangeDateImpl implements _ChangeDate {
  const _$ChangeDateImpl(this.newDate);

  @override
  final DateTime newDate;

  @override
  String toString() {
    return 'AddGoalEvent.changeDate(newDate: $newDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeDateImpl &&
            (identical(other.newDate, newDate) || other.newDate == newDate));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeDateImplCopyWith<_$ChangeDateImpl> get copyWith =>
      __$$ChangeDateImplCopyWithImpl<_$ChangeDateImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String goalName, String amount) addGoal,
    required TResult Function(DateTime newDate) changeDate,
  }) {
    return changeDate(newDate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String goalName, String amount)? addGoal,
    TResult? Function(DateTime newDate)? changeDate,
  }) {
    return changeDate?.call(newDate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String goalName, String amount)? addGoal,
    TResult Function(DateTime newDate)? changeDate,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(newDate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AddGoal value) addGoal,
    required TResult Function(_ChangeDate value) changeDate,
  }) {
    return changeDate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_AddGoal value)? addGoal,
    TResult? Function(_ChangeDate value)? changeDate,
  }) {
    return changeDate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AddGoal value)? addGoal,
    TResult Function(_ChangeDate value)? changeDate,
    required TResult orElse(),
  }) {
    if (changeDate != null) {
      return changeDate(this);
    }
    return orElse();
  }
}

abstract class _ChangeDate implements AddGoalEvent {
  const factory _ChangeDate(final DateTime newDate) = _$ChangeDateImpl;

  DateTime get newDate;
  @JsonKey(ignore: true)
  _$$ChangeDateImplCopyWith<_$ChangeDateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AddGoalState {
  bool get isLoading => throw _privateConstructorUsedError;
  Option<Either<String, Unit>> get addGoalOption =>
      throw _privateConstructorUsedError;
  DateTime? get selectedDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddGoalStateCopyWith<AddGoalState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddGoalStateCopyWith<$Res> {
  factory $AddGoalStateCopyWith(
          AddGoalState value, $Res Function(AddGoalState) then) =
      _$AddGoalStateCopyWithImpl<$Res, AddGoalState>;
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<String, Unit>> addGoalOption,
      DateTime? selectedDate});
}

/// @nodoc
class _$AddGoalStateCopyWithImpl<$Res, $Val extends AddGoalState>
    implements $AddGoalStateCopyWith<$Res> {
  _$AddGoalStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? addGoalOption = null,
    Object? selectedDate = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addGoalOption: null == addGoalOption
          ? _value.addGoalOption
          : addGoalOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, Unit>>,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AddGoalStateImplCopyWith<$Res>
    implements $AddGoalStateCopyWith<$Res> {
  factory _$$AddGoalStateImplCopyWith(
          _$AddGoalStateImpl value, $Res Function(_$AddGoalStateImpl) then) =
      __$$AddGoalStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      Option<Either<String, Unit>> addGoalOption,
      DateTime? selectedDate});
}

/// @nodoc
class __$$AddGoalStateImplCopyWithImpl<$Res>
    extends _$AddGoalStateCopyWithImpl<$Res, _$AddGoalStateImpl>
    implements _$$AddGoalStateImplCopyWith<$Res> {
  __$$AddGoalStateImplCopyWithImpl(
      _$AddGoalStateImpl _value, $Res Function(_$AddGoalStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? addGoalOption = null,
    Object? selectedDate = freezed,
  }) {
    return _then(_$AddGoalStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      addGoalOption: null == addGoalOption
          ? _value.addGoalOption
          : addGoalOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<String, Unit>>,
      selectedDate: freezed == selectedDate
          ? _value.selectedDate
          : selectedDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$AddGoalStateImpl implements _AddGoalState {
  const _$AddGoalStateImpl(
      {required this.isLoading,
      required this.addGoalOption,
      required this.selectedDate});

  @override
  final bool isLoading;
  @override
  final Option<Either<String, Unit>> addGoalOption;
  @override
  final DateTime? selectedDate;

  @override
  String toString() {
    return 'AddGoalState(isLoading: $isLoading, addGoalOption: $addGoalOption, selectedDate: $selectedDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddGoalStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.addGoalOption, addGoalOption) ||
                other.addGoalOption == addGoalOption) &&
            (identical(other.selectedDate, selectedDate) ||
                other.selectedDate == selectedDate));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, addGoalOption, selectedDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddGoalStateImplCopyWith<_$AddGoalStateImpl> get copyWith =>
      __$$AddGoalStateImplCopyWithImpl<_$AddGoalStateImpl>(this, _$identity);
}

abstract class _AddGoalState implements AddGoalState {
  const factory _AddGoalState(
      {required final bool isLoading,
      required final Option<Either<String, Unit>> addGoalOption,
      required final DateTime? selectedDate}) = _$AddGoalStateImpl;

  @override
  bool get isLoading;
  @override
  Option<Either<String, Unit>> get addGoalOption;
  @override
  DateTime? get selectedDate;
  @override
  @JsonKey(ignore: true)
  _$$AddGoalStateImplCopyWith<_$AddGoalStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
