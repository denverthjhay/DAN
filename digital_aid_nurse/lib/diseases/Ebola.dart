import 'package:flutter/material.dart';

class EbolaWidget extends StatefulWidget {
  const EbolaWidget({super.key});

  @override
  State<EbolaWidget> createState() => _EbolaWidget();
}

class _EbolaWidget extends State<EbolaWidget> {
  List<String> symptoms = [
    'High fever',
    'Headache',
    'Joint and muscle aches',
    'Sore throat',
    'Weakness',
    'Stomach Pain',
    'Lack of appetite'
  ];
  List<String> treatments = [
    'Fluids and electrolytes',
    'Oxygen',
    'Blood pressure medication',
    'Blood transfusions',
    'Treatment for other infections'
  ];
  List<String> prevention = [
    'Avoid traveling to areas where the virus is found',
    'Avoid contact with infected people and animals',
    'Avoid contact with semen from a man who has recovered from Ebola until testing '
        'shows the infection has been completely cleared',
    'Avoid touching or handling things a person infected with Ebola may have '
        'come in contact with, such as clothes, needles, and medical equipment',
    "If you're a health care worker, wear masks, gloves, and goggles whenever "
        'you come into contact with people who may have Ebola',
    "rVSV-ZEBOV (Ervebo) Vaccine which prevents the Zaire strain of the virus",
    "ad26.ZEBOV (Zabdeno) and MVA-BN-Filo (Mvabea) vaccines"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Ebola Virus Infection',
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
              'Ebola is a deadly disease caused by a virus. The disease was known as '
              'Ebola hemorrhagic fever but it is now referred to as Ebola Virus. '
              'Ebola gets its name from the Ebola River, which is near one of the '
              'villages in the Democratic Republic of Congo where the disease first '
              'appeared. There are five strains, and '
              'four of them can make people sick. After entering the body, it kills cells '
              'making some of them explode. It wrecks the immune system, causes heavy '
              'bleeding inside the body, and damages almost ever organ. The virus is '
              "scary, but it's also rare. Ebola isn't as contagious as more common "
              'viruses like colds, influenza, or measles. You can only get it from '
              'direct contact with the skin or bodily fluids of an infected person '
              'or infected animal, like a monkey, chimp, or fruit bat.',
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
                'Ebola Virus Disease (EVD), Ebola hemorrhagic fever (EHF)',
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
            const SizedBox(
              width: 400,
              child: Text(
                'Early on, Ebola can feel like the flu or other illnesses. Symptoms can '
                'show up to 2 to 21 days after infection and usually include : ',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  height: 2,
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
                "There's no cure for Ebola, though researchers are working on it. There "
                'are two drug treatments which have been approved for treating Ebola. '
                'Inmazed is a mixture of three monoclonal antibodies (atoltivimab, '
                'maftivimab, and odesivimab-ebgn). Ansuvimab-zykl (Ebanga) is a '
                'monoclonal antibody given as an injection. It helps block the virus '
                'from the cell receptor, preventing its entry into the cell. Doctors '
                'manage the symptoms of Ebola with: ',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                  height: 2,
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
          ]),
        ),
      ),
    );
  }
}
