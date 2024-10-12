import 'package:flutter/material.dart';
import 'package:travel_connection/connection.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

int homechooseone = 0;

Widget returnImage(int i) {
  List<String> imagesHome = [
    'assets/img/plage.jpg',
    'assets/img/london.jpg',
    'assets/img/home.jpeg'
  ];
  return Image.asset(
    imagesHome[i],
    fit: BoxFit.cover,
  );
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
              width: double.infinity,
              height: 600,
              child: returnImage(homechooseone)),
          Align(
            alignment: Alignment.bottomLeft,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(50)),
              child: Container(
                width: double.infinity,
                height: 400,
                color: Colors.white,
                child: buildcard(homechooseone),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildcard(int cardOne) {
    if (cardOne == 0) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: '01', // Première partie du texte
                      style: TextStyle(
                        color: Colors.black, // Style pour la première chaîne
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '.03', // Deuxième partie du texte
                      style: TextStyle(
                        color: Colors
                            .grey, // Style différent pour la deuxième chaîne
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              'Page1',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Hotel,Ressorts,Hostels & more get the\nbest price on 2,000,000+ properties\nwolrdwide ',
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 10,
                    color: Colors.white,
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 10,
                          width: 50,
                          color: const Color(0xff018868),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 10,
                          width: 20,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 10,
                          width: 20,
                          color: Colors.grey,
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 140,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              homechooseone++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff018868),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: const Row(
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                  width: 20,
                                  child: Icon(Icons.arrow_forward,
                                      color: Colors.white))
                            ],
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    } else if (cardOne == 1) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: '01', // Première partie du texte
                      style: TextStyle(
                        color: Colors.black, // Style pour la première chaîne
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '.03', // Deuxième partie du texte
                      style: TextStyle(
                        color: Colors
                            .grey, // Style différent pour la deuxième chaîne
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              'Page 2',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Hotel,Ressorts,Hostels & more get the\nbest price on 2,000,000+ properties\nwolrdwide ',
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 10,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 20,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 10,
                          width: 50,
                          color: const Color(0xff018868),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 10,
                          width: 20,
                          color: Colors.grey,
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 140,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            setState(() {
                              homechooseone++;
                            });
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff018868),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: const Row(
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                  width: 20,
                                  child: Icon(Icons.arrow_forward,
                                      color: Colors.white))
                            ],
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    } else {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50, bottom: 20),
              child: RichText(
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text: '01', // Première partie du texte
                      style: TextStyle(
                        color: Colors.black, // Style pour la première chaîne
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: '.03', // Deuxième partie du texte
                      style: TextStyle(
                        color: Colors
                            .grey, // Style différent pour la deuxième chaîne
                        fontSize: 19,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Text(
              'Let\'s find your\ndream vacation',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 35),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Hotel,Ressorts,Hostels & more get the\nbest price on 2,000,000+ properties\nwolrdwide ',
              style: TextStyle(fontSize: 18),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 10,
                    color: Colors.white,
                    child: Row(
                      children: [
                        Container(
                          height: 10,
                          width: 20,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 10,
                          width: 20,
                          color: Colors.grey,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          height: 10,
                          width: 50,
                          color: const Color(0xff018868),
                        )
                      ],
                    ),
                  ),
                  Center(
                    child: SizedBox(
                      width: 140,
                      height: 50,
                      child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Connection()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: const Color(0xff018868),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5))),
                          child: const Row(
                            children: [
                              Text(
                                'Get Started',
                                style: TextStyle(color: Colors.white),
                              ),
                              SizedBox(
                                  width: 20,
                                  child: Icon(Icons.arrow_forward,
                                      color: Colors.white))
                            ],
                          )),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    }
  }
}
