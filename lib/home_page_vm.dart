import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapp/home_repository.dart';

final homeProvider = NotifierProvider<HomePageVM, int?>(() {
  return HomePageVM();
});

class HomePageVM extends Notifier<int?> {
  HomeRepository repo = const HomeRepository();

  @override
  int? build() {
    // 상태 초기화 코드 >> build에 작성해두는게 좋음 >> 어차피 한번 실행해야함
    getOne();
    // 상태 null 임시 초기화
    return null;
  }

  Future<void> getOne() async {
    int one = await repo.getOne();
    state = one;
  }
}
