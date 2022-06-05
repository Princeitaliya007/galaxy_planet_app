import 'dart:math';

import 'package:flutter/material.dart';
import '../models/galaxy_model.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 4000),
    );

    _controller.repeat();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF3A3860),
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.menu),
          onPressed: () {},
        ),
        title: const Text(
          "GALAXY PLANETS",
          style: TextStyle(
            fontSize: 20,
            letterSpacing: 2,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: l1
              .map(
                (e) => Stack(
                  alignment: const Alignment(-0.8, 0.1),
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('second_page', arguments: e);
                      },
                      child: Container(
                        height: 150,
                        width: 270,
                        margin: const EdgeInsets.fromLTRB(80, 50, 20, 30),
                        color: const Color(0xFF3F416E),
                        child: Row(
                          children: [
                            const SizedBox(
                              width: 70,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  e.title,
                                  style: GoogleFonts.poppins(
                                    fontSize: 25,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                                Text(
                                  "Milkyway Galaxy",
                                  style: GoogleFonts.poppins(
                                    fontSize: 17,
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      "assets/images/ic_distance.png",
                                      height: 15,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      e.location,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Image.asset(
                                      "assets/images/ic_gravity.png",
                                      height: 15,
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      e.gravity,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    AnimatedBuilder(
                      animation: _controller,
                      child: Image.asset(
                        e.image,
                        height: 100,
                      ),
                      builder: (context, child) {
                        return Transform.rotate(
                          angle: _controller.value * pi * 2,
                          child: child,
                        );
                      },
                    ),
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
