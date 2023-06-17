import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class MainCard extends StatelessWidget {
  const MainCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(
        top: 825,
      ),
      scrollDirection: Axis.vertical,
      child: SafeArea(
        child: Container(
          height: 860,
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 67, 65, 63),
            borderRadius: BorderRadius.all(
              Radius.circular(55),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 20,
                child: Container(
                  padding: const EdgeInsets.all(12),
                  margin: const EdgeInsets.symmetric(horizontal: 175),
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 255, 255)
                          .withOpacity(0.8),
                      borderRadius: const BorderRadius.all(
                        Radius.circular(28),
                      ),
                      boxShadow: const [
                        BoxShadow(
                          color: Color.fromARGB(255, 53, 77, 212),
                          blurRadius: 4,
                          spreadRadius: 2,
                          offset: Offset(1, 3),
                        ),
                      ]),
                ),
              ),
              const SizedBox(
                height: 26,
              ),
              Row(
                children: const [
                  SizedBox(
                    height: 230,
                    width: 200,
                    child: Card(
                      bgcolor: Colors.white,
                      bgscolor: Color.fromARGB(255, 52, 174, 39),
                      title: 'Total Earnings',
                      title1: "Coins",
                      icon1: SizedBox(
                        height: 100,
                        width: 150,
                        child: RiveAnimation.asset(
                          "assets/rive1/coin_switch.riv",
                          artboard: "coins",
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 230,
                    width: 200,
                    child: Card(
                      bgcolor: Colors.white,
                      bgscolor: Color.fromARGB(255, 39, 127, 174),
                      title: 'Total Savings',
                      title1: "Ruppes",
                      icon1: SizedBox(
                        height: 100,
                        width: 200,
                        child: RiveAnimation.asset(
                          "assets/rive1/pig.riv",
                          artboard: "New Artboard",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                children: const [
                  SizedBox(
                    height: 230,
                    width: 200,
                    child: Card(
                      bgcolor: Colors.white,
                      bgscolor: Color.fromARGB(255, 174, 39, 169),
                      title: 'Stats',
                      title1: "bar chart",
                      icon1: SizedBox(
                        height: 100,
                        width: 200,
                        child: RiveAnimation.asset(
                          "assets/rive1/graph1.riv",
                          artboard: "Graph",
                          animations: ["curves"],
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 230,
                    width: 200,
                    child: Card(
                      bgcolor: Colors.white,
                      bgscolor: Color.fromARGB(255, 174, 59, 39),
                      title: 'Etc...',
                      title1: "...........",
                      icon1: SizedBox(
                        height: 100,
                        width: 200,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 90, vertical: 10),
                child: SizedBox(
                  height: 50,
                  child: Text(
                    "Refer and Earn",
                    style: TextStyle(fontSize: 35, color: Colors.white),
                  ),
                ),
              ),
              Row(
                children: const [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Card(
                      bgcolor: Colors.white,
                      bgscolor: Color.fromARGB(255, 174, 111, 39),
                      title: 'Refer and Earn',
                      title1: ".........",
                      icon1: SizedBox(
                        height: 100,
                        width: 200,
                        child: RiveAnimation.asset(
                          "assets/rive1/sizes.riv",
                          artboard: "files",
                        ),
                      ),
                    ),
                  ),
                  Spacer(),
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Card(
                      bgcolor: Colors.white,
                      bgscolor: Color.fromARGB(255, 124, 39, 174),
                      title: '',
                      title1: "",
                      icon1: SizedBox(
                        height: 100,
                        width: 200,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.title,
    required this.title1,
    required this.bgcolor,
    required this.bgscolor,
    required this.icon1,
  });
  final String title;
  final String title1;
  final Color bgcolor;
  final Color bgscolor;
  final Widget icon1;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: const BorderRadius.all(
          Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: bgscolor,
            blurRadius: 4,
            spreadRadius: 2,
            offset: const Offset(6, 6),
          ),
        ],
      ),
      child: SizedBox(
        child: Column(
          children: [
            Text(
              title,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
            icon1,
            Text(
              title1,
              style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
