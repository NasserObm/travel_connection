import 'package:flutter/material.dart';
import 'package:travel_connection/home.dart';

class Connection extends StatefulWidget {
  const Connection({super.key});

  @override
  State<Connection> createState() => _ConnectionState();
}

class _ConnectionState extends State<Connection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              color: const Color(0xff018868),
              width: double.infinity,
              height: 200,
              child: GestureDetector(
                onLongPress: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Home()),
                  )
                },
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 100, right: 350),
                  child: Center(
                    child: Container(
                      width: 50,
                      height: 50,
                      color: Colors.white,
                      child: const Icon(
                        Icons.arrow_back,
                        color: Color(0xff018868),
                      ),
                    ),
                  ),
                ),
              )),
          Align(
            alignment: Alignment.bottomLeft,
            child: ClipRRect(
              borderRadius:
                  const BorderRadius.only(topRight: Radius.circular(50)),
              child: Container(
                  width: double.infinity,
                  height: 800,
                  color: Colors.white,
                  child: const Column(
                    children: [
                      Center(
                        child: Text(
                          'Hello again!',
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )),
            ),
          )
        ],
      ),
    );
  }
}
