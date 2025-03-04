// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginRequestModelImpl _$$LoginRequestModelImplFromJson(
  Map<String, dynamic> json,
) => _$LoginRequestModelImpl(
  platform: json['platform'] as String,
  model: json['model'] as String,
  id: json['id'] as String,
  mpin: json['mpin'] as String,
  pushToken: json['pushToken'] as String,
);

Map<String, dynamic> _$$LoginRequestModelImplToJson(
  _$LoginRequestModelImpl instance,
) => <String, dynamic>{
  'platform': instance.platform,
  'model': instance.model,
  'id': instance.id,
  'mpin': instance.mpin,
  'pushToken': instance.pushToken,
};
