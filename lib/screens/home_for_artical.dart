import 'package:baraeim/listhome_for_artical.dart';
import 'package:baraeim/screens/login.dart';
import 'package:flutter/material.dart';

class HomeForArtical extends StatefulWidget {
  const HomeForArtical({super.key});

  @override
  State<HomeForArtical> createState() => _HomeForArticalState();
}

class _HomeForArticalState extends State<HomeForArtical> {
  List<ContantModel> contant = ContantModel.listArticles;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 84,
            ),
            Stack(
              children: [
                Container(
                  width: 380,
                  height: 155,
                  decoration: BoxDecoration(
                    color: const Color(0xFFFFE4EE),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                Positioned(
                  right: 16,
                  child:
                      Image.asset(height: 150, width: 147, 'assets/baby.png'),
                ),
                Positioned(
                    top: 20,
                    left: 30,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Welcome ,',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w700,
                            color: Color(0xFFE17BB4),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        const Text(
                          'To know how your child is ',
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.w700),
                        ),
                        const Text(
                          'developing and track his ',
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.w700),
                        ),
                        const Text(
                          'condition',
                          style: TextStyle(
                              fontSize: 9, fontWeight: FontWeight.w700),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFE17BB4),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Login()));
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w700,
                                color: Color(0xFFffffff)),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            const SizedBox(height: 32),
            SizedBox(
              height: 78,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          contant = ContantModel.listArticles;
                          setState(() {});
                        },
                        child: Container(
                          width: 84,
                          height: 78,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0x996A7AFA),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 11, right: 30, left: 30, bottom: 5),
                                child: Image.asset(
                                    height: 24,
                                    width: 24,
                                    'assets/BookOpenText.png'),
                              ),
                              const Text(
                                'Articles',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffffffff)),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        onTap: () {
                          contant = ContantModel.listPregrnant;
                          setState(() {});
                        },
                        child: Container(
                          width: 84,
                          height: 78,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xB258CF99),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 11, right: 30, left: 30, bottom: 5),
                                child: Image.asset(
                                    height: 24,
                                    width: 24,
                                    'assets/Pregrnant.png'),
                              ),
                              const Text(
                                'Pregrnant',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffffffff)),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        onTap: () {
                          contant = ContantModel.listModernparenting;
                          setState(() {});
                        },
                        child: Container(
                          width: 84,
                          height: 78,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0xA5FF9D00),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                  top: 11,
                                  right: 30,
                                  left: 30,
                                ),
                                child: Image.asset(
                                    height: 24,
                                    width: 24,
                                    'assets/Modern parenting.png'),
                              ),
                              const Text(
                                'Modern parenting',
                                style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffffffff)),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 12,
                      ),
                      InkWell(
                        onTap: () {
                          contant = ContantModel.listBaby;
                          setState(() {});
                        },
                        child: Container(
                          width: 84,
                          height: 78,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: const Color(0x99FA90C2),
                          ),
                          child: Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: 11, right: 30, left: 30, bottom: 5),
                                child: Image.asset(
                                    height: 24, width: 24, 'assets/face.png'),
                              ),
                              const Text(
                                'Baby',
                                style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Color(0xffffffff)),
                                textAlign: TextAlign.center,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListHomeForArtical(list: contant),
            ),
          ],
        ),
      ),
    );
  }
}
