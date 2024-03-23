// import 'package:flutter/material.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// import '../widgets/personal_details_form.dart';
// import '/core/domain/failure.dart';
// import '/core/infrastructure/helpers/helpers.dart';
// import '/localization/l10n/l10n.dart';
// import '/auth/presentation/widgets/personal_details_form.dart';
// import '/auth/shared/providers.dart';
// import '/core/presentation/widgets/common_ui.dart';

// class RegisterPage extends HookConsumerWidget {
//   const RegisterPage({super.key});

//   static const _pages = [
//     PersonalDetailsForm(),
//   ];

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(registerNotifierProvider);

//     ref.listen(registerNotifierProvider, (previous, next) {
//       if (next.failure != null) {
//         showErrorDialog(context, failure: next.failure);
//       }
//       if (next.user != null) {}
//     });

//     final activeIndex = useState(0);
//     return Scaffold(
//       resizeToAvoidBottomInset: false,
//       body: IndexedStack(
//         index: activeIndex.value,
//         children: _pages,
//       ),
//       bottomNavigationBar: ComponentsFactory.makeDefaultBottomBtn(
//         loading: state.isLoading,
//         onPress: () {
//           if (!state.agreeToTerms) {
//             showErrorDialog(
//               context,
//               failure: const Failure.local('Вам необходимо принять условия'),
//             );
//             return;
//           }
//           if (!ref.read(registerNotifierProvider.notifier).isValid()) {
//             showErrorDialog(
//               context,
//               failure: Failure.local(context.l10n.formError),
//             );
//             return;
//           }

//           ref.read(registerNotifierProvider.notifier).register(
//                 phone: ref.watch(signInFormNotifierProvider).phone,
//                 code: ref.watch(signInFormNotifierProvider).code,
//               );
//         },
//       ),
//     );
//   }
// }
