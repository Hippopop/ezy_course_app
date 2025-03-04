import 'dart:developer' show log;

import 'package:dio/dio.dart';
import 'package:ezy_course_app/src/constants/server/api_config.dart';
import 'package:ezy_course_app/src/utilities/scaffold_utils/snackbar_util.dart';

import 'response_wrapper.dart';

class RequestHandler {
  final Dio _dio;
  final String baseURl;
  final String? currentToken;
  final String? currentTokenType;

  RequestHandler({
    this.currentToken,
    this.currentTokenType,
    required this.baseURl,
  }) : _dio = Dio(
          BaseOptions(
            baseUrl: APIConfig.baseURL,
            receiveDataWhenStatusError: true,
            validateStatus: (status) => true,
            headers: {
              "Authorization": "$currentTokenType $currentToken",
              "Content-Type": "application/json",
            },
          ),
        );

  Dio get dio => _dio;
  String get mainUrl => APIConfig.baseURL;

  Future<Response> post(
    String url,
    dynamic params, {
    bool tokenNeeded = true,
    CancelToken? cancelToken,
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) {
    try {
      return dio.post(
        (baseUrl ?? mainUrl) + url,
        data: params,
        queryParameters: queryParams,
        options: options,
      );
    } on DioException catch (error, stacktrace) {
      throw RequestException(
        method: "/POST",
        url: (baseUrl ?? mainUrl) + url,
        data: params,
        error: error,
        msg: errorMsg,
        trace: stacktrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stacktrace) {
      throw RequestException(
        method: "/POST",
        url: (baseUrl ?? mainUrl) + url,
        msg: errorMsg,
        data: params,
        error: error,
        trace: stacktrace,
      );
    }
  }

  Future<Response> get(
    String url, {
    dynamic data,
    bool tokenNeeded = true,
    CancelToken? cancelToken,
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) {
    try {
      return dio.get(
        (baseUrl ?? mainUrl) + url,
        options: options,
        queryParameters: queryParams,
      );
    } on DioException catch (error, stacktrace) {
      throw RequestException(
        method: "/GET",
        url: (baseUrl ?? mainUrl) + url,
        error: error,
        msg: errorMsg,
        trace: stacktrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stacktrace) {
      throw RequestException(
        method: "/GET",
        url: (baseUrl ?? mainUrl) + url,
        msg: errorMsg,
        error: error,
        trace: stacktrace,
      );
    }
  }

  Future<Response> put(
    String url,
    Map<String, dynamic> params, {
    bool tokenNeeded = true,
    CancelToken? cancelToken,
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) {
    try {
      return dio.put(
        (baseUrl ?? mainUrl) + url,
        data: params,
        queryParameters: queryParams,
        options: options,
      );
    } on DioException catch (error, stacktrace) {
      throw RequestException(
        method: "/PUT",
        url: (baseUrl ?? mainUrl) + url,
        data: params,
        error: error,
        msg: errorMsg,
        trace: stacktrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stacktrace) {
      throw RequestException(
        method: "/PUT",
        url: (baseUrl ?? mainUrl) + url,
        msg: errorMsg,
        data: params,
        error: error,
        trace: stacktrace,
      );
    }
  }

  Future<Response> delete(
    String url,
    Map<String, dynamic> params, {
    bool tokenNeeded = true,
    CancelToken? cancelToken,
    String? errorMsg,
    String? baseUrl,
    Options? options,
    Map<String, dynamic>? queryParams,
  }) {
    try {
      return dio.delete(
        (baseUrl ?? mainUrl) + url,
        data: params,
        queryParameters: queryParams,
        options: options,
      );
    } on DioException catch (error, stacktrace) {
      throw RequestException(
        method: "/DELETE",
        url: (baseUrl ?? mainUrl) + url,
        data: params,
        error: error,
        msg: errorMsg,
        trace: stacktrace,
        res: error.response,
        statusCode: error.response?.statusCode,
      );
    } catch (error, stacktrace) {
      throw RequestException(
        method: "/DELETE",
        url: (baseUrl ?? mainUrl) + url,
        msg: errorMsg,
        data: params,
        error: error,
        trace: stacktrace,
      );
    }
  }
}

/// NOTE: JUST FOR TESTING & HANDLING RESPONSE!
typedef EmptyType = String;
// ignore: constant_identifier_names
const EMPTY = "EMPTY";

class RequestException implements Exception {
  String url;
  String? msg;
  Object error;
  String method;
  Response? res;
  int? statusCode;
  StackTrace trace;
  dynamic data;

  RequestException({
    this.msg,
    this.res,
    this.data,
    this.statusCode,
    required this.url,
    required this.method,
    required this.error,
    required this.trace,
  }) {
    final details = "\x1B[35m/*\n"
        "method: ($method)\n"
        "url: ($url)\n"
        "statusCode: ${statusCode ?? 0}\n"
        "errorMsg: \"${msg ?? ''}\"\n"
        "data: ${data ?? ''}\n"
        "res: ${res ?? ''}\n"
        "*/\x1B[0m\n";

    log(details, name: "#RequestException", error: error, stackTrace: trace);
  }

  handleError({required String defaultMessage}) async {
    try {
      if (res != null) {
        final pursedData = ResponseWrapper<EmptyType>.fromMap(
          rawResponse: res!,
          purserFunction: (rawData) => EMPTY,
        );
        if (pursedData.isSuccess) {
          /* Means Purser caused the error! */
          showToastError(
            pursedData.error ?? pursedData.msg,
          );
        } else {
          /* Means Server didn't sent valid data! */
          showToastError(defaultMessage);
        }
      }
    } catch (e) {
      // showToastError(defaultMessage);
      log(
        '# Response is not a [Map<String, dynamic>]! instead ${res?.data.runtimeType}',
        error: e,
      );
    }
  }
}
