import 'package:flutter/material.dart';
import 'package:shop/item.dart';
import 'package:shop/itemModel.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:shop/cartpage.dart';
import 'package:shop/Showdetail.dart';
void main() => runApp(MyApp(
  model: CartModel(),
));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final CartModel model;
  const MyApp({Key key, @required this.model}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScopedModel<CartModel>(
        model: model,
          child: MaterialApp(
             debugShowCheckedModeBanner: false,
             title: 'Shopping Cart',
             home: ListScreen(),
            routes: {'/cart': (context) => CartPage(),
    },

    ),
    );
}
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[50],
        appBar: AppBar(
          backgroundColor: Colors.lightGreen[300],
          title: Text('CarShop'+'Total:'+ ScopedModel.of<CartModel>(context,rebuildOnChange: true).totalCartValue.toString()+'฿' ),
          actions: <Widget>[
            FlatButton(
                child: Text(
                  "Clear",
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () => ScopedModel.of<CartModel>(context).clearCart()),
            IconButton(
              icon: Icon(Icons.shopping_cart),
              onPressed: () => Navigator.pushNamed(context, '/cart'),
            )
          ],
        ),
        body: ListView.builder(
              itemExtent: 100,
              itemCount: itemList.length,
              itemBuilder: (context, index) {
         return ScopedModelDescendant<CartModel>(
             builder: (context, child, model) {
           return ListTile(
               leading: Image.network(itemList[index].imageUrl),
               title: Text(itemList[index].title),
               subtitle: Text("\฿"+itemList[index].price.toString()+"\n Click more detail"),
               trailing: OutlineButton(child: Text("BUY"),
               onPressed: () => model.addProduct(itemList[index])),
             onTap: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(
                       builder: (context) =>  DetailPage (itemList[index])));
             },
           );
        });
      },
     ),
    );
  }
}



