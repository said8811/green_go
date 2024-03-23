import '../../core/shared/providers.dart';
import '../application/auth_notifier.dart';
import '../application/register_notifier.dart';
import '../application/sign_in_notifier.dart';
import '../infrastructure/auth_local_service.dart';
import '../infrastructure/auth_remote_service.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../infrastructure/auth_repository.dart';

final authLocalServiceProvider = Provider(
  (ref) => AuthLocalService(ref.watch(sharedPrefsProvider)),
);

final authRemoteServiceProvider = Provider(
  (ref) => AuthRemoteService(
    ref.watch(dioProvider),
    ref.watch(deviceDetailsProvider),
    ref.watch(sharedPrefsProvider),
  ),
);

final authRepositoryProvider = Provider(
  (ref) => AuthRepository(
    ref.watch(authLocalServiceProvider),
    ref.watch(authRemoteServiceProvider),
  ),
);

final authNotifierProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(
    ref.watch(authRepositoryProvider),
  ),
);

final signInFormNotifierProvider =
    StateNotifierProvider.autoDispose<SignInFormNotifier, SignInFormState>(
  (ref) => SignInFormNotifier(
    ref.watch(authRepositoryProvider),
  ),
);

final registerNotifierProvider =
    StateNotifierProvider.autoDispose<RegisterNotifier, RegisterState>(
  (ref) => RegisterNotifier(
    ref.watch(authRepositoryProvider),
  ),
);
