import 'package:flutter/material.dart';
import './diseases/AcuteSinusitis.dart';
import './diseases/BirdFlu.dart';
import './diseases/Chickenpox.dart';
import './diseases/Dengue.dart';
import './diseases/Ebola.dart';

class HealthLibrary extends StatefulWidget {
  const HealthLibrary({super.key});

  @override
  State<HealthLibrary> createState() => _HealthLibrary();
}

class _HealthLibrary extends State<HealthLibrary> {
  @override
  static List<Diseases> listOfDisease = [
    Diseases("Acute Sinusitis", 'assets/images/acute sinusitis.png'),
    Diseases("Bird Flu", 'assets/images/bird flue.png'),
    Diseases("Chicken Pox", 'assets/images/chicken pox.png'),
    Diseases("Dengue", 'assets/images/dengue.png'),
    Diseases("Ebola", 'assets/images/ebola.png'),
  ];

  List<Diseases> display_list = List.from(listOfDisease);

  void updateList(String value) {
    setState(() {
      display_list = listOfDisease
          .where((element) =>
              element.name!.toLowerCase().contains(value.toLowerCase()))
          .toList();
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(6, 174, 213, 1),
          centerTitle: true,
          automaticallyImplyLeading: true,
          title: const Text(
            "Health Library",
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                onChanged: (value) => updateList(value),
                decoration: InputDecoration(
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  hintText: "Enter Health Diseases",
                  prefixIcon: const Icon(Icons.search),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: display_list.length,
                    itemBuilder: (context, index) => Card(
                        shape: const Border(
                          top: BorderSide(
                              width: 1, color: Color.fromRGBO(6, 174, 213, 1)),
                          bottom: BorderSide(
                              width: 1, color: Color.fromRGBO(6, 174, 213, 1)),
                        ),
                        child: ListTile(
                          title: Text(display_list[index].name!),
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
                              } else if (display_list[index].name == 'Dengue') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const DengueWidget()),
                                );
                              } else if (display_list[index].name == 'Ebola') {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const EbolaWidget()),
                                );
                              }
                            },
                          ),
                          leading: SizedBox(
                            height: 50,
                            width: 50,
                            child: Image(
                                image: AssetImage(display_list[index].image!),
                                fit: BoxFit.cover),
                          ),
                        ))),
              ),
            ],
          )),
        ));
  }
}

class Diseases {
  String? name;
  String? image;
  Diseases(this.name, this.image);
}

class Disease_data {
  String? title;
  String? details;
  String? othernames;
  late List<String> symptoms;
  late List<String> treatments;
  String? prevention;
  late List<String> worse;
}
