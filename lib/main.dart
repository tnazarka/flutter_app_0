
import 'package:flutter/material.dart';
import 'news_box.dart';
import 'product.dart';

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
body: ListView.builder(
  itemCount:products.length,
  itemBuilder: (BuildContext context,int index){
    return  ListTile(
      leading: Image(
                image : NetworkImage(products[index].imageurl_ )
      ),
           title: Text(products[index].title),
           subtitle: Text(products[index].pricetext), // Текст описания
           trailing: Icon(Icons.keyboard_arrow_right), // Иконка списка с права '>'
    onTap: () {
           Navigator.push(
                  context ,
                  MaterialPageRoute(builder: (context) =>  new NewsBox(products[index])));
            },
         );
       },
     ),
    );
  }
}




