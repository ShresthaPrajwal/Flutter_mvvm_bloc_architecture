// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$LoginEvent {
  String get id => throw _privateConstructorUsedError;
  String get mpin => throw _privateConstructorUsedError;
  String get platform => throw _privateConstructorUsedError;
  String get pushToken => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String id,
      String mpin,
      String platform,
      String pushToken,
      String model,
    )
    loginButtonPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String id,
      String mpin,
      String platform,
      String pushToken,
      String model,
    )?
    loginButtonPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String id,
      String mpin,
      String platform,
      String pushToken,
      String model,
    )?
    loginButtonPressed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginEventCopyWith<LoginEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginEventCopyWith<$Res> {
  factory $LoginEventCopyWith(
    LoginEvent value,
    $Res Function(LoginEvent) then,
  ) = _$LoginEventCopyWithImpl<$Res, LoginEvent>;
  @useResult
  $Res call({
    String id,
    String mpin,
    String platform,
    String pushToken,
    String model,
  });
}

/// @nodoc
class _$LoginEventCopyWithImpl<$Res, $Val extends LoginEvent>
    implements $LoginEventCopyWith<$Res> {
  _$LoginEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mpin = null,
    Object? platform = null,
    Object? pushToken = null,
    Object? model = null,
  }) {
    return _then(
      _value.copyWith(
            id:
                null == id
                    ? _value.id
                    : id // ignore: cast_nullable_to_non_nullable
                        as String,
            mpin:
                null == mpin
                    ? _value.mpin
                    : mpin // ignore: cast_nullable_to_non_nullable
                        as String,
            platform:
                null == platform
                    ? _value.platform
                    : platform // ignore: cast_nullable_to_non_nullable
                        as String,
            pushToken:
                null == pushToken
                    ? _value.pushToken
                    : pushToken // ignore: cast_nullable_to_non_nullable
                        as String,
            model:
                null == model
                    ? _value.model
                    : model // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginButtonPressedImplCopyWith<$Res>
    implements $LoginEventCopyWith<$Res> {
  factory _$$LoginButtonPressedImplCopyWith(
    _$LoginButtonPressedImpl value,
    $Res Function(_$LoginButtonPressedImpl) then,
  ) = __$$LoginButtonPressedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String id,
    String mpin,
    String platform,
    String pushToken,
    String model,
  });
}

/// @nodoc
class __$$LoginButtonPressedImplCopyWithImpl<$Res>
    extends _$LoginEventCopyWithImpl<$Res, _$LoginButtonPressedImpl>
    implements _$$LoginButtonPressedImplCopyWith<$Res> {
  __$$LoginButtonPressedImplCopyWithImpl(
    _$LoginButtonPressedImpl _value,
    $Res Function(_$LoginButtonPressedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? mpin = null,
    Object? platform = null,
    Object? pushToken = null,
    Object? model = null,
  }) {
    return _then(
      _$LoginButtonPressedImpl(
        id:
            null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                    as String,
        mpin:
            null == mpin
                ? _value.mpin
                : mpin // ignore: cast_nullable_to_non_nullable
                    as String,
        platform:
            null == platform
                ? _value.platform
                : platform // ignore: cast_nullable_to_non_nullable
                    as String,
        pushToken:
            null == pushToken
                ? _value.pushToken
                : pushToken // ignore: cast_nullable_to_non_nullable
                    as String,
        model:
            null == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc

class _$LoginButtonPressedImpl implements LoginButtonPressed {
  const _$LoginButtonPressedImpl({
    required this.id,
    required this.mpin,
    required this.platform,
    required this.pushToken,
    required this.model,
  });

  @override
  final String id;
  @override
  final String mpin;
  @override
  final String platform;
  @override
  final String pushToken;
  @override
  final String model;

  @override
  String toString() {
    return 'LoginEvent.loginButtonPressed(id: $id, mpin: $mpin, platform: $platform, pushToken: $pushToken, model: $model)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginButtonPressedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mpin, mpin) || other.mpin == mpin) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.pushToken, pushToken) ||
                other.pushToken == pushToken) &&
            (identical(other.model, model) || other.model == model));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, mpin, platform, pushToken, model);

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginButtonPressedImplCopyWith<_$LoginButtonPressedImpl> get copyWith =>
      __$$LoginButtonPressedImplCopyWithImpl<_$LoginButtonPressedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
      String id,
      String mpin,
      String platform,
      String pushToken,
      String model,
    )
    loginButtonPressed,
  }) {
    return loginButtonPressed(id, mpin, platform, pushToken, model);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
      String id,
      String mpin,
      String platform,
      String pushToken,
      String model,
    )?
    loginButtonPressed,
  }) {
    return loginButtonPressed?.call(id, mpin, platform, pushToken, model);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
      String id,
      String mpin,
      String platform,
      String pushToken,
      String model,
    )?
    loginButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(id, mpin, platform, pushToken, model);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginButtonPressed value) loginButtonPressed,
  }) {
    return loginButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginButtonPressed value)? loginButtonPressed,
  }) {
    return loginButtonPressed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginButtonPressed value)? loginButtonPressed,
    required TResult orElse(),
  }) {
    if (loginButtonPressed != null) {
      return loginButtonPressed(this);
    }
    return orElse();
  }
}

abstract class LoginButtonPressed implements LoginEvent {
  const factory LoginButtonPressed({
    required final String id,
    required final String mpin,
    required final String platform,
    required final String pushToken,
    required final String model,
  }) = _$LoginButtonPressedImpl;

  @override
  String get id;
  @override
  String get mpin;
  @override
  String get platform;
  @override
  String get pushToken;
  @override
  String get model;

  /// Create a copy of LoginEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginButtonPressedImplCopyWith<_$LoginButtonPressedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
