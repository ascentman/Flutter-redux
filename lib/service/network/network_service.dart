import 'dart:io';

import 'package:built_collection/built_collection.dart';
import 'package:dio/dio.dart';
import 'package:flutter_redux_sigma/service/network/model/country/country_model.dart';
import 'package:flutter_redux_sigma/service/network/model/country_details/country_details_model.dart';
import 'package:flutter_redux_sigma/service/network/network_result.dart';

import '../async_service_initializer.dart';

abstract class INetworkService {
  Future<INetworkResult<BuiltList<CountryModel>>> getListOfCountries();

  Future<INetworkResult<CountryDetailsModel>> getCountryDetails(String name);
}

class NetworkService
    implements INetworkService, IAsyncServiceInitializer<INetworkService> {
  late Dio _dio;
  final String hostUrl;
  final String apiKey;

  NetworkService({
    required this.hostUrl,
    required this.apiKey,
  });

  String get baseUrl => 'https://$hostUrl/';

  @override
  Future<INetworkService> init() async {
    // Simulation of async initialisation
    // Should be removed in real production, just for testing purpose
    await Future.delayed(const Duration(microseconds: 300));
    _dio = Dio();
    _dio.interceptors.add(LogInterceptor(responseBody: true));
    _dio.options.headers['x-rapidapi-host'] = hostUrl;
    _dio.options.headers['x-rapidapi-key'] = apiKey;
    return this;
  }

  @override
  Future<INetworkResult<BuiltList<CountryModel>>> getListOfCountries() async {
    try {
      final response = await _dio.get('${baseUrl}help/countries');
      final list = List<CountryModel>.from(
        response.data.map<dynamic>(
          (dynamic item) => CountryModel.fromJson(item),
        ),
      );
      return Success(list.toBuiltList());
    } catch (e) {
      // TODO(Any): Need implement more predictive handler
      return Error(HttpStatus.internalServerError);
    }
  }

  @override
  Future<INetworkResult<CountryDetailsModel>> getCountryDetails(
      String name) async {
    try {
      final response =
          await _dio.get('${baseUrl}country', queryParameters: {'name': name});
      return Success(CountryDetailsModel.fromJson(response.data[0]));
    } catch (e) {
      // TODO(Any): Need implement more predictive handler
      return Error(HttpStatus.internalServerError);
    }
  }
}
