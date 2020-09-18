import 'package:flutter/material.dart';
import 'basket_poduct.dart';
import 'news_box.dart';
import 'product.dart';
import 'main.dart';

class BasketRoute extends StatelessWidget {
  BasketPoz _quantitys;
  // int _numberQuantity = 1;

  //BasketRoute(this._quantitys);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Корзина'),
          backgroundColor: Colors.green[600],
        ),
        body: ListView.builder(
            itemCount: quantitys.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                height: 130,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15, top: 8),
                  child: Material(
                    borderRadius: BorderRadius.all(Radius.circular(14)),
                    elevation: 5.0,
                    child: Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 70,
                            child: Image.network(
                                products[quantitys[index].numberProduct]
                                    .imageurl_),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.only(left: 18.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 20),
                                  Container(
                                      width: 220,
                                      child: Text(
                                        products[quantitys[index].numberProduct]
                                            .title,
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold),
                                      )),
                                  SizedBox(height: 10),
                                  Text(
                                      "\₽" +
                                          products[quantitys[index]
                                                  .numberProduct]
                                              .pricetext
                                              .toString(),
                                      style: TextStyle(
                                        fontSize: 16,
                                      ))
                                ],
                              ),
                            ),
                          ),
                          Column(
                            //child: Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child: IconButton(
                                  icon: Icon(Icons.arrow_drop_up),
                                  onPressed: () {
                                    quantitys[index].quantity += 1;
                                  },
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(1.0),
                                child:
                                    Text(quantitys[index].quantity.toString()),
                              ),
                              Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: IconButton(
                                    icon: Icon(Icons.arrow_drop_down),
                                    onPressed: () {
                                      quantitys[index].quantity -= 1;
                                    },
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }));
  }
}
