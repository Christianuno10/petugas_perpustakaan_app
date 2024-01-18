import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:peminjam_perpustakaan_app/app/modules/add_peminjaman/controllers/add_peminjaman_controller.dart';
import 'package:peminjam_perpustakaan_app/app/modules/book/controllers/book_controller.dart';


class BookView extends GetView<BookController> {
  const BookView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('PeminjamanView'),
          centerTitle: true,
        ),
        body: controller.obx((state) => ListView.separated(
          itemCount: state!.length,
          itemBuilder: (ctx, index) {
            return ListTile(
              title: Text("${state[index]?.judul}"),
              subtitle: Text("${state[index].penulis}"),
              trailing: Text("${state[index].kategori}"),
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return const Divider();
          },
        ))
    );
  }
}