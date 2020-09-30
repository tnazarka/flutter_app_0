// это тот виджет, котрый мы вмдим когда нажимаем на позицию в списке и переходим к описанию товара
import "package:flutter/material.dart";
import 'package:flutterapp0/product.dart';

import 'basket_poduct.dart';

class NewsBox extends StatefulWidget {
  Product _product;
  NewsBox(this._product);

  @override
  _NewsBoxState createState() => _NewsBoxState();
}

class _NewsBoxState extends State<NewsBox> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Магазин'),
        backgroundColor: Colors.green[600],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Image.network(
              widget._product.imageurl_,
              height: 300.0,
              width: 200,
              fit: BoxFit.contain,
            ),
            new Text(
              widget._product.title,
              style: new TextStyle(fontSize: 20.0),
            ),
            new Text(
              widget._product.text,
              softWrap: true,
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          //////////////////// вот пробовал вот так сделать, но почему-то все равно не находит элемент в списке,да ужжжжж
          onPressed: () {
            setState(() {
              if (products[widget._product.id].checkIcon == Icons.check) {
                //  quantitys[quantitys.indexOf(BasketPoz(productId: _product.id))]
                //  .quantity += 1;

                print("Товар уже в корзине");
              } else {
                products[widget._product.id].checkIcon = Icons.check;
                quantitys.add(BasketPoz(
                    productId: products[widget._product.id].id, quantity: 1));
                print("Не нашли  и создали" +
                    ":" +
                    widget._product.id.toString());
              }
            });
          },
          label: Text("В корзину"),
          backgroundColor: Colors.green[600],
          icon: Icon(products[widget._product.id].checkIcon)),
    );
  }
} //макет виджета для страницы с писанием товара
