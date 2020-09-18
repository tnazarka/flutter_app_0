import "package:flutter/material.dart";

class BasketPoz {
  int quantity; //количество товара
  int numberProduct; // номер позиции в массиве Product

  BasketPoz({this.numberProduct, this.quantity});
}

var quantitys = [
  BasketPoz(numberProduct: 0, quantity: 2),
];
