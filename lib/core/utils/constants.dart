import 'package:flutter_dotenv/flutter_dotenv.dart';

const kHPadding = 16.0;
const kIsOnBoardingSeen = 'isOnBoardingSeen';
const kUserData = 'userData';
// const kWeakPasswordK = 'weak-password';
// const kWeakPasswordV = 'The password provided is too weak.';
final kFIREBASEANDROIDAPIKEY = dotenv.env['FIREBASE_ANDROID_API_KEY'];
final kFIREBASEIOSAPIKEY = dotenv.env['FIREBASE_IOS_API_KEY'];
final kFIREBASEWEBAPIKEY = dotenv.env['FIREBASE_WEB_API_KEY'];

// const kEmailAlreadyInUseK = 'email-already-in-use';
// const kEmailAlreadyInUseV = 'The account already exists for that email.';

// const kInvalidEmailK = 'invalid-email';
// const kInvalidEmailV = 'The email address is badly formatted';

// const kUserNotFoundK = 'user-not-found';
// const kUserNotFoundV = 'No user found for that email.';

// const kAccountExistsWithDifferentCredentialK =
// 'account-exists-with-different-credential';
// const kAccountExistsWithDifferentCredentialV =
//     'An account already exists with a different credential.';

const kPasswordOrEmailAreIncorrect = 'Password or Email are Incorrect';

// const kWrongPasswordK = 'wrong-password';
// const kWrongPasswordV = 'The password is incorrect.';

// const kNetworkRequestFailedK = 'network-request-failed';
// const kNetworkRequestFailedV = 'The network request failed. Please try again.';

// const kUnknownErrorK = 'unknown-error';
const kUnknownError = 'An unknown error occurred.';

// const kUnexpectedErrorK = 'unexpected-error';
const kUnexpectedError = 'An unexpected error occurred. Please try again.';

const kUnexpectedErrorK = 'unexpected-error';
const kUnknownErrorK = 'unknown-error';
const kWeakPasswordK = 'weak-password';
const kEmailAlreadyInUseK = 'email-already-in-use';
const kInvalidEmailK = 'invalid-email';
const kUserNotFoundK = 'user-not-found';
const kAccountExistsWithDifferentCredentialK =
    'account-exists-with-different-credential';
const kWrongPasswordK = 'wrong-password';
const kNetworkRequestFailedK = 'network-request-failed';
const kExpiredActionCodeK = 'expired-action-code';
const kInvalidActionCodeK = 'invalid-action-code';
const kUserDisabledK = 'user-disabled';
const kOperationNotAllowedK = 'operation-not-allowed';
const kInvalidCredentialK = 'invalid-credential';
const kInvalidVerificationCodeK = 'invalid-verification-code';
const kInvalidVerificationIdK = 'invalid-verification-id';
const kCustomTokenMismatchK = 'custom-token-mismatch';
const kInvalidCustomTokenK = 'invalid-custom-token';
const kProcessAbortedK = 'process-aborted';
