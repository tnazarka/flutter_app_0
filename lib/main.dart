
import 'package:flutter/material.dart';
import 'NewsBox.dart';
import 'Product.dart';

void main() {

  runApp(
      MaterialApp(

        home: FirstRoute(),

      ));
}
class FirstRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Магазин'),
          backgroundColor: Colors.green[600],

        ),
      body: new ListView(children : [

          ListTile(  // Наш ListTile
            leading: Image(
                image : NetworkImage("https://cdn.book24.ru/v2/ITD000000000943518/COVER/cover3d1__w337.webp", )
              //  https://cdn.kodixauto.ru/media/image/5f0894e2735f140001058893
            ),

            title: Text('"Краткие ответы на большие вопросы" Стивен Хокинг'), // Основной текст (название)
            subtitle: Text('550₽'), // Текст описания
            trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => oneLayout()));
            },

          ),
        ])
    );
  }
}class oneLayout extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Магазин'),
          backgroundColor: Colors.green[600],

        ),

        body: new NewsBox('', '''''',
            imageurl: '')
    );
  }
}//переход к описанию товара для первого элемнта списка



