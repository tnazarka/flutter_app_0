// это тот виджет, котрый мы вмдим когда нажимаем на позицию в списке и переходим к описанию товара
import "package:flutter/material.dart";
import 'package:flutterapp0/product.dart';

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
      body:SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                     new Image.network(_product.imageurl_,height: 300.0, width: 200, fit: BoxFit.contain,),
                     new Text(_product.title,  style: new TextStyle(fontSize: 20.0),),
                     new Text(_product.text, softWrap: true, textAlign: TextAlign.justify,)
                ],
                ),
               ),
              );
  }
}//макет виджета для страницы с писанием товара

