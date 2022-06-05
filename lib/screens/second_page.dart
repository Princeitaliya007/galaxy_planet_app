import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> with SingleTickerProviderStateMixin{
  late AnimationController _controller;

  @override
  initState() {
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
    dynamic args = ModalRoute.of(context)!.settings.arguments;

    double _height = MediaQuery.of(context).size.height;
    double _width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xFF3A3860),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: double.infinity,
            height: _height * 0.15,
          ),
          Stack(
            alignment: const Alignment(0, -1.9),
            children: [
              Container(
                height: 270,
                width: 330,
                color: const Color(0xFF3F416E),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: _height * 0.1,
                    ),
                    Text(
                      args.title,
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.02,
                    ),
                    Text(
                      "Milkyway Galaxy",
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      height: _height * 0.05,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          "assets/images/ic_distance.png",
                          height: 18,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          args.location,
                          style: const TextStyle(
                            fontSize: 16,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        Image.asset(
                          "assets/images/ic_gravity.png",
                          height: 18,
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          args.gravity,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              AnimatedBuilder(
                animation: _controller,
                child: Image.asset(
                  args.image,
                  height: 130,
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
          SizedBox(
            height: _height * 0.07,
          ),
          Text(
            "OVERVIEW",
            style: GoogleFonts.poppins(
              fontSize: 22,
              color: Colors.white,
            ),
          ),
          SizedBox(
            height: _height * 0.02,
          ),
          Container(
            width: 350,
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 17,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(
            height: _height * 0.10,
          ),
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  backgroundColor: const Color(0xFF3F416E),
                  context: context,
                  builder: (context) {
                    return Column(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 70,
                          decoration: const BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(15),
                              bottomRight: Radius.circular(15),
                            ),
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            "Welcome to ${args.title}",
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Image.asset(
                          args.image,
                          height: 130,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Text(
                          "Distance to sun",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          args.distosun,
                          style: GoogleFonts.poppins(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text(
                          "Distance to earth",
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            color: Colors.grey,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          args.distoearth,
                          style: GoogleFonts.poppins(
                            fontSize: 23,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    );
                  });
            },
            child: Container(
              width: double.infinity,
              height: 70,
              decoration: const BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    Text(
                      "BACK",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
