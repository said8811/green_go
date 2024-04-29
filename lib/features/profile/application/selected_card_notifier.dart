import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SelectedCardNotifier extends StateNotifier<int?> {
  final SharedPreferences _pref;
  SelectedCardNotifier(this._pref) : super(null) {
    getCard();
  }

  final String cardKey = "cardKey";

  void getCard() {
    final card = _pref.getInt(cardKey);
    state = card;
  }

  Future<void> setCard(int id) async {
    await _pref.setInt(cardKey, id);
    getCard();
  }

  Future<void> clear() async {
    await _pref.remove(cardKey);
  }
}
