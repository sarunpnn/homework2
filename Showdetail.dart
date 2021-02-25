import 'package:flutter/material.dart';
import 'package:shop/item.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:shop/itemModel.dart';
import 'package:shop/main.dart';

class  DetailPage extends StatelessWidget {
  Item item ;
  DetailPage(this.item);
  CartModel model;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail'+'   Total:'+ ScopedModel.of<CartModel>(context,rebuildOnChange: true).totalCartValue.toString()+'฿' ),),
        body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.network(
                item.imageUrl,
                height: 500,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item.price.toString()+ "Bath",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 30.0, fontStyle: FontStyle.italic),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  item.title,
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 22.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Do You Want to Buy This one?",
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
               OutlineButton(
                   child: Text("buy"),
                   onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => ListScreen()),
                     );
                   }
               )],
          ),
        ),
      ),
    );
  }
}



