import 'dart:io';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './symptomschecker.dart';
import './medicineidentifier.dart';
import './medicinereminder.dart';
import './forums.dart';
import './healthlib.dart';

class homeWidget extends StatefulWidget {
  @override
  _homeWidgetState createState() => _homeWidgetState();
}

class _homeWidgetState extends State<homeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: toBuildDrawer(),
      appBar: toBuildAppBar(context),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromRGBO(6, 174, 213, 1),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => symptomscheckerWidget()),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'DM Sans',
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            children: <InlineSpan>[
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(
                                    FontAwesomeIcons.stethoscope,
                                    color: Color.fromRGBO(255, 217, 59, 1),
                                    size: 14,
                                  )),
                              TextSpan(
                                text: "  Check Symptoms",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromRGBO(6, 174, 213, 1),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HealthLibrary()),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'DM Sans',
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            children: <InlineSpan>[
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(
                                    FontAwesomeIcons.bookOpen,
                                    color: Color.fromRGBO(255, 217, 59, 1),
                                    size: 14,
                                  )),
                              TextSpan(
                                text: "  Health Library",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromRGBO(6, 174, 213, 1),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    medicineidentifierWidget()),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'DM Sans',
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            children: <InlineSpan>[
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(
                                    FontAwesomeIcons.pills,
                                    color: Color.fromRGBO(255, 217, 59, 1),
                                    size: 14,
                                  )),
                              TextSpan(
                                text: "  Medicine Identifier",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 50,
                      width: 170,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromRGBO(6, 174, 213, 1),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => medicinereminderWidget()),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'DM Sans',
                              fontSize: 13,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            children: <InlineSpan>[
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(FontAwesomeIcons.filePrescription,
                                      color: Color.fromRGBO(255, 217, 59, 1),
                                      size: 14)),
                              TextSpan(
                                text: "  Medecine Reminder",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              //Health forums
              Container(
                width: 400,
                child: Text(
                  'Health Forums',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(
                children: [
                  Container(
                    height: 255,
                    width: 350.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 0.3),
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 7,
                          offset: Offset(1, 10),
                        ),
                      ],
                    ),
                    child: Column(children: [
                      Container(
                          height: 170.0,
                          width: 350.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(7.0),
                                topLeft: Radius.circular(7.0)),
                            image: DecorationImage(
                              image:
                                  AssetImage('assets/images/Rectangle114.png'),
                              fit: BoxFit.cover,
                            ),
                          )),
                      Container(
                          height: 35,
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                color: Color.fromRGBO(6, 174, 213, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text(
                                'COVID-19: Rebuilding for Resilience'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => forumsWidget()),
                              );
                            },
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Two years into the COVID-19 pandemic, we’ve learned a lot about resilience: what makes us stronger, safer and more adaptable –– and what doesn’t. ',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  //Page 2
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    height: 255,
                    width: 350.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 0.3),
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 7,
                          offset: Offset(1, 10),
                        ),
                      ],
                    ),
                    child: Column(children: [
                      Container(
                          height: 170.0,
                          width: 350.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(7.0),
                                topLeft: Radius.circular(7.0)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/Forum2.png'),
                              fit: BoxFit.cover,
                            ),
                          )),
                      Container(
                          height: 35,
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                color: Color.fromRGBO(6, 174, 213, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child:
                                const Text('Looking after our mental health'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => forumsWidget()),
                              );
                            },
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'The new realities of working from home, temporary unemployment, home-schooling of children, and lack of physical contact with other family memb...',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  //Page 3
                  Container(
                    height: 255,
                    width: 350.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black, width: 0.3),
                      borderRadius: BorderRadius.all(Radius.circular(7)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 7,
                          offset: Offset(1, 10),
                        ),
                      ],
                    ),
                    child: Column(children: [
                      Container(
                          height: 170.0,
                          width: 350.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(7.0),
                                topLeft: Radius.circular(7.0)),
                            image: DecorationImage(
                              image: AssetImage('assets/images/Forum3.png'),
                              fit: BoxFit.cover,
                            ),
                          )),
                      Container(
                          height: 35,
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                color: Color.fromRGBO(6, 174, 213, 1),
                                fontFamily: 'DM Sans',
                                fontSize: 17,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            child: const Text('Finding your own Doctor?'),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => forumsWidget()),
                              );
                            },
                          )),
                      Container(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Choosing a new doctor can be a challenge, especially if you have moved to a new community. Asking for recommendations from co-workers, neighbors, and...',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 12,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                    ]),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget searchBox(context) {
  return Container(
    decoration: BoxDecoration(
      color: Color.fromARGB(235, 235, 235, 235),
      borderRadius: BorderRadius.circular(10),
    ),
    child: TextField(
      // onChanged: (value) => searchYourToDo(value),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(10),
        prefixIcon: Icon(
          Icons.search,
          color: Colors.grey,
          size: 20,
        ),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 20,
          minWidth: 25,
        ),
        border: InputBorder.none,
        hintText: 'Search conditions drugs...',
        hintStyle: TextStyle(color: Colors.grey),
      ),
    ),
  );
}

