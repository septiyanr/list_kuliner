import 'package:flutter/material.dart';
import 'package:list_kuliner/detail_page.dart';
import 'package:list_kuliner/makanan.dart';
import 'package:list_kuliner/styles.dart';

class ListItem extends StatelessWidget {
  const ListItem({
    super.key,
    required this.menu,
  });

  final Makanan menu;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => DetailPage(makanan: menu,)));
      },
      child: Container(
        margin: EdgeInsets.all(10), 
        height: 100,
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
            color:Color.fromARGB(255, 188, 188, 188), 
            offset: Offset(1, 2), 
            blurRadius: 6)
            ]),
        child: Row(
          children: [
            gambar(),
            SizedBox(width: 10),
            deskripksiTeks(),
            Icon(Icons.food_bank_rounded, color: iconColor)
          ],
        ),
      ),
    );
  }

  ClipRRect gambar() {
    return ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          child: Image.asset(
            menu.gambar, 
            height: 75, 
            width: 85,
            fit: BoxFit.cover,
          ),
        );
  }

  Expanded deskripksiTeks() {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
            children: [ 
              Text(
                menu.nama,
                style: textHeader1,
              ), 
              Text(
                menu.deskripsi,
                style: TextStyle(color: Colors.black38),
                overflow: TextOverflow.ellipsis,
              ), 
              SizedBox(height: 3),
              Text(menu.harga, style: TextStyle(fontWeight: FontWeight.bold),)
            ],
          ),
    );
  }
}