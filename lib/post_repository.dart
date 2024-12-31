import 'package:dio/dio.dart';
import 'package:mockapp/http_util.dart';
import 'package:mockapp/post_list_page_vm.dart';
import 'package:mockapp/post_page_vm.dart';

class PostRepository {
  const PostRepository();

// json 통신시 Map으로 받아옴
  Future<Post> getPost() async {
    Response response = await dio.get("/posts/1");
    // body >> data | response body 받아오기
    Map<String, dynamic> body = response.data;
    return Post.fromMap(body);
  }

  // json List 받아오기
  Future<List<Post2>> getPostList() async {
    Response response = await dio.get("/posts");
    List<dynamic> list = response.data;
    return list.map((e) => Post2.fromMap(e)).toList();
  }
}
