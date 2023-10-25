import 'dart:io';

import 'package:answer_it/common/data_resource/data_failure.dart';
import 'package:firebase_core/firebase_core.dart';

class ErrorHandler {
  DataFailure traceErrorException(dynamic error) {
    if (error is FirebaseException) {
      return handleFirebaseError(error);
    } else {
      return DataFailure('000', "else in traceErrorException", error);
    }
  }

  DataFailure handleFirebaseError(FirebaseException error) {
    if (error is SocketException) {
      return DataFailure('900', error.message, error);
    }
    return DataFailure(error.code, error.message, error);
  }
}
