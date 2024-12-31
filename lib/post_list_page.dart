import 'package:flutter/material.dart';
import 'package:mockapp/post_list_body.dart';

class PostListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PostListBody(),
      floatingActionButton: FloatingActionButton(
        child: Text("삭제"),
        onPressed: () {},
      ),
    );
  }
}
