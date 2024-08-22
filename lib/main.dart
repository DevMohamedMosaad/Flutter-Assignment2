import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food App'),
      ),
      body: Padding(
        //padding: const EdgeInsets.all(8.0),
        padding: const EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 250,
                    height: 70,
                    child: const Card(
                      shadowColor: Colors.grey,
                      elevation: 5,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Icon(
                                  Icons.format_list_numbered_sharp,
                                  size: 35,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Select Location',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                        textAlign: TextAlign.left,
                                      ),
                                      Text('Al Mashtal',
                                          style: TextStyle(
                                              color: Colors.grey, fontSize: 14),
                                          textAlign: TextAlign.left)
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Icon(
                              CupertinoIcons.arrow_down_square_fill,
                              color: Colors.red,
                            ),
                          ],
                        ),
                      ),
                      // color: Colors.white,
                    ),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    //color: Colors.red,
                    child: const Card(
                      elevation: 5,
                      shadowColor: Colors.grey,
                      child: Icon(Icons.notifications_none),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(width: 1, color: Colors.red),
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 10,
                                        offset: const Offset(3, 7))
                                  ]),
                              child:
                                  const Icon(Icons.delivery_dining, size: 40)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text(
                            'Delivery',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 12),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 10,
                                        offset: const Offset(3, 7))
                                  ]),
                              child: const Icon(Icons.fastfood, size: 40)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text('Curbside',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.grey)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 10,
                                        offset: const Offset(3, 7))
                                  ]),
                              child:
                                  const Icon(Icons.shopping_basket, size: 40)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text('Self-Pickup',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.grey)),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                              width: 60,
                              height: 60,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.2),
                                        blurRadius: 10,
                                        offset: const Offset(3, 7))
                                  ]),
                              child: const Icon(Icons.restaurant_outlined,
                                  size: 40)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text('Dine-in',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                  color: Colors.grey)),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 20, top: 5),
              child: Divider(
                color: Colors.grey,
              ),
            ),
Expanded(child: ListView(
  scrollDirection: Axis.vertical,
  children: [
    Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Container(
        height: 180,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 5,
            itemBuilder: (context, index) {
              return Container(
                width: 300,
                // height: 200,
                child: Card(
                  //shape: CircleBorder(),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    //width: 300,

                      fit: BoxFit.fill,
                      'images/pizza1.jpeg'),
                  //color: Colors.red,
                ),
              );
            }),
      ),
    ),
    const Padding(
      padding: EdgeInsets.only(right: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Text(
                'Explore Menu',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 13),
              ),
              Icon(Icons.local_pizza)
            ],
          ),
          Row(
            children: [
              Text(
                'View All',
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: 12),
              ),
              Icon(size: 20, CupertinoIcons.square_arrow_right)
            ],
          )
        ],
      ),
    ),
    Padding(
      padding: EdgeInsets.all(12.0),
      child: Container(
        height: 140,

        child: ListView(

          scrollDirection: Axis.horizontal,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('images/pizza2.jpg')),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 35,
                        child: Image.asset(
                            fit: BoxFit.fill, 'images/offer.png'),
                      ),
                      Text(
                        'Exclusive deals',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      color: Colors.redAccent,
                      width: 100,
                      height: 3,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('images/pizza3.jpg')),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 35,

                      ),
                      Text(
                        'New',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      color: Colors.amber,
                      width: 100,
                      height: 3,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('images/pizza4.jpg')),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 35,

                      ),
                      Text(
                        'For Me',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Container(
                      color: Colors.redAccent,
                      width: 100,
                      height: 3,
                    ),
                  )
                ],
              ),
            ),


          ],
        ),
      ),
    ),
    Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        height: 140,

        child: ListView(

          scrollDirection: Axis.horizontal,
          children: [

            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('images/food1.jpg')),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 35,

                      ),
                      Text(
                        'Pizza',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('images/food2.jpg')),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 35,

                      ),
                      Text(
                        'Starters',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: Column(
                children: [
                  CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage('images/food3.jpg')),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 100,
                        height: 35,

                      ),
                      Text(
                        'Pasta',
                        style: TextStyle(
                            color: Colors.black87,
                            fontSize: 11,
                            fontWeight: FontWeight.bold
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ],
                  ),

                ],
              ),
            ),



          ],
        ),
      ),
    ),
  ],
))
          ],
        ),
      ),
    );
  }
}
