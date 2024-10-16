import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List images = [
    'images/apple.jpg',
    'images/banana.jpg',
    'images/grapes.jpg',
    'images/orange.jpg',
    'images/pomegranate.jpeg',
    'images/sathukudi.jpg'
  ];
  List fruits = [
    'apple',
    'banana',
    'grapes',
    'orange',
    'pomegranate',
    'sathukudi'
  ];
  @override
  Widget build(BuildContext context) {
    Size siize = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              toolbarHeight: 60,
              backgroundColor: const Color(0xff017403),
              floating: true,
              foregroundColor: Colors.white,
              flexibleSpace: Container(
                alignment: Alignment.center,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                child: Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage('images/logo.jpeg'),
                            fit: BoxFit.fill),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'APPLE-G FRUITS ZONE & EGGS CENTRE',
                      style: Theme.of(context)
                          .textTheme
                          .bodyMedium!
                          .copyWith(color: Colors.white),
                    )
                  ],
                ),
              )),
          SliverToBoxAdapter(
            child: Container(
              height: siize.height * 0.4,
              width: siize.width,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('images/banner.jpg'), fit: BoxFit.fill),
                  boxShadow: [
                    BoxShadow(
                        offset: const Offset(2, 0),
                        color: Colors.grey.shade600,
                        spreadRadius: 5,
                        blurRadius: 5)
                  ]),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 30,
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                          text: 'Welcome to ',
                          style: Theme.of(context).textTheme.bodyMedium,
                          children: [
                            TextSpan(
                              text: 'Apple-G Fruits Zone & Eggs Centre ',
                              style: Theme.of(context).textTheme.labelSmall,
                            )
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                          text:
                              'At Fresh Picks, we pride ourselves on offering the finest quality ',
                          style: Theme.of(context).textTheme.bodySmall,
                          children: [
                            TextSpan(
                              text: 'Fruits and Eggs, ',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(fontSize: 14),
                            ),
                            TextSpan(
                                text:
                                    'sourced fresh every day to cater to your various needs. Whether you\'re hosting a special event or simply looking for fresh produce for your everyday use, our store has the best selection to meet your requirements.',
                                style: Theme.of(context).textTheme.bodySmall)
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Our Products',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                          text: 'Fruits : ',
                          style: Theme.of(context).textTheme.labelSmall,
                          children: [
                            TextSpan(
                                text:
                                    'We offer a wide variety of fresh fruits, handpicked for their quality and taste. From seasonal fruits to exotic varieties, our collection is perfect for any occasion, be it a wedding, party, or family gathering. Some of our most popular offerings include',
                                style: Theme.of(context).textTheme.bodySmall)
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,
                              mainAxisSpacing: 10,
                              childAspectRatio: 1,
                              crossAxisSpacing: 10),
                      itemCount: images.length,
                      itemBuilder: (c, i) {
                        return Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(images[i]),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.white, width: 0.5)),
                        );
                      }),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                          text: 'Premium Eggs : ',
                          style: Theme.of(context).textTheme.labelSmall,
                          children: [
                            TextSpan(
                                text:
                                    ' Our farm-fresh eggs come from trusted local producers, ensuring they’re rich in nutrients and free from artificial additives. Ideal for baking, cooking, or as a stand-alone dish, our eggs are a staple for any meal.',
                                style: Theme.of(context).textTheme.bodySmall)
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: Container(
                          height: 125,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('images/egg_1.jpg'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.white, width: 0.5)),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 125,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('images/egg_2.jpeg'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.white, width: 0.5)),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 150,
                    width: siize.width,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('images/egg3.jpeg'),
                            fit: BoxFit.fill),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.white, width: 0.5)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Our Services',
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'We don\'t just provide fresh products; we offer complete services to make your occasions special:',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    alignment: Alignment.center,
                    child: RichText(
                      text: TextSpan(
                          text: 'Customized Fruit Baskets : ',
                          style: Theme.of(context).textTheme.labelSmall,
                          children: [
                            TextSpan(
                                text:
                                    ' Planning a function or need a thoughtful gift? Let us help you create custom fruit baskets tailored to your event’s theme or your recipient’s preferences.',
                                style: Theme.of(context).textTheme.bodySmall)
                          ]),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Flex(
                    direction: Axis.horizontal,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Container(
                              height: 125,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage('images/combo1.jpg'),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.white, width: 0.5)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              height: 125,
                              decoration: BoxDecoration(
                                  image: const DecorationImage(
                                      image: AssetImage('images/combo4.jpg'),
                                      fit: BoxFit.fill),
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: Colors.white, width: 0.5)),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 260,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('images/banana decor.jpg'),
                                  fit: BoxFit.fill),
                              borderRadius: BorderRadius.circular(10),
                              border:
                                  Border.all(color: Colors.white, width: 0.5)),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              width: siize.width,
              padding: const EdgeInsets.all(16),
              color: const Color(0xff017403),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Contact :',
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Gafur,',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    '8531913436',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text(
                    'Kamarajar Market, \nVinayagar Temple Opposite, \nKallakurichi.',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
