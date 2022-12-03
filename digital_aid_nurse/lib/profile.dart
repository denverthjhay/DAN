import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class profileWidget extends StatefulWidget {
  @override
  _profileWidgetState createState() => _profileWidgetState();
}

class _profileWidgetState extends State<profileWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: toBuildAppBar(),
      body: ListView(
        children: <Widget>[
          const SizedBox(
            height: 15,
          ),
          Container(
            height: 150,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(6, 174, 213, 1),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const <Widget>[
                    Text(
                      'Hi John!',
                      style: TextStyle(
                        fontSize: 45,
                        fontFamily: 'Arial',
                        fontWeight: FontWeight.w400,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 50,
                    ),
                    CircleAvatar(
                      backgroundColor: Colors.white70,
                      minRadius: 55.0,
                      child: CircleAvatar(
                        radius: 50.0,
                        backgroundImage: AssetImage('assets/images/selfie.jpg'),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "Account Details",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'DM Sans',
                    color: Color.fromRGBO(153, 153, 153, 1),
                  ),
                ),
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.circleUser,
                  color: Color.fromRGBO(6, 174, 213, 1),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  color: const Color.fromRGBO(6, 174, 213, 1),
                  onPressed: () => {
                    //to do route soon
                  },
                ),
                title: const Text(
                  'Display Profile Information',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Color.fromRGBO(61, 61, 61, 1),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Divider(),
              const SizedBox(
                height: 30,
              ),
              Container(
                padding: const EdgeInsets.only(left: 20),
                alignment: Alignment.centerLeft,
                child: const Text(
                  "My Tools",
                  style: TextStyle(
                    fontSize: 15.0,
                    fontFamily: 'DM Sans',
                    color: Color.fromRGBO(153, 153, 153, 1),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.addressBook,
                  color: Color.fromRGBO(6, 174, 213, 1),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  color: const Color.fromRGBO(6, 174, 213, 1),
                  onPressed: () => {
                    //to do route soon
                  },
                ),
                title: const Text(
                  'Saved Contacts',
                  style: TextStyle(
                    color: Color.fromRGBO(61, 61, 61, 1),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.clock,
                  color: Color.fromRGBO(6, 174, 213, 1),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  color: const Color.fromRGBO(6, 174, 213, 1),
                  onPressed: () => {
                    //to do route soon
                  },
                ),
                title: const Text(
                  'Health Calender and History',
                  style: TextStyle(
                    color: Color.fromRGBO(61, 61, 61, 1),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.bookmark,
                  color: Color.fromRGBO(6, 174, 213, 1),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  color: const Color.fromRGBO(6, 174, 213, 1),
                  onPressed: () => {
                    //to do route soon
                  },
                ),
                title: const Text(
                  'Saved Forum Posts',
                  style: TextStyle(
                    color: Color.fromRGBO(61, 61, 61, 1),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.virus,
                  color: Color.fromRGBO(6, 174, 213, 1),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  color: const Color.fromRGBO(6, 174, 213, 1),
                  onPressed: () => {
                    //to do route soon
                  },
                ),
                title: const Text(
                  'Saved Conditions, Diseases, and Illnesses',
                  style: TextStyle(
                    color: Color.fromRGBO(61, 61, 61, 1),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Divider(),
              ListTile(
                leading: const Icon(
                  FontAwesomeIcons.pills,
                  color: Color.fromRGBO(6, 174, 213, 1),
                ),
                trailing: IconButton(
                  icon: const Icon(Icons.arrow_forward_ios),
                  color: const Color.fromRGBO(6, 174, 213, 1),
                  onPressed: () => {
                    //to do route soon
                  },
                ),
                title: const Text(
                  'Saved Drugs and Medicines',
                  style: TextStyle(
                    color: Color.fromRGBO(61, 61, 61, 1),
                    fontSize: 16,
                    fontFamily: 'DM Sans',
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
              const Divider(),
            ],
          )
        ],
      ),
    );
  }
}

AppBar toBuildAppBar() {
  return AppBar(
    backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
    automaticallyImplyLeading: false,
    title: const Text("Profile",
        style: TextStyle(
          color: Color.fromRGBO(61, 61, 61, 1),
          fontFamily: 'DM Sans',
          fontSize: 23,
          fontWeight: FontWeight.normal,
        )),
    actions: <Widget>[
      TextButton(
        onPressed: () {},
        child: const Text('Sign Out',
            style: TextStyle(
              color: Color.fromRGBO(6, 174, 213, 1),
              fontFamily: 'DM Sans',
              fontSize: 23,
              fontWeight: FontWeight.normal,
            )),
      ),
    ],
  );
}
