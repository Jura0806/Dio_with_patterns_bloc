import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patterns_bloc/models/post_model.dart';

import 'item_of_post.dart';

Widget viewOfHome(List<Post> items, bool isLoading){
  return Stack(
    children: [
      ListView.builder(
        itemCount: items.length,
        itemBuilder: (ctx, i) {
          return itemOfList(ctx, items[i]);
        },
      ),
      isLoading ? Center(child: CircularProgressIndicator(),)
          :SizedBox.shrink()
    ],
  );
}