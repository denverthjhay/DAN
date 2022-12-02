import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class mainmenuWidget extends StatefulWidget {
  @override
  _mainmenuWidgetState createState() => _mainmenuWidgetState();
}

class _mainmenuWidgetState extends State<mainmenuWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: toBuildAppBar(),
      drawer: toBuildDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [],
            ),
          ),
        ),
      ),
    );
  }
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
        Expanded(
          child: Align(
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
        ),
      ],
    ),
  );
}
