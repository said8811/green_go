import 'dart:io';

// platform of context
final kPlatform = Platform.isIOS ? 'iOS' : 'Android';
// default animation duration
const kAnimationDuration = Duration(milliseconds: 200);

const kIsProd = bool.fromEnvironment('dart.vm.product');

const kAppTitle = 'Green Go';

const kTokenKey = 'token';

const kCDNUrl = 'https://backend.green-go.uz/public';

const kInstallmentPercent = 1.44;
const kCashbackPercent = 0.02;
const kProductCardHeight = 396.0;

// const kTempUserId = kIsProd ? null : 'a5ffb1ce-3d52-4d4b-bbbe-08f2fd257c19';
