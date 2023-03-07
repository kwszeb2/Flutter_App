import 'package:flutter/material.dart';
import 'package:bike/main.dart';
import 'package:bike/models/contactList_model.dart';
import 'products.dart';

class ContactPage extends StatelessWidget{

 List<Contact> contacts = getContacts();

 static List<Contact> getContacts() {
  const data = [
      {
          "name": "Santa Cruz Bikes", 
          "phone": "(831) 476-4321",
          "email": "santacruz@bikes.shop",
          "street": "3700 Portola Drive",
          "city": "Santa Cruz,",
          "state": "CA",
          "zipcode": "95060"
      },
      {
          "name": "Baldwin Bikes", 
          "phone": "(516) 379-8888",
          "email": "baldwin@bikes.shop",
          "street": "4200 Chestnut Lane",
          "city": "Baldwin,",
          "state": "NY",
          "zipcode": "11432"
      },
      {
          "name": "Rowletts Bikes", 
          "phone": "(972) 530-5555",
          "email": "rowlett@bikes.shop",
          "street": "8000 Fairway Avenue",
          "city": "Rowlett,",
          "state": "TX",
          "zipcode": "75088"
      }
  ];
  return data.map<Contact>(Contact.fromJson).toList();

 }

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: NavigationDrawer(),
    appBar: AppBar(
      title: const Text("Contact Page"),
      backgroundColor: Colors.purple,
    ),
    body: ListView.builder(
      itemCount: contacts.length, itemBuilder: (context, index){
        final c = contacts[index];
        return Container(
          child: Card(
            child: Padding(padding: EdgeInsets.all(16),
            child: Column(
              children: [
                Padding(padding: EdgeInsets.only(top: 8, bottom: 8),
                child: Row(children: [
                  Text(c.name, style: TextStyle(fontSize: 24),)
                  ],),),
                  Padding(padding: EdgeInsets.only(top: 0, bottom: 0),
                child: Row(children: [
                Text(c.street)
                  ],),),
                  Padding(padding: EdgeInsets.only(top: 0, bottom: 0),
                child: Row(children: [
                Text(c.city+" "+c.state+" "+c.zipcode)
                  ],),),
                  Padding(padding: EdgeInsets.only(top: 0, bottom: 0),
                child: Row(children: [
                   Text(c.phone)
                  ],),),
                  Padding(padding: EdgeInsets.only(top: 0, bottom: 0),
                child: Row(children: [
                   Text(c.email, style: TextStyle(color: Colors.blue),)
                  ],),)
              ],
            )),
          ),
        );
      })
  );
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) :super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
    child: SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget> [
        buildHeader(context),
        buildMenuItems(context),
      ],),
    ),
  );

  Widget buildHeader(BuildContext context) => Container(
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
  );

  Widget buildMenuItems(BuildContext context) => Container(
    padding: const EdgeInsets.all(24),
    child: Wrap(
      runSpacing: 16,
      children: [
        ListTile(
          leading: const Icon(Icons.home_outlined),
          title: const Text("Home"),
          onTap:() => 
              Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const MyApp(),
          )),
        ),
        ListTile(
          leading: const Icon(Icons.shopping_bag_outlined),
          title: const Text("Products"),
          onTap:() => 
              Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => ProductPage(),
          )),
        ),
        ListTile(
          leading: const Icon(Icons.contact_support_outlined),
          title: const Text("Contact Us"),
          onTap:() => 
              Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => ContactPage(),
          )),
        ),
    ])
  );
}