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

void contains() {
  for (int i = 0; i < quantitys.length - 1; i++) {
    print("Вот массив" +
        ":" +
        quantitys[i].productId.toString() +
        quantitys[i].quantity.toString());
  }
}

class FirstRoute extends StatefulWidget {
  @override
  _FirstRouteState createState() => _FirstRouteState();
}

class _FirstRouteState extends State<FirstRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Магазин'),
        backgroundColor: Colors.green[600],
        actions: <Widget>[
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
                icon: Icon(products[index].checkIcon),
//                tooltip: 'Increase volume by 10',
                onPressed: () {
                  setState(() {
                    if (products[index].checkIcon == Icons.check) {
                      // products[index].checkIcon = Icons.check;
                      print("нашли его" + ":");
                    } else {
                      products[index].checkIcon = Icons.check;
                      quantitys.add(BasketPoz(
                          productId: products[index].id, quantity: 1));
                    }
                  });
                },
              ),
            ),
            onTap: () {
              setState(() {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => new NewsBox(products[index])));
              });
            },
          );
        },
      ),
    );
  }
}
