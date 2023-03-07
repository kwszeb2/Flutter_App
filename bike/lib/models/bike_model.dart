import 'package:bike/main.dart';
import 'package:flutter/material.dart';
import 'package:bike/products.dart';

 class Bike {
  final String bikeType;
  final String name;
  final String description;
  final String picture;
  final String sku;
  final String price;

  const Bike(
    {required this.bikeType,
    required this.name,
    required this.description,
    required this.picture,
    required this.sku,
    required this.price});
  
}

List<Bike> bikes = [
      const Bike(
          bikeType: "Electric Bike",
          name: "Sun Bicycles Spider 3i", 
          description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros consequat, ultrices augue eget, porta nisl. Nullam venenatis in ligula in fermentum. In posuere erat ex, ac gravida arcu maximus interdum. Nulla a aliquam metus. Nulla scelerisque consectetur nisi, a interdum lectus. In vitae maximus augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum luctus ipsum, sit amet laoreet arcu laoreet condimentum. Mauris ornare orci at libero scelerisque, et mattis diam laoreet.",
          picture: "https://www.sefiles.net/images/library/zoom/sun-bicycles-spider-3i-123062-1.jpg",
          sku: "OAISDFAS8",
          price: "749.99"
      ),const Bike(
         bikeType: "Mountain Bike",
          name: "Trek Checkpoint ALR 5", 
          description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros consequat, ultrices augue eget, porta nisl. Nullam venenatis in ligula in fermentum. In posuere erat ex, ac gravida arcu maximus interdum. Nulla a aliquam metus. Nulla scelerisque consectetur nisi, a interdum lectus. In vitae maximus augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum luctus ipsum, sit amet laoreet arcu laoreet condimentum. Mauris ornare orci at libero scelerisque, et mattis diam laoreet.",
          picture: "https://cdn.shopify.com/s/files/1/0940/6140/products/CheckpointALR5_22_NavyRed_1_2048x.jpg?v=1643075230",
          sku: "WRPEROI",
          price: "1,999.99"
      ),
    const Bike(
         bikeType: "Pro Bike",
          name: "Surly Straggler", 
          description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros consequat, ultrices augue eget, porta nisl. Nullam venenatis in ligula in fermentum. In posuere erat ex, ac gravida arcu maximus interdum. Nulla a aliquam metus. Nulla scelerisque consectetur nisi, a interdum lectus. In vitae maximus augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum luctus ipsum, sit amet laoreet arcu laoreet condimentum. Mauris ornare orci at libero scelerisque, et mattis diam laoreet.",
          picture: "https://www.bicycleroots.com/media/catalog/product/cache/1/image/713x600/9df78eab33525d08d6e5fb8d27136e95/s/u/surly_straggler_mint_right.jpg",
          sku: "AKEWNROIW4",
          price: "1,549.00"
      ),
    const Bike(
         bikeType: "Hybrid Bike",
          name: "Trek Neko+", 
          description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros consequat, ultrices augue eget, porta nisl. Nullam venenatis in ligula in fermentum. In posuere erat ex, ac gravida arcu maximus interdum. Nulla a aliquam metus. Nulla scelerisque consectetur nisi, a interdum lectus. In vitae maximus augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum luctus ipsum, sit amet laoreet arcu laoreet condimentum. Mauris ornare orci at libero scelerisque, et mattis diam laoreet.",
          picture: "https://d2yn9m4p3q9iyv.cloudfront.net/trek/2018/neko-1-womens/thumbs/1000/37250.webp",
          sku: "PO495I54",
          price: "249.99"
      )
      ,const Bike(
         bikeType: "Kids Bike",
          name: "Haro Shredder 20", 
          description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros consequat, ultrices augue eget, porta nisl. Nullam venenatis in ligula in fermentum. In posuere erat ex, ac gravida arcu maximus interdum. Nulla a aliquam metus. Nulla scelerisque consectetur nisi, a interdum lectus. In vitae maximus augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum luctus ipsum, sit amet laoreet arcu laoreet condimentum. Mauris ornare orci at libero scelerisque, et mattis diam laoreet.",
          picture: "https://www.bigimagerack.com/cfs/img/2014/0fcbaf24/weblrg.jpg",
          sku: "ODAFJP22SDOKF",
          price: "209.99"
      ),
      const Bike(
         bikeType: "Adult Bike",
          name: "Pure Cycles Vine 8-Speed", 
          description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec eu eros consequat, ultrices augue eget, porta nisl. Nullam venenatis in ligula in fermentum. In posuere erat ex, ac gravida arcu maximus interdum. Nulla a aliquam metus. Nulla scelerisque consectetur nisi, a interdum lectus. In vitae maximus augue. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque rutrum luctus ipsum, sit amet laoreet arcu laoreet condimentum. Mauris ornare orci at libero scelerisque, et mattis diam laoreet.",
          picture: "https://cdn11.bigcommerce.com/s-44ck0/images/stencil/1280x1280/products/1665/19898/PureCyclesPureCityClassicBike8spd.2__65828.1590006977.jpg?c=2",
          sku: "MGPOEARTJP3",
          price: "429.00"
      ),
  ];
