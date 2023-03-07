import 'package:flutter/material.dart ';
import 'package:bike/models/bike_model.dart';

class BikeDetailPage extends StatelessWidget{
  final Bike bikes;
  
  const BikeDetailPage({
    Key? key, required this.bikes,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Text(bikes.bikeType),
    ),
    body: SingleChildScrollView(child: Column(
      children: [
        Image.network(bikes.picture, fit: BoxFit.cover,),
        Padding(padding: EdgeInsets.only(top: 8, bottom: 8)),
        ListTile(
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(bikes.name, style: TextStyle( fontSize: 20, fontWeight: FontWeight.bold),)
            ],
          ),
          subtitle: Text("SKU: "+bikes.sku, style: TextStyle( fontSize: 12, fontWeight: FontWeight.bold),),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text('\$'+ bikes.price, style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),),
              Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                children: [
                  Icon(Icons.check),
                  Text('In Stock')                  
                ],
              ),
            ],  
            ),
            dense: false,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: 
            Padding(
              padding: EdgeInsets.only(left:16,right: 16),
              child: Text("Description: ",style: TextStyle( fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            ),
            Card(
            color: Colors.purple[100],
            child:Padding(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 12),
              child: Text(bikes.description, textAlign: TextAlign.justify,)
            )),
      ]
    )
  ));
}