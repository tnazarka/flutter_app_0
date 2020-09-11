
import "package:flutter/material.dart";
import 'package:flutterapp0/Product.dart';

class NewsBox extends StatelessWidget {   //не понимаю как перtдать в класс  NewsBox параметры из класса Product

  String _title ;
  String _text;
  String _imageurl;

//проверка связи
  //ответ
  NewsBox(this._title, this._text, {String imageurl}) {
    _imageurl = imageurl;
  }

  @override
  Widget build(BuildContext context) {
//    if (_imageurl != null && _imageurl != '') return new Container(
//        child: new Row(children: [
//          new Expanded(child: new Container(padding: new EdgeInsets.all(5.0),
    child:  new ListView(children: [
      new Image.network(_imageurl,  height: 300.0,width: 100, fit: BoxFit.contain,),
      new Text(_title,  style: new TextStyle(fontSize: 20.0),),
      new Expanded(child:new Text(_text, softWrap: true, textAlign: TextAlign.justify,))
    ]
//              ))
//          )
//        ])
    );

  }
}//макет виджета для страницы с писанием тов
