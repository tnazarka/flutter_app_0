import 'package:flutter/material.dart';
import 'basket_layout.dart';
import 'basket_poduct.dart';
import 'news_box.dart';
import 'product.dart';

void main() {
  runApp(MaterialApp(
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
        actions: <Widget>[
//          IconButton(
//            icon: const Icon(Icons.add_alert),
//            tooltip: 'Show Snackbar',
//            onPressed: () {},
//          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            tooltip: 'Next page',
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => new BasketRoute()));
            },
          ),
        ],
      ),
      // icon: Icon(Icons.shopping_cart),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            leading: Image(image: NetworkImage(products[index].imageurl_)),
            title: Text(products[index].title),
            subtitle: Text(
                "\₽" + products[index].pricetext.toString()), // Текст описания
            trailing: Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                icon: Icon(Icons.add_shopping_cart),
//                tooltip: 'Increase volume by 10',
                onPressed: () {//вот тут люты затуп, не знаю как парсить массив на наличие такого элемената,
                  try {//а то когда добавляю элемент , то не получается проверить массив на наличие такогоже элемента, и пр нажатии добавляется такойже элемент и получается дичь
                    quantitys[products[index].id].quantity += 1;
                    print("нашли элемент");
                  } catch (e) {
                    quantitys.add(BasketPoz(numberProduct: index, quantity: 1));
                    print("Не нашли  и создали" + ":" + index.toString());
                  }
                },
              ),
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => new NewsBox(products[index])));
            },
          );
        },
      ),
    );
  }
}
