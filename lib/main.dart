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
        child: ListView(

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
                                    crossAxisAlignment: CrossAxisAlignment
                                        .start,
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
                                border: Border.all(
                                  width: 1,
                                  color: Colors.red
                                ),
                                shape: BoxShape.circle,
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(

                                    color: Colors.grey.withOpacity(0.2),
                                      blurRadius: 10,
                                      offset: const Offset(3, 7)
                                  )
                                ]

                              ),

                              child: const Icon(Icons.delivery_dining,size: 40)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text('Delivery',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12),),
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
                                        offset: const Offset(3, 7)
                                    )
                                  ]

                              ),

                              child: const Icon(Icons.fastfood,size: 40)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text('Curbside',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey)),
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
                                        offset: const Offset(3, 7)
                                    )
                                  ]

                              ),

                              child: const Icon(Icons.shopping_basket,size: 40)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text('Self-Pickup',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey)),
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
                                        offset: const Offset(3, 7)
                                    )
                                  ]

                              ),

                              child: const Icon(Icons.restaurant_outlined,size: 40)),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(top: 2),
                          child: Text('Dine-in',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 12,color: Colors.grey)),
                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
            const Padding(
              padding:  EdgeInsets.only(right: 20,top:5),
              child: Divider(
                color: Colors.grey,

              ),
            ),
           /* Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                  //shrinkWrap: false,
                  itemCount: 5,
                  itemBuilder: (context,index){
                return const Card(
                  color: Colors.red,
                );

              }),
            )*/
          ],
        ),
      ),
    );
  }
}
