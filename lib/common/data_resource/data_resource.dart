import 'package:answer_it/common/data_resource/data_failure.dart';

class DataResource<In> {
  final ResourceState resourceState;
  final In? data;
  final DataFailure? failure;

  DataResource(this.resourceState, this.data, this.failure);

  const DataResource._(this.resourceState, this.data, this.failure);

  const DataResource.initial({In? data})
      : this._(ResourceState.initial, data, null);

  const DataResource.loading() : this._(ResourceState.loading, null, null);

  const DataResource.success(In? data)
      : this._(ResourceState.success, data, null);

  const DataResource.error(DataFailure? failure)
      : this._(ResourceState.error, null, failure);

  // DataResource.dirty(DataResource resource)
  //     : this._(resource.resourceState, resource.data, resource.failure);

  // DataResource<In> asLoading() => const DataResource.loading();

  bool isLoading() => resourceState == ResourceState.loading;

  bool isInitialOrLoading() => isInitial() || isLoading();

  bool isInitial() => resourceState == ResourceState.initial;

  bool isSuccess() => resourceState == ResourceState.success;

  bool isError() => resourceState == ResourceState.error;

  bool isDiff(DataResource<In> other) => resourceState != other.resourceState;
}

enum ResourceState { initial, loading, success, error }
