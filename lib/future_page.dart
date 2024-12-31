import 'package:flutter/material.dart';

import 'future_body.dart';

// reiverpod 없이 데이터 가져오기
class FuturePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBody(),
    );
  }
}
