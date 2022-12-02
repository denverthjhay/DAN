import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class mainmenuWidget extends StatefulWidget {
  @override
  _mainmenuWidgetState createState() => _mainmenuWidgetState();
}

class _mainmenuWidgetState extends State<mainmenuWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: First',
      style: optionStyle,
    ),
    Text(
      'Index 1: Second',
      style: optionStyle,
    ),
  ];

  //METHOD TO SET STATE
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: toBuildAppBar(),
      drawer: toBuildDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              searchBox(),
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromRGBO(6, 174, 213, 1),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mainmenuWidget()),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'DM Sans',
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            children: <InlineSpan>[
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(
                                    FontAwesomeIcons.stethoscope,
                                    color: Color.fromRGBO(255, 217, 59, 1),
                                    size: 12,
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
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromRGBO(6, 174, 213, 1),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mainmenuWidget()),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'DM Sans',
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            children: <InlineSpan>[
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(
                                    FontAwesomeIcons.bookOpen,
                                    color: Color.fromRGBO(255, 217, 59, 1),
                                    size: 12,
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
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromRGBO(6, 174, 213, 1),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mainmenuWidget()),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'DM Sans',
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            children: <InlineSpan>[
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(
                                    FontAwesomeIcons.pills,
                                    color: Color.fromRGBO(255, 217, 59, 1),
                                    size: 12,
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
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Color.fromRGBO(6, 174, 213, 1),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => mainmenuWidget()),
                          );
                        },
                        child: RichText(
                          text: TextSpan(
                            style: TextStyle(
                              fontFamily: 'DM Sans',
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                            ),
                            children: <InlineSpan>[
                              WidgetSpan(
                                  alignment: PlaceholderAlignment.middle,
                                  child: Icon(
                                    FontAwesomeIcons.filePrescription,
                                    color: Color.fromRGBO(255, 217, 59, 1),
                                    size: 12,
                                  )),
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
              Container(
                width: 400,
                child: Text(
                  'Health Forums',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Column(children: [
                Container(
                  height: 150.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Rectangle114.png'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.only(
                        topRight: const Radius.circular(10.0),
                        topLeft: const Radius.circular(10.0)),
                  ),
                ),
                Container(
                    height: 40.0,
                    width: 320.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0)),
                    ),
                    child: Column(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'COVID-19: Rebuilding for Resilience',
                          style: TextStyle(
                            color: Color.fromRGBO(6, 174, 213, 1),
                            fontFamily: 'DM Sans',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Two years into the COVID-19 pandemic, we’ve learned a lot about resilience: what makes us stronger, safer and more adaptable –– and what doesn’t. ',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]))
              ]),
              const SizedBox(
                height: 25,
              ),
              Column(children: [
                Container(
                  height: 150.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Forum2.png'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.only(
                        topRight: const Radius.circular(10.0),
                        topLeft: const Radius.circular(10.0)),
                  ),
                ),
                Container(
                    height: 40.0,
                    width: 320.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0)),
                    ),
                    child: Column(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Looking after our mental health',
                          style: TextStyle(
                            color: Color.fromRGBO(6, 174, 213, 1),
                            fontFamily: 'DM Sans',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'The new realities of working from home, temporary unemployment, home-schooling of children, and lack of physical contact with other family memb...',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]))
              ]),
              const SizedBox(
                height: 25,
              ),
              Column(children: [
                Container(
                  height: 150.0,
                  width: 320.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/Forum3.png'),
                      fit: BoxFit.cover,
                    ),
                    border: Border.all(color: Colors.grey, width: 1),
                    borderRadius: BorderRadius.only(
                        topRight: const Radius.circular(10.0),
                        topLeft: const Radius.circular(10.0)),
                  ),
                ),
                Container(
                    height: 40.0,
                    width: 320.0,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey, width: 1),
                      borderRadius: BorderRadius.only(
                          bottomLeft: const Radius.circular(10.0),
                          bottomRight: const Radius.circular(10.0)),
                    ),
                    child: Column(children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Finding your own Doctor?',
                          style: TextStyle(
                            color: Color.fromRGBO(6, 174, 213, 1),
                            fontFamily: 'DM Sans',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Choosing a new doctor can be a challenge, especially if you have moved to a new community. Asking for recommendations from co-workers, neighbors, and...',
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ]))
              ]),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Doctors',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
          selectedLabelStyle: TextStyle(fontSize: 18),
          selectedItemColor: Color.fromRGBO(6, 174, 213, 1),

          //THIS METHOD NEEDS TO BE CALLED TO CHANGE THE STATE
          onTap: _onItemTapped,
          currentIndex: _selectedIndex),
    );
  }
}

Widget searchBox() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: Color.fromARGB(235, 235, 235, 235),
      borderRadius: BorderRadius.circular(20),
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

AppBar toBuildAppBar() {
  return AppBar(
    backgroundColor: Color.fromRGBO(6, 174, 213, 1),
    centerTitle: true,
    automaticallyImplyLeading: true,
    title: const Text(
      "Main Menu",
    ),
  );
}

Drawer toBuildDrawer() {
  return Drawer(
    child: ListView(
      padding: const EdgeInsets.all(10),
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
