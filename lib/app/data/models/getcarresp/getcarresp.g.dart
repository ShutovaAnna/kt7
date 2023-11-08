// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'getcarresp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$GetCarRespImpl _$$GetCarRespImplFromJson(Map<String, dynamic> json) =>
    _$GetCarRespImpl(
      (json['cars'] as List<dynamic>)
          .map((e) => Car.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$GetCarRespImplToJson(_$GetCarRespImpl instance) =>
    <String, dynamic>{
      'cars': instance.cars,
    };
