import 'package:flutter/material.dart';
import 'basket_poduct.dart';
import 'news_box.dart';
import 'product.dart';
import 'main.dart';

class BasketRoute extends StatefulWidget {
  @override
  _BasketRouteState createState() => _BasketRouteState();
  BasketPoz _quantitys;

//BasketRoute(this._quantitys);
}

class _BasketRouteState extends State<BasketRoute> {
  int _numberQuantity =
      1; //переменная состояния текствого виджета количества товара в позиции
  int _price_uant = 1; //сумма покупки

  void PriceCheck() {
    // метод для расчета суммы
    _price_uant = 0;
    if (quantitys.length >= 1) {
      for (int i = 0; i <= quantitys.length - 1; i++) {
        _price_uant += (products[quantitys[i].productId].pricetext *
            quantitys[i].quantity);
        print("размер массива  больше 1");
      }
    } else {
      _price_uant = 0;
      print("размер массива  МЕНЬШЕ <1");
    }
  }

  Widget build(BuildContext context) {
    PriceCheck();
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Корзина'),
          backgroundColor: Colors.green[600],
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 520,
              child: ListView.builder(
                  itemCount: quantitys.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
//                      height: 130,
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15, top: 8),
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
                                      products[quantitys[index].productId]
                                          .imageurl_),
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        SizedBox(height: 20),
                                        Container(
                                            width: 200,
                                            child: Text(
                                              products[quantitys[index]
                                                      .productId]
                                                  .title,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            )),
                                        SizedBox(height: 10),
                                        Text(
                                            "\₽" +
                                                products[quantitys[index]
                                                        .productId]
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
                                          setState(() {
                                            _numberQuantity += 1;
                                            _numberQuantity =
                                                quantitys[index].quantity += 1;
                                            // Price_check();
                                          });

//                                    quantitys[index].quantity += 1;
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(1.0),
                                      child: Text(
                                          quantitys[index].quantity.toString()),
                                    ),
                                    Padding(
                                        padding: const EdgeInsets.all(1.0),
                                        child: IconButton(
                                          icon: Icon(Icons.arrow_drop_down),
                                          onPressed: () {
                                            setState(() {
                                              if (quantitys[index].quantity <=
                                                  1) {
                                                products[quantitys[index]
                                                            .productId]
                                                        .checkIcon =
                                                    Icons.add_shopping_cart;
//                                                print("сменили иконку для: " +
//                                                    products[quantitys[index]
//                                                            .productId]
//                                                        .title);
                                                quantitys.removeAt(index);
                                              } else {
                                                _numberQuantity -= 1;
                                                _numberQuantity =
                                                    quantitys[index].quantity -=
                                                        1;
                                                // Price_check();
                                              }
                                            });

//                                      quantitys[index].quantity -= 1;
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
                  }),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  alignment: Alignment.center,
                  height: 30,
                  color: Colors.green[600],
                  child: Text(
                    "Итог:" + _price_uant.toString(),
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.left,
                  ),
                )),
          ],
        ));
  }
}
