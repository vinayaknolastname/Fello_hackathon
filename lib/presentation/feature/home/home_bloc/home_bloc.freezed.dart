// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllGoals,
    required TResult Function() getUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllGoals,
    TResult? Function()? getUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllGoals,
    TResult Function()? getUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllGoals value) getAllGoals,
    required TResult Function(_GetUserDetails value) getUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllGoals value)? getAllGoals,
    TResult? Function(_GetUserDetails value)? getUserDetails,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllGoals value)? getAllGoals,
    TResult Function(_GetUserDetails value)? getUserDetails,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$GetAllGoalsImplCopyWith<$Res> {
  factory _$$GetAllGoalsImplCopyWith(
          _$GetAllGoalsImpl value, $Res Function(_$GetAllGoalsImpl) then) =
      __$$GetAllGoalsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetAllGoalsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetAllGoalsImpl>
    implements _$$GetAllGoalsImplCopyWith<$Res> {
  __$$GetAllGoalsImplCopyWithImpl(
      _$GetAllGoalsImpl _value, $Res Function(_$GetAllGoalsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetAllGoalsImpl implements _GetAllGoals {
  const _$GetAllGoalsImpl();

  @override
  String toString() {
    return 'HomeEvent.getAllGoals()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetAllGoalsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllGoals,
    required TResult Function() getUserDetails,
  }) {
    return getAllGoals();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllGoals,
    TResult? Function()? getUserDetails,
  }) {
    return getAllGoals?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllGoals,
    TResult Function()? getUserDetails,
    required TResult orElse(),
  }) {
    if (getAllGoals != null) {
      return getAllGoals();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllGoals value) getAllGoals,
    required TResult Function(_GetUserDetails value) getUserDetails,
  }) {
    return getAllGoals(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllGoals value)? getAllGoals,
    TResult? Function(_GetUserDetails value)? getUserDetails,
  }) {
    return getAllGoals?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllGoals value)? getAllGoals,
    TResult Function(_GetUserDetails value)? getUserDetails,
    required TResult orElse(),
  }) {
    if (getAllGoals != null) {
      return getAllGoals(this);
    }
    return orElse();
  }
}

abstract class _GetAllGoals implements HomeEvent {
  const factory _GetAllGoals() = _$GetAllGoalsImpl;
}

/// @nodoc
abstract class _$$GetUserDetailsImplCopyWith<$Res> {
  factory _$$GetUserDetailsImplCopyWith(_$GetUserDetailsImpl value,
          $Res Function(_$GetUserDetailsImpl) then) =
      __$$GetUserDetailsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUserDetailsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$GetUserDetailsImpl>
    implements _$$GetUserDetailsImplCopyWith<$Res> {
  __$$GetUserDetailsImplCopyWithImpl(
      _$GetUserDetailsImpl _value, $Res Function(_$GetUserDetailsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetUserDetailsImpl implements _GetUserDetails {
  const _$GetUserDetailsImpl();

  @override
  String toString() {
    return 'HomeEvent.getUserDetails()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUserDetailsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllGoals,
    required TResult Function() getUserDetails,
  }) {
    return getUserDetails();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllGoals,
    TResult? Function()? getUserDetails,
  }) {
    return getUserDetails?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllGoals,
    TResult Function()? getUserDetails,
    required TResult orElse(),
  }) {
    if (getUserDetails != null) {
      return getUserDetails();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetAllGoals value) getAllGoals,
    required TResult Function(_GetUserDetails value) getUserDetails,
  }) {
    return getUserDetails(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetAllGoals value)? getAllGoals,
    TResult? Function(_GetUserDetails value)? getUserDetails,
  }) {
    return getUserDetails?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetAllGoals value)? getAllGoals,
    TResult Function(_GetUserDetails value)? getUserDetails,
    required TResult orElse(),
  }) {
    if (getUserDetails != null) {
      return getUserDetails(this);
    }
    return orElse();
  }
}

abstract class _GetUserDetails implements HomeEvent {
  const factory _GetUserDetails() = _$GetUserDetailsImpl;
}

/// @nodoc
mixin _$HomeState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Goal> get goalList => throw _privateConstructorUsedError;
  String get greeting => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  double get totalAmount => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Goal> goalList,
      String greeting,
      String userName,
      double totalAmount});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? goalList = null,
    Object? greeting = null,
    Object? userName = null,
    Object? totalAmount = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      goalList: null == goalList
          ? _value.goalList
          : goalList // ignore: cast_nullable_to_non_nullable
              as List<Goal>,
      greeting: null == greeting
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HomeStateImplCopyWith<$Res>
    implements $HomeStateCopyWith<$Res> {
  factory _$$HomeStateImplCopyWith(
          _$HomeStateImpl value, $Res Function(_$HomeStateImpl) then) =
      __$$HomeStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Goal> goalList,
      String greeting,
      String userName,
      double totalAmount});
}

/// @nodoc
class __$$HomeStateImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateImpl>
    implements _$$HomeStateImplCopyWith<$Res> {
  __$$HomeStateImplCopyWithImpl(
      _$HomeStateImpl _value, $Res Function(_$HomeStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? goalList = null,
    Object? greeting = null,
    Object? userName = null,
    Object? totalAmount = null,
  }) {
    return _then(_$HomeStateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      goalList: null == goalList
          ? _value._goalList
          : goalList // ignore: cast_nullable_to_non_nullable
              as List<Goal>,
      greeting: null == greeting
          ? _value.greeting
          : greeting // ignore: cast_nullable_to_non_nullable
              as String,
      userName: null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      totalAmount: null == totalAmount
          ? _value.totalAmount
          : totalAmount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$HomeStateImpl implements _HomeState {
  const _$HomeStateImpl(
      {required this.isLoading,
      required final List<Goal> goalList,
      required this.greeting,
      required this.userName,
      required this.totalAmount})
      : _goalList = goalList;

  @override
  final bool isLoading;
  final List<Goal> _goalList;
  @override
  List<Goal> get goalList {
    if (_goalList is EqualUnmodifiableListView) return _goalList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_goalList);
  }

  @override
  final String greeting;
  @override
  final String userName;
  @override
  final double totalAmount;

  @override
  String toString() {
    return 'HomeState(isLoading: $isLoading, goalList: $goalList, greeting: $greeting, userName: $userName, totalAmount: $totalAmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality().equals(other._goalList, _goalList) &&
            (identical(other.greeting, greeting) ||
                other.greeting == greeting) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.totalAmount, totalAmount) ||
                other.totalAmount == totalAmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_goalList),
      greeting,
      userName,
      totalAmount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      __$$HomeStateImplCopyWithImpl<_$HomeStateImpl>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  const factory _HomeState(
      {required final bool isLoading,
      required final List<Goal> goalList,
      required final String greeting,
      required final String userName,
      required final double totalAmount}) = _$HomeStateImpl;

  @override
  bool get isLoading;
  @override
  List<Goal> get goalList;
  @override
  String get greeting;
  @override
  String get userName;
  @override
  double get totalAmount;
  @override
  @JsonKey(ignore: true)
  _$$HomeStateImplCopyWith<_$HomeStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
