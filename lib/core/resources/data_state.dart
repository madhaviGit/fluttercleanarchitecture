import 'package:dio/dio.dart';

abstract class DataState<T> {
  const DataState({this.data, this.error});
  final T? data;
  final DioException? error;
}

class DataSuccess<T> extends DataState<T> {
  const DataSuccess(T data) : super(data: data);
}

class DataFailed<T> extends DataState<T> {
  const DataFailed(DioException error) : super(error: error);
}

class DataLoading<T> extends DataState<T> {
  const DataLoading() : super();
}

class DataInitial<T> extends DataState<T> {
  const DataInitial() : super();
}
