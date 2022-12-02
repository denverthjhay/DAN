import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../loginscreen.dart';

class BirdFluWidget extends StatefulWidget {
  const BirdFluWidget({super.key});

  @override
  State<BirdFluWidget> createState() => _BirdFluWidget();
}

class _BirdFluWidget extends State<BirdFluWidget> {
  List<String> symptoms = [
    'Fever',
    'Cough',
    'Sore throat',
    'Muscle aches',
    'Vomiting',
    'Diarrhea',
    'Eye infections'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Bird Flu',
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
              'Bird flu is a type of flu virus that occurs in birds. In rare cases, this '
              'virus can spread to people, usually through contact with an infected bird. '
              'In a very few cases, bird flu has been spread from one person to another. '
              'In humans, the bird flu is often very serious and can cause death.',
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
                'Avian Influenza, H5N1, H5N2, and H5N8 viruses',
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
                'Bird flu is usually treated with antiviral medications. Treatment is most '
                'effective if started early.',
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
                'Avoid touching your mouth, nose, or eyes after contact with birds '
                'or surfaces that may be contaminated with saliva, mucous, or feces '
                'from wild or domestic birds. Change your clothes before contact '
                'with healthy domestic poultry and after handling wild birds',
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
          ]),
        ),
      ),
    );
  }
}
