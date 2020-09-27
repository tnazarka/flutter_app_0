// это тот виджет, котрый мы вмдим когда нажимаем на позицию в списке и переходим к описанию товара
import "package:flutter/material.dart";
import 'package:flutterapp0/product.dart';

import 'basket_poduct.dart';

class NewsBox extends StatelessWidget {
  Product _product;
  NewsBox(this._product);

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
              _product.imageurl_,
              height: 300.0,
              width: 200,
              fit: BoxFit.contain,
            ),
            new Text(
              _product.title,
              style: new TextStyle(fontSize: 20.0),
            ),
            new Text(
              _product.text,
              softWrap: true,
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
          //////////////////// вот пробовал вот так сделать, но почему-то все равно не находит элемент в списке,да ужжжжж
          onPressed: () {
            if (quantitys.contains(BasketPoz(numberProduct: _product.id)) ==
                true) {
              quantitys[
                      quantitys.indexOf(BasketPoz(numberProduct: _product.id))]
                  .quantity += 1;

              print("нашли элемент");
            } else {
              quantitys.add(BasketPoz(numberProduct: _product.id, quantity: 1));
              print("Не нашли  и создали" + ":" + _product.id.toString());
            }
          },
          label: Text("В корзину"),
          backgroundColor: Colors.green[600],
          icon: Icon(Icons.add_shopping_cart)),
    );
  }
} //макет виджета для страницы с писанием товара
