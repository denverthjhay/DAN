import 'dart:html';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './diseases/AcuteSinusitis.dart';
import './diseases/BirdFlu.dart';
import './diseases/Chickenpox.dart';
import './diseases/Dengue.dart';
import './diseases/Ebola.dart';

class symptomscheckerWidget extends StatefulWidget {
  const symptomscheckerWidget({Key? key}) : super(key: key);

  @override
  State<symptomscheckerWidget> createState() => _symptomscheckerWidgetState();
}

class _symptomscheckerWidgetState extends State<symptomscheckerWidget> {
  List<String> litems = [];
  bool input = false;
  TextEditingController eCtrl = TextEditingController();
  static List<Diseases> listOfDisease = [
    Diseases(
      "Acute Sinusitis",
      "Sinus pain and tenderness",
      "Redness and swelling over sinuses",
      "Teeth pain",
    ),
    Diseases(
      "Bird Flu",
      'Fever',
      'Cough',
      'Sore throat',
    ),
    Diseases(
      "Chicken Pox",
      'Blistering rash',
      'Swollen Lymph Glands',
      'Fever and Chills',
    ),
    Diseases(
      "Dengue",
      'High fever',
      'Severe headache or pain behind the eyes',
      'Joint and muscle pain',
    ),
    Diseases(
      "Ebola",
      'High fever',
      'Headache',
      'Joint and muscle aches',
    ),
  ];

  List<Diseases> display_list = List.from(listOfDisease);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: toBuildAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(235, 235, 235, 235),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: TextField(
                  controller: eCtrl,
                  onSubmitted: (text) {
                    litems.add(text);
                    setState(() {
                      display_list = listOfDisease
                          .where((element) =>
                              element.description1!
                                  .toLowerCase()
                                  .contains(text.toLowerCase()) ||
                              element.description2!
                                  .toLowerCase()
                                  .contains(text.toLowerCase()) ||
                              element.description3!
                                  .toLowerCase()
                                  .contains(text.toLowerCase()))
                          .toList();
                      eCtrl.clear();
                    });
                    input = true;
                  },
                  decoration: const InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 2, color: Colors.grey),
                    ),
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: 20,
                    ),
                    prefixIconConstraints: BoxConstraints(
                      maxHeight: 30,
                      minWidth: 30,
                    ),
                    border: InputBorder.none,
                    hintText: 'Search conditions drugs...',
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Symptoms:',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'DM Sans',
                    fontSize: 18,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    height: 1),
              ),
              const SizedBox(
                height: 5,
              ),
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(235, 235, 235, 235),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: SizedBox(
                  height: 200,
                  child: ListView.separated(
                      padding: const EdgeInsets.all(8),
                      shrinkWrap: true,
                      itemCount: litems.length,
                      separatorBuilder: (BuildContext context, int index) {
                        return const SizedBox(
                          height: 10,
                        );
                      },
                      itemBuilder: (BuildContext ctxt, int Index) {
                        return Container(
                          height: 30,
                          width: 50,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(6, 174, 213, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Text(
                              litems[Index],
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'DM Sans',
                                  fontSize: 13,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.normal,
                                  height: 1),
                            ),
                          ),
                        );
                      }),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                'Possible Illnesses:',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'DM Sans',
                    fontSize: 18,
                    letterSpacing: 0,
                    fontWeight: FontWeight.bold,
                    height: 1),
              ),
              const Divider(
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 0,
                color: Colors.black,
              ),
              const SizedBox(
                height: 25,
              ),
              if (input == true) ...[
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(235, 235, 235, 235),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: SizedBox(
                      height: 200,
                      child: ListView.builder(
                          itemCount: display_list.length,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                            return Container(
                              height: 40,
                              width: 50,
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(235, 235, 235, 235),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: ListTile(
                                title: Text(
                                  display_list[index].name!,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontFamily: 'DM Sans',
                                      fontSize: 13,
                                      letterSpacing: 0,
                                      fontWeight: FontWeight.normal,
                                      height: 1),
                                ),
                                trailing: IconButton(
                                  icon: const Icon(
                                    Icons.arrow_forward_ios,
                                    color: Color.fromRGBO(6, 174, 213, 1),
                                  ),
                                  onPressed: () {
                                    // Navigate to other Screens
                                    if (display_list[index].name ==
                                        'Acute Sinusitis') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const AcuteSinusitisWidget()),
                                      );
                                    } else if (display_list[index].name ==
                                        'Bird Flu') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const BirdFluWidget()),
                                      );
                                    } else if (display_list[index].name ==
                                        'Chicken Pox') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const ChickenpoxWidget()),
                                      );
                                    } else if (display_list[index].name ==
                                        'Dengue') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const DengueWidget()),
                                      );
                                    } else if (display_list[index].name ==
                                        'Ebola') {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const EbolaWidget()),
                                      );
                                    }
                                  },
                                ),
                              ),
                            );
                          })),
                ),
              ] else ...[
                Container(
                  height: 200,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(235, 235, 235, 235),
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class Diseases {
  String? name;
  String? description1;
  String? description2;
  String? description3;
  Diseases(this.name, this.description1, this.description2, this.description3);
}

AppBar toBuildAppBar() {
  return AppBar(
    elevation: 15,
    toolbarHeight: 70,
    iconTheme: const IconThemeData(
      color: Colors.black,
    ),
    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    centerTitle: false,
    automaticallyImplyLeading: true,
    title: const Text("Check Symptoms",
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'DM Sans',
            fontSize: 23,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1)),
  );
}
