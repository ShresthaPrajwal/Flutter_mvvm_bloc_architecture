// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

LoginRequestModel _$LoginRequestModelFromJson(Map<String, dynamic> json) {
  return _LoginRequestModel.fromJson(json);
}

/// @nodoc
mixin _$LoginRequestModel {
  String get platform => throw _privateConstructorUsedError;
  String get model => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get mpin => throw _privateConstructorUsedError;
  String get pushToken => throw _privateConstructorUsedError;

  /// Serializes this LoginRequestModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginRequestModelCopyWith<LoginRequestModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestModelCopyWith<$Res> {
  factory $LoginRequestModelCopyWith(
    LoginRequestModel value,
    $Res Function(LoginRequestModel) then,
  ) = _$LoginRequestModelCopyWithImpl<$Res, LoginRequestModel>;
  @useResult
  $Res call({
    String platform,
    String model,
    String id,
    String mpin,
    String pushToken,
  });
}

/// @nodoc
class _$LoginRequestModelCopyWithImpl<$Res, $Val extends LoginRequestModel>
    implements $LoginRequestModelCopyWith<$Res> {
  _$LoginRequestModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? model = null,
    Object? id = null,
    Object? mpin = null,
    Object? pushToken = null,
  }) {
    return _then(
      _value.copyWith(
            platform:
                null == platform
                    ? _value.platform
                    : platform // ignore: cast_nullable_to_non_nullable
                        as String,
            model:
                null == model
                    ? _value.model
                    : model // ignore: cast_nullable_to_non_nullable
                        as String,
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
            pushToken:
                null == pushToken
                    ? _value.pushToken
                    : pushToken // ignore: cast_nullable_to_non_nullable
                        as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$LoginRequestModelImplCopyWith<$Res>
    implements $LoginRequestModelCopyWith<$Res> {
  factory _$$LoginRequestModelImplCopyWith(
    _$LoginRequestModelImpl value,
    $Res Function(_$LoginRequestModelImpl) then,
  ) = __$$LoginRequestModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String platform,
    String model,
    String id,
    String mpin,
    String pushToken,
  });
}

/// @nodoc
class __$$LoginRequestModelImplCopyWithImpl<$Res>
    extends _$LoginRequestModelCopyWithImpl<$Res, _$LoginRequestModelImpl>
    implements _$$LoginRequestModelImplCopyWith<$Res> {
  __$$LoginRequestModelImplCopyWithImpl(
    _$LoginRequestModelImpl _value,
    $Res Function(_$LoginRequestModelImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of LoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? platform = null,
    Object? model = null,
    Object? id = null,
    Object? mpin = null,
    Object? pushToken = null,
  }) {
    return _then(
      _$LoginRequestModelImpl(
        platform:
            null == platform
                ? _value.platform
                : platform // ignore: cast_nullable_to_non_nullable
                    as String,
        model:
            null == model
                ? _value.model
                : model // ignore: cast_nullable_to_non_nullable
                    as String,
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
        pushToken:
            null == pushToken
                ? _value.pushToken
                : pushToken // ignore: cast_nullable_to_non_nullable
                    as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginRequestModelImpl implements _LoginRequestModel {
  const _$LoginRequestModelImpl({
    required this.platform,
    required this.model,
    required this.id,
    required this.mpin,
    required this.pushToken,
  });

  factory _$LoginRequestModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginRequestModelImplFromJson(json);

  @override
  final String platform;
  @override
  final String model;
  @override
  final String id;
  @override
  final String mpin;
  @override
  final String pushToken;

  @override
  String toString() {
    return 'LoginRequestModel(platform: $platform, model: $model, id: $id, mpin: $mpin, pushToken: $pushToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestModelImpl &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.model, model) || other.model == model) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.mpin, mpin) || other.mpin == mpin) &&
            (identical(other.pushToken, pushToken) ||
                other.pushToken == pushToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, platform, model, id, mpin, pushToken);

  /// Create a copy of LoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestModelImplCopyWith<_$LoginRequestModelImpl> get copyWith =>
      __$$LoginRequestModelImplCopyWithImpl<_$LoginRequestModelImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginRequestModelImplToJson(this);
  }
}

abstract class _LoginRequestModel implements LoginRequestModel {
  const factory _LoginRequestModel({
    required final String platform,
    required final String model,
    required final String id,
    required final String mpin,
    required final String pushToken,
  }) = _$LoginRequestModelImpl;

  factory _LoginRequestModel.fromJson(Map<String, dynamic> json) =
      _$LoginRequestModelImpl.fromJson;

  @override
  String get platform;
  @override
  String get model;
  @override
  String get id;
  @override
  String get mpin;
  @override
  String get pushToken;

  /// Create a copy of LoginRequestModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestModelImplCopyWith<_$LoginRequestModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
