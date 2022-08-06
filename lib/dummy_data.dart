import 'package:flutter/cupertino.dart';

import './models/shops.dart';
import './models/products.dart';
import './models/combos.dart';

const DUMMY_SHOPS = [
  Shop(
      id: '1',
      title: 'Muthuvel Provision Stores',
      imageUrl: 'assets/images/Shop1.png',
      description: 'Titan Township | 1 Km'),
  Shop(
      id: '2',
      title: 'Apoorva SuperMarket',
      imageUrl: 'assets/images/Shop2.png',
      description: 'Titan township | 1 Km'),
  Shop(
      id: '3',
      title: 'Rajalakshmi department Store',
      imageUrl: 'assets/images/Shop3.png',
      description: 'Titan township | 1 Km'),
  Shop(
      id: '4',
      title: 'Venkateshwara Supermarket',
      imageUrl: 'assets/images/Shop4.png',
      description: 'Titan township | 1 Km'),
];

const DUMMY_PRODUCTS = [
  Products(
    imageUrl: 'assets/images/Ghee.png',
    title: 'GRB Ghee',
    description: 'Pure Cow Ghee | 500 ml',
    color: Color(0xffE0F4FF),
    amount: 40,
    productid: '1'
  ),
  Products(
    imageUrl: 'assets/images/iPhone.png',
    title: 'IPhone 12 Pro Max',
    description: '12 GB RAM | 128 GB Internal',
    color: Color(0xffEBEBEB),
    amount: 40,
    productid: '2'
  ),
  Products(
    imageUrl: 'assets/images/Headphones.png',
    title: 'BOAT Headphoens',
    description: 'Pure BAse | 360 Sound Quality',
    color: Color(0xffFFFEC7),
    amount: 40,
    productid: '3'
  ),
  Products(
    imageUrl: 'assets/images/Cupnoodles.png',
    title: 'Cup Noodles',
    description: 'Add 1 litre boiling water and feast',
    color: Color(0xffFFFEC7),
    amount: 40,
    productid: '4'
  )
];

const DUMMY_COMBO = [
  Combos(
    imageUrl: 'assets/images/Combo1.png',
    title: '3 Pack Masala',
    description: 'Available for 450',
    color: Color(0xffE0F4FF),
  ),
  Combos(
    imageUrl: 'assets/images/Combo2.png',
    title: '3 Pack Masala',
    description: 'Available for 450',
    color: Color(0xffEBEBEB),
  ),
  Combos(
    imageUrl: 'assets/images/Combo1.png',
    title: '3 Pack Masala',
    description: 'Available for 450',
    color: Color(0xffE0F4FF),
  ),
  Combos(
    imageUrl: 'assets/images/Combo2.png',
    title: '3 Pack Masala',
    description: 'Available for 450',
    color: Color(0xffEBEBEB),
  ),
];
