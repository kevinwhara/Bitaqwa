// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bitaqwa_app/data/data_doa.dart';
import 'package:bitaqwa_app/screens/doa/detail_doa.dart';
import 'package:flutter/material.dart';

import 'package:bitaqwa_app/utils/colors.dart';

class ListDoa extends StatelessWidget {
  
  const ListDoa({
    Key? key,
    required this.category,
  }) : super(key: key);

  final String category;

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> listDoa = getDoaList(category);

    return Scaffold(
      backgroundColor: ColorApp.blue,
      appBar: AppBar(
        backgroundColor: ColorApp.primary,
        title: const Text(
          "List Doa",
          style: TextStyle(
            fontFamily: "PoppinsMedium",
            color: ColorApp.white
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined,),
          color: ColorApp.white,
        ),
      ),

      body: ListView.builder(
        itemCount: listDoa.length,
        itemBuilder: (context, index) {
          return Padding(

            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),

            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: ColorApp.white,
              ),

              child: ListTile(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => DetailDoa(title: "${listDoa[index]['title']}", arabicText: "${listDoa[index]['arabicText']}", translation: "${listDoa[index]['translation']}", reference: "${listDoa[index]['reference']}",))),
                leading: Image.asset(listDoa[index]["image"]!),
                title: Text(
                  listDoa[index]['title']!,
                  style: const TextStyle(
                    fontFamily: "PoppinsMedium",
                    fontSize: 20
                  ),
                ),
              ),
              
            ),
          );
        },
      ),
    );
  }
}
