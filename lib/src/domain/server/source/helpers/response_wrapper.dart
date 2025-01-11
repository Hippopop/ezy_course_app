import 'dart:developer';
import 'package:dio/dio.dart';

typedef RawToDataPurse<T> = T Function(dynamic json);

class ResponseWrapper<R> {
  String msg;
  int? status;
  String? error;
  Response rawResponse;

  ResponseWrapper({
    this.status,
    this.data,
    this.error,
    required this.msg,
    required this.rawResponse,
  });

  /* Actual data pursing : Start*/
  final R? data;
  dynamic get rawData => rawResponse.data;
  bool get isSuccess => data != null && error == null;
  bool get isError => !(isSuccess);

  factory ResponseWrapper.fromMap({
    bool print = false,
    required Response rawResponse,
    required RawToDataPurse<R> purserFunction,
  }) {
    if (print) log(rawResponse.data.toString());
    try {
      return ResponseWrapper(
        rawResponse: rawResponse,
        status: rawResponse.statusCode,
        msg: "API action performed successfully!",
        data: purserFunction(rawResponse.data),
      );
    } catch (err, stacktrace) {
      log(
        error: err,
        stackTrace: stacktrace,
        "### ResponseWrapper Error(${rawResponse.statusCode} || ${rawResponse.realUri}) ###\nResponse: ${rawResponse.data}",
      );

      return ResponseWrapper(
        rawResponse: rawResponse,
        status: rawResponse.statusCode,
        msg: "API action failed!",
        error: ((rawResponse.data is Map)
                ? rawResponse.data['msg']
                : "Got unknown data format from response!") ??
            err.toString(),
      );
    }
  }
  /* Actual data pursing : End*/

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'msg': msg,
      'error': error,
      'status': status,
      'rawResponse': rawResponse,
    };
  }

  @override
  String toString() {
    return 'ResponseWrapper(\nstatus: $status,\n msg: $msg,\n rawData: ${rawResponse.data},\n error: $error,\n)';
  }
}
