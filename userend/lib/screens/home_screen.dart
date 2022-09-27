import 'package:draw_graph/models/feature.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:draw_graph/draw_graph.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff18191E),
      body: SafeArea(
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(
              parent: AlwaysScrollableScrollPhysics()),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 17),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Hi, Austin!',
                        style: GoogleFonts.baloo2(
                            textStyle:
                                const TextStyle(fontWeight: FontWeight.w700),
                            color: Colors.white,
                            fontSize: 50),
                      ),
                      const CircleAvatar(
                        radius: 28,
                        foregroundImage:
                            AssetImage('assets/images/noavatar.jpg'),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Have a good day!',
                        style: GoogleFonts.baloo2(
                            textStyle:
                                const TextStyle(fontWeight: FontWeight.w400),
                            color: Colors.grey,
                            fontSize: 20),
                      ),
                    ],
                  ),
                ),
                const SizedBox.square(dimension: 20),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff24252A),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Next medicine',
                            style: GoogleFonts.baloo2(
                                textStyle: const TextStyle(
                                    fontWeight: FontWeight.w800),
                                color: Colors.white,
                                fontSize: 25),
                          ),
                          Row(
                            children: [
                              Text(
                                'Naxdom 500 ',
                                style: GoogleFonts.baloo2(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                    color: Colors.green,
                                    fontSize: 20),
                              ),
                              Text(
                                'at 8pm',
                                style: GoogleFonts.baloo2(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                    color: Colors.grey.shade300,
                                    fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Today: ',
                                style: GoogleFonts.baloo2(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                    color: Colors.grey.shade300,
                                    fontSize: 20),
                              ),
                              Text(
                                '4 out of 5 taken',
                                style: GoogleFonts.baloo2(
                                    textStyle: const TextStyle(
                                        fontWeight: FontWeight.w500),
                                    color: Colors.green,
                                    fontSize: 20),
                              ),
                            ],
                          )
                        ],
                      ),
                      CircularPercentIndicator(
                        radius: 60,
                        lineWidth: 11,
                        percent: 0.8,
                        progressColor: Colors.green.shade600,
                        backgroundColor: Colors.grey.shade800,
                        animation: true,
                        circularStrokeCap: CircularStrokeCap.round,
                        center: Icon(
                          Icons.medication_rounded,
                          color: Colors.grey.shade500,
                          size: 65,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox.square(dimension: 18),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff24252A),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Glucose',
                                  style: GoogleFonts.baloo2(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w800),
                                      color: Colors.white,
                                      fontSize: 30),
                                ),
                                Text(
                                  '130 mg/l',
                                  style: GoogleFonts.baloo2(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                      color: Colors.grey.shade400,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Icon(
                                CupertinoIcons.drop_fill,
                                color: Colors.red,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox.square(dimension: 8),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff24252A),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 13),
                        child: Column(
                          children: [
                            Text(
                              'Blood Grp',
                              style: GoogleFonts.baloo2(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w800),
                                  color: Colors.white,
                                  fontSize: 30),
                            ),
                            Text(
                              'AB+',
                              style: GoogleFonts.baloo2(
                                  textStyle: const TextStyle(
                                      fontWeight: FontWeight.w500),
                                  color: Colors.grey.shade400,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff24252A),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'Nearby',
                                  style: GoogleFonts.baloo2(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w800),
                                      color: Colors.white,
                                      fontSize: 29),
                                ),
                                Text(
                                  'hospitals',
                                  style: GoogleFonts.baloo2(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                      color: Colors.grey.shade400,
                                      fontSize: 26),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.only(left: 10),
                              child: Icon(
                                Icons.local_hospital_outlined,
                                color: Colors.blueGrey,
                                size: 30,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox.square(dimension: 8),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: const Color(0xff24252A),
                        ),
                        padding: const EdgeInsets.symmetric(
                            vertical: 14, horizontal: 20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  'My',
                                  style: GoogleFonts.baloo2(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w800),
                                      color: Colors.white,
                                      fontSize: 30),
                                ),
                                Text(
                                  'Prescriptions',
                                  style: GoogleFonts.baloo2(
                                      textStyle: const TextStyle(
                                          fontWeight: FontWeight.w500),
                                      color: Colors.grey.shade400,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            const Icon(
                              Icons.document_scanner_rounded,
                              color: Colors.blueGrey,
                              size: 27,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 18,
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: const Color(0xff24252A),
                  ),
                  padding:
                      const EdgeInsets.symmetric(vertical: 14, horizontal: 20),
                  child: Column(
                    children: [
                      Text(
                        'Blood sugar levels',
                        style: GoogleFonts.baloo2(
                            textStyle:
                                const TextStyle(fontWeight: FontWeight.w800),
                            color: Colors.white,
                            fontSize: 25),
                      ),
                      Text(
                        'Past 30 days',
                        style: GoogleFonts.baloo2(
                            textStyle:
                                const TextStyle(fontWeight: FontWeight.w300),
                            color: Colors.grey.shade800,
                            fontSize: 20),
                      ),
                      LineGraph(
                        features: [
                          Feature(
                            // title: "Drink juice",
                            color: Colors.blue,
                            data: [0.2, 0.8, 0.4, 0.7, 0.6],
                          ),
                        ],
                        size: const Size(400, 260),
                        labelX: const [
                          'Week 1',
                          'Week 2',
                          'Week 3',
                          'Week 4',
                          'Now'
                        ],
                        labelY: const ['20%', '40%', '60%', '80%', '100%'],
                        showDescription: false,
                        graphColor: Colors.white30,
                        graphOpacity: 0.2,
                        verticalFeatureDirection: true,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
