import 'package:bike/main.dart';
import 'package:flutter/material.dart';
import 'package:bike/products.dart';

class Contact {
  String name;
  String phone;
  String email;
  String street;
  String city;
  String state;
  String zipcode;

  Contact(
    {required this.name,
    required this.phone,
    required this.email,
    required this.street,
    required this.city,
    required this.state,
    required this.zipcode
    });
  
static Contact fromJson(json) => Contact(
    name: json['name'], 
    phone: json['phone'], 
    email: json['email'], 
    street: json['street'], 
    city: json['city'], 
    state: json['state'], 
    zipcode: json['zipcode']
  );
}