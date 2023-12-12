import 'package:aktiv1/api/ApiController.dart';
import 'package:aktiv1/widget/listData.dart';
import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2>{

  Future<List<dynamic>>? _data;

  @override
  void initState() {
    // TODO: implement initState
    _data = ApiController().getDatas();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            FutureBuilder<List<dynamic>>(future: _data, builder: (context2, snapshot){
              if(snapshot.hasData){
                return SizedBox(
                  width: double.infinity,
                  height: 500,
                  child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context2, index) {
                        return listData(
                          img: 'https://saiyaapi.site/${snapshot.data![index]["photo"]}', 
                          text: snapshot.data![index]["desc"],
                          context: context,
                        );
                      },
                    ),
                );
              }else{
                return Center(
                  child: CircularProgressIndicator(),
                );
              }
            })
          ]
        ) 
        )                  
    );
  }

}