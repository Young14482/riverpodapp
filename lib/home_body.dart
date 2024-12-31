import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mockapp/home_page_vm.dart';
import 'package:mockapp/home_page_vm2.dart';

class HomeBody extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    int? one = ref.watch(homeProvider);
    List<int>? list = ref.watch(home2Provider);

    if (one == null || list == null) {
      return Center(child: CircularProgressIndicator());
    } else {
      return Column(
        children: [
          Text("$one", style: TextStyle(fontSize: 50)),
          Expanded(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return ListTile(
                    leading: Text(("${index + 1}")),
                    title: Text("${list[index]}"));
              },
            ),
          ),
        ],
      );
    }
  }
}
