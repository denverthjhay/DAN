import 'package:flutter/material.dart';

class DengueWidget extends StatefulWidget {
  const DengueWidget({super.key});

  @override
  State<DengueWidget> createState() => _DengueWidget();
}

class _DengueWidget extends State<DengueWidget> {
  List<String> symptoms = [
    'High fever (up to 105° F',
    'Severe headache or pain behind the eyes',
    'Joint and muscle pain',
    'Rashes',
    'Mild bleeding or easy bruising',
    'Severe abdominal pain',
    'Persistent vomiting',
    'Trouble breathing',
    'Red spots or patches on skin',
    'Bleeding from nose or gums',
    'Vomiting blood',
    'Purplish bruises from bleeding under skin',
    'Fluids leaking outside blood vessels',
    'Bleeding from urinary and gastrointestinal tract',
    'Dangerously low blood pressure',
    'Weak pulse',
    'Blue skin and lips',
    'Sweatiness'
  ];
  List<String> treatments = [
    'Getting plenty of bed rest',
    'Drinking plenty of fluids to prevent dehydration',
    'Taking over-the-counter acetaminophen for pain and fever',
    'Avoiding drugs containing ibuprofen, naproxen, or aspirin because of the '
        'risk of hemorrhage',
    'Intravenous (IV) fluids',
    'Blood and platelet transfusion',
    'Blood pressure support (for severe dengue fever)'
  ];
  List<String> prevention = [
    'If possible, avoid travel to areas during peak dengue transmission season or when '
        "an outbreak is occurring. Check the CDC Traveler's Health web page for more info",
    'Especially during the day, when Aedes mosquitoes bite, wear a long-sleeved shirt, '
        'long pants, socks, and shoes and use a mosquito repellant with DEET on your skin '
        'and clothes',
    'Try to spend your time in places with good screens or air conditioning',
    'Keep unscreened windows and doors closed',
    'Get rid of mosquito-breeding areas, such as standing water in flowerpots'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dengue Fever',
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
              'Dengue fever is a flu-like illness that is passed between people via bites '
              'from the Aedes mosquito. Dengue hemorrhagic fever, a severe form of the '
              'illness, can be fatal if not treated early in a hospital. There is no cure '
              'for the illness, so treatment addresses the symptoms. People who live in or '
              'travel to tropical or subtropical areas are most likely to get it, and most '
              'people recover. Anyone who has symptoms of dengue fever should see a doctor. '
              'Keep in mind that other, less serious health conditions can cause the same '
              'symptoms.',
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
                'Break-bone fever, dandy fever',
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
            Container(
                padding: const EdgeInsets.all(10),
                child: Column(
                  children: prevention.map((strone) {
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
                'Previous dengue fever',
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
