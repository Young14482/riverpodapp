import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapp/home_repository.dart';

final home2Provider = NotifierProvider<Home2VM, List<int>?>(() {
  return Home2VM();
});

class Home2VM extends Notifier<List<int>?> {
  HomeRepository repo = const HomeRepository();

  @override
  List<int>? build() {
    getList();
    return null;
  }

  Future<void> getList() async {
    List<int> list = await repo.getList();
    state = list;
  }
}
