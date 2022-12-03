import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../loginscreen.dart';

class ChickenpoxWidget extends StatefulWidget {
  const ChickenpoxWidget({super.key});

  @override
  State<ChickenpoxWidget> createState() => _ChickenpoxWidget();
}

class _ChickenpoxWidget extends State<ChickenpoxWidget> {
  List<String> symptoms = [
    'Blistering rash',
    'Swollen Lymph Glands',
    'Fever and Chills',
    'Loss of appetite',
    'Headache',
    'Sore throat'
  ];
  List<String> alternatives = [
    'Get lots of rest',
    'Try not to scratch the blisters',
    'Take cool baths with baking soda or colloidal oatmeal',
    'use an over-the-counter antihistamine to reduce itching',
    'Take an over-the-counter pain reliever to reduce fever',
    'Be sure not to take aspirin when you have chickenpox. It can cause'
        "Reye's Syndrome, a serious condition"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Chickenpox',
          style: TextStyle(fontSize: 25),
        ),
        backgroundColor: Colors.white,
        foregroundColor: const Color.fromRGBO(6, 174, 213, 1),
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: const [
                SizedBox(
                  width: 25,
                ),
              ], // children
            ),
            const SizedBox(
              width: 400,
              child: Text(
                'Overview',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(6, 174, 213, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Text(
              'Chickenpox is an illness caused by the varicella zoster virus. It is a classic '
              'childhood illness that causes a red, itchy rash, fever, headache, sore throat '
              'and body aches. The rash forms blisters that break open and leak before they '
              'scab over. Most cases of chickenpox are mild, but some people can have '
              'complications, including infection, pneumonia, and encephalitis. Chickenpox '
              'is very contagious, but the chickenpox vaccine has greatly reduced the number '
              'of cases of chickenpox.',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 2),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 400,
              child: Text(
                'Other Names',
                style: TextStyle(
                  color: Color.fromRGBO(6, 174, 213, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 400,
              child: Text(
                'Varicella zoster',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  height: 2,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 400,
              child: Text(
                'Symptoms',
                style: TextStyle(
                  color: Color.fromRGBO(6, 174, 213, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: symptoms.map((strone) {
                    return Row(children: [
                      const Text(
                        "\u2022",
                        style: TextStyle(fontSize: 15),
                      ), //bullet text
                      const SizedBox(
                        width: 10,
                      ), //space between bullet and text
                      Expanded(
                        child: Text(
                          strone,
                          style: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'DM Sans',
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            height: 2,
                          ),
                        ), //text
                      )
                    ]);
                  }).toList(),
                )),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 400,
              child: Text(
                'Treatment',
                style: TextStyle(
                  color: Color.fromRGBO(6, 174, 213, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 400,
              child: Text(
                'In most people, chickenpox usually clears up in about five to seven '
                'days without treatment. If you are at risk for complications with '
                'chickenpox, your doctor may give you an antiviral medication to help '
                'reduce your symptoms.',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  height: 2,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 400,
              child: Text(
                'Prevention',
                style: TextStyle(
                  color: Color.fromRGBO(6, 174, 213, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 400,
              child: Text(
                'The best way to prevent chickenpox is to have the chickenpox vaccine. '
                'If you do get chickenpox, you can spread it easily to anyone who '
                "hasn't had the virus or a vaccination. You can help prevent spreading "
                'it to others by staying home from work or school until all of your '
                'blisters have scabbed over and not coughing or sneezing on anyone.',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  height: 2,
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 400,
              child: Text(
                'Alternative treatments / Home remedies',
                style: TextStyle(
                  color: Color.fromRGBO(6, 174, 213, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: alternatives.map((strone) {
                    return Row(children: [
                      const Text(
                        "\u2022",
                        style: TextStyle(fontSize: 15),
                      ), //bullet text
                      const SizedBox(
                        width: 10,
                      ), //space between bullet and text
                      Expanded(
                        child: Text(
                          strone,
                          style: const TextStyle(
                            color: Color.fromRGBO(0, 0, 0, 1),
                            fontFamily: 'DM Sans',
                            fontSize: 13,
                            fontWeight: FontWeight.normal,
                            height: 2,
                          ),
                        ), //text
                      )
                    ]);
                  }).toList(),
                )),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              width: 400,
              child: Text(
                'Made Worse By',
                style: TextStyle(
                  color: Color.fromRGBO(6, 174, 213, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              width: 400,
              child: Text(
                'Scratching the blisters can make symptoms worse.',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  height: 2,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