AppBar toBuildAppBar(context) {
  return AppBar(
    backgroundColor: Color.fromRGBO(6, 174, 213, 1),
    centerTitle: true,
    automaticallyImplyLeading: true,
    title: searchBox(context),
  );
}

Drawer toBuildDrawer() {
  return Drawer(
    child: ListView(
      padding: const EdgeInsets.all(25),
      children: [
        ListTile(
          leading: ConstrainedBox(
            constraints: BoxConstraints(
              minWidth: 44,
              minHeight: 44,
              maxWidth: 65,
              maxHeight: 65,
            ),
            child:
                Image.asset('assets/images/Rectangle87.png', fit: BoxFit.cover),
          ),
          title: const Text(
            'DIGITAL AID NURSE',
            style: TextStyle(
                color: Color.fromRGBO(6, 174, 213, 1),
                fontFamily: 'DM Sans',
                fontSize: 13,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 2),
          ),
          onTap: () {},
        ),
        const Divider(
          color: Colors.grey,
          thickness: 0.08, //thicknes
        ),
        ListTile(
          leading: Icon(
            FontAwesomeIcons.bookOpen,
            color: Color.fromRGBO(6, 174, 213, 1),
          ),
          title: const Text(
            'History',
            style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 13,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 2),
          ),
          onTap: () {},
        ),
        const Divider(
          color: Colors.grey,
          thickness: 0.08, //thicknes
        ),
        ListTile(
          leading: Icon(
            Icons.notifications,
            color: Color.fromRGBO(6, 174, 213, 1),
          ),
          title: const Text(
            'Notifications',
            style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 13,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 2),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.newspaper,
            color: Color.fromRGBO(6, 174, 213, 1),
          ),
          title: const Text(
            'News letter',
            style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 13,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 2),
          ),
          onTap: () {},
        ),
        const Divider(
          color: Colors.grey,
          thickness: 0.08, //thicknes
        ),
        ListTile(
          title: const Text(
            'Feedback',
            style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 13,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 2),
          ),
          onTap: () {},
        ),
        ListTile(
          title: RichText(
            text: TextSpan(
              text: 'About ',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'DM Sans',
                fontSize: 13,
                fontWeight: FontWeight.normal,
              ),
              children: const <TextSpan>[
                TextSpan(
                    text: 'DAN',
                    style: TextStyle(
                      color: Color.fromRGBO(6, 174, 213, 1),
                    )),
              ],
            ),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Terms of Use',
            style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 13,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 2),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Privacy Policy ',
            style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 13,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 2),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Rate and Review',
            style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 13,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 2),
          ),
          onTap: () {},
        ),
        ListTile(
          title: const Text(
            'Tell a Friend',
            style: TextStyle(
                fontFamily: 'DM Sans',
                fontSize: 13,
                letterSpacing: 0,
                fontWeight: FontWeight.normal,
                height: 2),
          ),
          onTap: () {},
        ),
        const Divider(
          color: Colors.grey,
          thickness: 0.08, //thicknes
        ),
        Align(
          alignment: FractionalOffset.bottomCenter,
          child: ListTile(
            leading: Icon(
              Icons.settings,
              color: Color.fromRGBO(6, 174, 213, 1),
            ),
            title: const Text(
              'Settings',
              style: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 2),
            ),
            onTap: () {},
          ),
        ),
      ],
    ),
  );
}
