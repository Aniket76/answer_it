import 'package:answer_it/common/data_resource/data_resource.dart';
import 'package:answer_it/common/data_resource/error_handler.dart';
import 'package:flutter/foundation.dart';

abstract class DefaultUseCase<In, Out> {
  Future<Out> run(In input);

  Future<DataResource<Out>> invoke({
    ValueChanged<DataResource<Out>>? callback,
    required In input,
    Duration timeout = const Duration(seconds: 120),
  }) async {
    try {
      var result = await run(input).timeout(timeout);
      callback?.call(DataResource.success(result));
      return DataResource.success(result);
    } catch (error) {
      var tracedError = ErrorHandler().traceErrorException(error);
      callback?.call(DataResource.error(tracedError));
      return DataResource.error(tracedError);
    }
  }
}
