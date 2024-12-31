import 'package:flutter/material.dart';
import 'package:mockapp/home_repository.dart';

class FutureBody extends StatelessWidget {
  HomeRepository repo = const HomeRepository();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // future >> Future를 반환하는 값넣음
        FutureBuilder(
          future: repo.getOne(),
          // snapshot == 반환값
          builder: (context, snapshot) {
            // 반환값이 있으면 값 반환
            if (snapshot.hasData) {
              return Text("1", style: TextStyle(fontSize: 50));
            } else {
              // 없으면 기다리기
              return CircularProgressIndicator();
            }
          },
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (context, index) {
              return ListTile(
                  leading: Text(("${index + 1}")), title: Text("내용"));
            },
          ),
        ),
      ],
    );
  }
}
