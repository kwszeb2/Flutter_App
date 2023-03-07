import 'package:flutter/material.dart';
import 'package:bike/main.dart';
import 'package:bike/models/bike_model.dart';
import 'contact.dart';
import 'BikeDetailPage.dart';


class ProductPage extends StatelessWidget{
  const ProductPage ({Key? key}) :super(key: key);
 
  @override
  Widget build(BuildContext context) => Scaffold(
    
    drawer: NavigationDrawer(),
    appBar: AppBar(
      title: const Text("Product Page"),
      backgroundColor: Colors.redAccent[300],
    ),
    body: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisSpacing: 1, crossAxisSpacing: 1),itemCount: bikes.length,
              itemBuilder: (context, index) {
                final b = bikes[index];
                return Container(
                  //width: 300,
                  //height: 300,
                  padding: EdgeInsets.all(8),
                  color: Colors.white,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(12),
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => BikeDetailPage(bikes: b)));
                      },
                      child: GridTile(
                        child: Image.network(b.picture,fit: BoxFit.scaleDown),
                        footer: Container(
                          padding: EdgeInsets.all(4),
                          color: Colors.purple.withOpacity(.5),
                          child: Text(bikes[index].bikeType,
                            style: TextStyle(fontWeight: FontWeight.bold,color: Colors.black,fontSize: 20,),textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ),
                );
              },
              ),
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
            builder: (context) => const ProductPage(),
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
