import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

import 'main_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      bottomNavigationBar: InkWell(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CircleAvatar(
                radius: 20,
                backgroundColor: Color.fromARGB(255, 115, 116, 154),
                child: Icon(
                  Icons.person_outline_sharp,
                  color: Colors.white,
                  size: 38,
                ),
              ),
            ],
          ),
        ),
      ),
      body: const HomePage1(),
    );
  }
}

class HomePage1 extends StatelessWidget {
  const HomePage1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30,
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 200,
                  width: double.infinity,
                  child: Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 35),
                            child: Text(
                              "Account",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  height: 1.2,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 45, vertical: 10),
                            child: CircleAvatar(
                              radius: 36,
                              backgroundColor: Color.fromARGB(57, 35, 81, 127),
                              child: Icon(
                                Icons.person_outline_sharp,
                                size: 35,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Spacer(),
                      SizedBox(
                        height: 200,
                        width: 230,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 20),
                              child: Center(
                                child: Text(
                                  "Profile",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20),
                                ),
                              ),
                            ),
                            TextFormField(
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                              decoration: const InputDecoration(
                                suffixIcon: Icon(Icons.edit,
                                    size: 35, color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 570,
                  width: 390,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(children: [
                        Container(
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 173, 45, 164),
                                blurRadius: 4,
                                spreadRadius: 2,
                                offset: Offset(2, 8),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 120,
                                width: 120,
                                child: RiveAnimation.asset(
                                    "assets/rive1/banking.riv",
                                    artboard: "Composition",
                                    animations: ["Animations"]),
                              ),
                              SizedBox(height: 10),
                              Text("Banking Account",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20)),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 90, 173, 45),
                                blurRadius: 6,
                                spreadRadius: 4,
                                offset: Offset(6, 8),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: const [
                              SizedBox(
                                height: 100,
                                width: 100,
                                child: RiveAnimation.asset(
                                    "assets/rive1/transactions.riv",
                                    artboard: "Transactions",
                                    animations: ["Clockwork"]),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(
                                  "Transactions",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(
                                  "History",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ]),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(children: [
                        Container(
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 45, 111, 173),
                                blurRadius: 6,
                                spreadRadius: 4,
                                offset: Offset(6, 8),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Column(
                            children: const [
                              SizedBox(
                                height: 120,
                                width: 120,
                                child: RiveAnimation.asset(
                                    "assets/rive1/help.riv",
                                    artboard: "Scene_1",
                                    animations: ["WindowsFLying"]),
                              ),
                              SizedBox(height: 10),
                              Text("Help Center",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20)),
                            ],
                          ),
                        ),
                        const Spacer(),
                        Container(
                          height: 170,
                          width: 180,
                          decoration: BoxDecoration(
                            boxShadow: const [
                              BoxShadow(
                                color: Color.fromARGB(255, 169, 173, 45),
                                blurRadius: 6,
                                spreadRadius: 4,
                                offset: Offset(6, 8),
                              ),
                            ],
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(35),
                          ),
                          child: Column(
                            children: const [
                              SizedBox(
                                  height: 120,
                                  width: 120,
                                  child: Icon(
                                    Icons.settings,
                                    size: 80,
                                  )),
                              SizedBox(height: 10),
                              Text("Settings",
                                  style: TextStyle(
                                      color: Colors.black, fontSize: 20)),
                            ],
                          ),
                        ),
                      ]),
                      Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.only(top: 142, left: 30),
                            child: Text(
                              "LOGOUT",
                              style: TextStyle(
                                fontSize: 25,
                                color: Color.fromARGB(255, 125, 219, 210),
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(top: 137, left: 20),
                            child: Icon(
                              Icons.logout,
                              color: Color.fromARGB(255, 255, 255, 255),
                              size: 35,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        const MainCard(),
      ],
    );
  }
}
