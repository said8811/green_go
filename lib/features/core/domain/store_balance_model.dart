import 'package:freezed_annotation/freezed_annotation.dart';

part 'store_balance_model.freezed.dart';
part 'store_balance_model.g.dart';

@freezed
class StoreBalanceModel with _$StoreBalanceModel {
  const StoreBalanceModel._();
  const factory StoreBalanceModel({
    required String id,
    required double balance,
  }) = _StoreBalanceModel;

  factory StoreBalanceModel.notFound() =>
      const StoreBalanceModel(id: '', balance: 0.0);

  factory StoreBalanceModel.fromJson(Map<String, dynamic> json) =>
      _$StoreBalanceModelFromJson(json);
}
