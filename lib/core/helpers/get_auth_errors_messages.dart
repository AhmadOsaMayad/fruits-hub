import 'package:flutter/widgets.dart';
import 'package:fruit_hub/core/utils/constants.dart';
import 'package:fruit_hub/generated/l10n.dart';

String getAuthErrorMessage(BuildContext context, String code) {
  switch (code) {
    case kWeakPasswordV:
      return S.of(context).tooWeakPassword;
    case kEmailAlreadyInUseV:
      return S.of(context).emailAlreadyInUse;
    case kUnexpectedErrorV:
      return S.of(context).anUnexpectedError;
    case kInvalidEmailV:
      return S.of(context).invalidEmail;
    case kNetworkRequestFailedV:
      return S.of(context).networkRequestFailed;
    case kUserNotFoundV:
      return S.of(context).passwordOrEmailAreIncorrect;
    case kWrongPasswordV:
      return S.of(context).passwordOrEmailAreIncorrect;
    default:
      return code; //S.of(context).anUnknownError;
  }
}
