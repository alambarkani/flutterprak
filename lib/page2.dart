import 'package:aktiv1/api/apiController.dart';
import 'package:aktiv1/widget/listData.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  late Future<Map<String, dynamic>>? _data;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _data = ApiController().getDatas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(children: [
      FutureBuilder<Map<String, dynamic>>(
          future: _data,
          builder: (context2, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError || snapshot.data == null) {
              return Center(
                child: Text(
                  'Error: ${snapshot.error ?? "Data is null"}',
                ),
              );
            } else {
              final posts = snapshot.data!['data']['posts'];
              return SizedBox(
                width: double.infinity,
                height: 600,
                child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context2, index) {
                    final post = posts[index];
                    return listData(
                      img: post['thumbnail'],
                      text: post["description"],
                      context: context,
                    );
                  },
                ),
              );
            }
          })
    ])));
  }
}
