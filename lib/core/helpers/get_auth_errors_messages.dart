import 'package:flutter/widgets.dart';
import 'package:fruit_hub/core/utils/error_codes.dart';
import 'package:fruit_hub/generated/l10n.dart';

String getErrorMessage(BuildContext context, String code) {
  switch (code) {
    case kWeakPasswordK:
      return S.of(context).tooWeakPassword;
    case kEmailAlreadyInUseK:
      return S.of(context).emailAlreadyInUse;
    case kInvalidEmailK:
      return S.of(context).invalidEmail;
    case kUserNotFoundK:
      return S.of(context).userNotFound;
    case kAccountExistsWithDifferentCredentialK:
      return S.of(context).accountExistsWithDifferentCredential;
    case kWrongPasswordK:
      return S.of(context).wrongPassword;
    case kNetworkRequestFailedK:
      return S.of(context).networkRequestFailed;
    case kExpiredActionCodeK:
      return S.of(context).expiredActionCode;
    case kInvalidActionCodeK:
      return S.of(context).invalidActionCode;
    case kUserDisabledK:
      return S.of(context).userDisabled;
    case kOperationNotAllowedK:
      return S.of(context).operationNotAllowed;
    case kInvalidCredentialK:
      return S.of(context).invalidCredential;
    case kInvalidVerificationCodeK:
      return S.of(context).invalidVerificationCode;
    case kInvalidVerificationIdK:
      return S.of(context).invalidVerificationId;
    case kCustomTokenMismatchK:
      return S.of(context).customTokenMismatch;
    case kInvalidCustomTokenK:
      return S.of(context).invalidCustomToken;
    case kProcessAbortedK:
      return S.of(context).processAborted;
    case kUnexpectedErrorK:
      return S.of(context).anUnexpectedError;
    case kUnknownErrorK:
      return S.of(context).anUnknownError;
    default:
      return S.of(context).anUnexpectedError;
  }
}
