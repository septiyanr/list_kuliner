import 'package:flutter/material.dart';
import 'package:list_kuliner/list_item.dart';
import 'package:list_kuliner/makanan.dart';
import 'package:list_kuliner/styles.dart';

class HomePage extends StatelessWidget {

  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Makanan> listmenu = Makanan.dummyData;

    return SafeArea(
      child: Column(children: [
        SizedBox(height: 10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.list_alt, size: 30,), 
            Text(
              'List Kuliner', 
              style: textHeader1,
            )
            ],
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: listmenu.length, 
            itemBuilder: (context, index){
              return ListItem(menu: listmenu[index]);
            }))
      ],),
    );
  }
}

