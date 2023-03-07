import 'package:flutter/material.dart';
import 'products.dart';
import 'contact.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fast Lane Bike Shop',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(title: 'Fast Lane Bike Shop'),
      
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      drawer: NavigationDrawer(),
      body: SingleChildScrollView(
        child: Column(
            children: [
              Image.asset("images/cover.jpg", fit: BoxFit.cover, height: 210, width: 500,),
              Padding(padding: EdgeInsets.all(16),
                child: SingleChildScrollView(
                  child: Column(
                  children: [
                    Text("Each one of our Bike Shops is filled up with bicycles for all types of riders. "
                    +"We carry the largest selection of mountain bikes, road bikes, electric bikes, adventure bikes, recreational bikes, BMX bikes, and kids' bikes all year long. "+
                    "And do not worry if you are a bicycling newbie with no idea what kind of bike you want to ride. "+
                    "Our friendly staffers will work with you to get you on the perfect bike for your unique preferences, style, and ability. "+
                    "Whether you’re a well-seasoned cyclist looking to upgrade to a newer bike model or a newbie ready to buy your first bicycle "+ 
                    "our knowledgeable staff combined with the amazing brands we carry make our Fast Lane Bike Shops the ideal destination for you.", textAlign: TextAlign.justify, style: TextStyle(fontSize: 15),),
                    Padding(padding: EdgeInsets.only(top: 8, bottom: 8),
                    child: Text("Every bike purchase and includes", textAlign: TextAlign.center ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700)),),
                      ListView(
                        shrinkWrap: true,
                      padding: const EdgeInsets.all(16),
                      children: [
                        Container(
                          height: 50,
                          color: Colors.purple[100],
                          child: const Center(child: Text('Low Price Guarantee')),
                        ),
                        Container(
                          height: 50,
                          color: Colors.purple[200],
                          child: const Center(child: Text('Lifetime Extended Parts Warranty')),
                        ),
                        Container(
                          height: 50,
                          color: Colors.purple[100],
                          child: const Center(child: Text('Free Professional Assembly')),
                        ),
                        Container(
                          height: 50,
                          color: Colors.purple[200],
                          child: const Center(child: Text('Guaranteed Bike Trade-in Program')),
                        ),
                        Container(
                          height: 50,
                          color: Colors.purple[100],
                          child: const Center(child: Text('Free 90-Day Safety Check')),
                        ),
                        Container(
                          height: 50,
                          color: Colors.purple[200],
                          child: const Center(child: Text('Free Accessory Installation')),
                        ),
                      ],
                    )
                  ],
                )))
            ]
    ))
      );
      
  }
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