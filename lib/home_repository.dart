// SRP: 데이터를 가져오는 곳 (휴대폰 디바이스(파일), 휴대폰 DB, Firebase(외부서버), 내서버, 공공데이터서버)
class HomeRepository {
  const HomeRepository();

  // async await 사용 >> Future<리턴타입> 지정
  Future<List<int>> getList() async {
    List<int> response = await Future.delayed(
      // 3초 후에 실행됨!!
      Duration(seconds: 3),
      () {
        return [11, 22, 33, 44];
      },
    );

    return response;
  }

  Future<int> getOne() async {
    int response = await Future.delayed(
      // 3초 후에 실행됨!!
      Duration(seconds: 3),
      () {
        return 5;
      },
    );

    return response;
  }
}
