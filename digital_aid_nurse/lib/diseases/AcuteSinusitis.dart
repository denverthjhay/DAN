import 'package:flutter/material.dart';

class AcuteSinusitisWidget extends StatefulWidget {
  const AcuteSinusitisWidget({super.key});

  @override
  State<AcuteSinusitisWidget> createState() => _AcuteSinusitisWidget();
}

class _AcuteSinusitisWidget extends State<AcuteSinusitisWidget> {
  List<String> symptoms = [
    'Sinus pain and tenderness',
    'Facial Redness and swelling over sinuses',
    'Teeth pain',
    'Dizziness and poor balance',
    'Fatigue',
    'Eye pain',
    'Sinus congestion and drainage',
    'Temporary loss of sense of taste and smell'
  ];
  List<String> treatments = [
    'Flushing nasal passages with warm salt water or saline nasal spray',
    'Warm packs',
    'Antibiotics for bacterial infections',
    'Cortisone and other nasal sprays for inflammation and allergy control',
    'Sinus drainage procedures',
    'Oral antihistamines and/or decongestants'
  ];
  List<String> worse = [
    'Allergies',
    'Air pollution',
    'Wood Stoves',
    'Smoking',
    'Upper respiratory infections',
    'Immune deficiencies',
    'Nasal Polyps',
    'Snorting drugs up the nose'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Acute Sinusitis',
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
              'Acute sinusitis is an inflammation of the sinuses caused by infection '
              'lasting less than 4 weeks. Sinusitis often develops when swelling, inflammation, '
              'and mucus from a cold block nasal passages. This makes it easier for bacteria '
              'to grow. Organisms can produce gas, and when your sinuses are not draining, '
              'pressure can quickly build and cause the infection to spread. Viruses are the '
              'most common cause of acute sinusitis, but bacteria, fungi and allergies may also '
              'cause it. Sinus pain and tenderness are common, but severe pain may indicate an '
              'abscess or other complication.',
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
                'Sinus infection, sinus headache',
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
            Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: treatments.map((strone) {
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
                'Avoid upper respiratory infections, Try to stay away from people '
                'who have colds or who are sick with other infections. Wash your hands '
                'frequently with soap and water, especially before your meals',
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
                'Alternative Treatments / Home Remedies',
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
                'At the first sign of sinus pain, you may be able to head off an '
                'infection by irrigating your sinuses at home using a nasal syringe '
                'or neti pot filled with sterile warm salt water. Avoid overusing '
                'antihistamines; they may dry your sinuses and cause irritation. '
                'You can use non-prescription decongestant sprays if your doctor '
                'says its okay, but not for more than 1 to 3 days as they may cause '
                'rebound congestion. Natural remedies that may help some people '
                'include bromelain and steam inhalation. If you have bloody, '
                'discolored sinus drainage or sever pain, see your doctor as soon '
                'as possible.',
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
                'Made Worse By: ',
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
                  children: worse.map((strone) {
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
          ]),
        ),
      ),
    );
  }
}
