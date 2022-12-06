import 'package:flutter/material.dart';
import './loginscreen.dart';

class createaccountscreenWidget extends StatefulWidget {
  @override
  _createaccountscreenWidget createState() => _createaccountscreenWidget();
}

class _createaccountscreenWidget extends State<createaccountscreenWidget> {
  bool agree = false;
  void _doSomething() {
    // Do something
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: SingleChildScrollView(
          child: Column(children: [
            Row(
              children: [
                Container(
                  child: IconButton(
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => loginscreenWidget()),
                      );
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      color: Color.fromRGBO(6, 174, 213, 1),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 25,
                ),
                const Text(
                  'Create your account',
                  style: TextStyle(
                      color: Color.fromRGBO(6, 174, 213, 1),
                      fontFamily: 'DM Sans',
                      fontSize: 25,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 2),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            const Text(
              'Create an account to enjoy the services of DAN',
              style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  letterSpacing: 0,
                  fontWeight: FontWeight.normal,
                  height: 2),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              width: 400,
              child: Text(
                'Email',
                textAlign: TextAlign.left,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: "JohnMark_doe@example.com",
                labelStyle: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Text(
                  'First',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 155,
                ),
                const Text(
                  'Last Name',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "John Mark",
                      labelStyle: TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "Doe",
                      labelStyle: TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
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
                'Date of Birth',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: "DD/MM/YY",
                labelStyle: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 400,
              child: Text(
                'Contact Number',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: "(+67)999 - 9999",
                labelStyle: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              width: 400,
              child: Text(
                'Home Address',
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 0, 1),
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                labelText: "Iris Washington 365 York Ave.",
                labelStyle: TextStyle(
                  fontFamily: 'DM Sans',
                  fontSize: 13,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                const Text(
                  'City',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 155,
                ),
                const Text(
                  'Country',
                  style: TextStyle(
                    color: Color.fromRGBO(0, 0, 0, 1),
                    fontFamily: 'DM Sans',
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Row(
              children: [
                Flexible(
                  child: TextFormField(
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      labelText: "League City",
                      labelStyle: TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 13,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Flexible(
                  child: DropdownButtonFormField<String>(
                    hint: Text(' Country'),
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                    items: <String>[
                      'Phillipines',
                      'Singapore',
                      'Chile',
                      'America'
                    ].map((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: new Text(value),
                      );
                    }).toList(),
                    onChanged: (_) {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Checkbox(
                  value: agree,
                  onChanged: (value) {
                    setState(() {
                      agree = value ?? false;
                    });
                  },
                ),
                RichText(
                  text: TextSpan(
                    text: 'Accept ',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'DM Sans',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'Terms',
                          style: TextStyle(
                            color: Color.fromRGBO(6, 174, 213, 1),
                          )),
                      TextSpan(text: ' and '),
                      TextSpan(
                          text: 'Conditions.',
                          style: TextStyle(
                            color: Color.fromRGBO(6, 174, 213, 1),
                          )),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(235, 235, 235, 235),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromRGBO(6, 174, 213, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  onPressed: agree ? _doSomething : null,
                  child: const Text(
                    'Create your account',
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                    ),
                  )),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              height: 30,
              color: Colors.black,
            ),
            const SizedBox(
              height: 5,
            ),
            Center(
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'By creating an account you agree to our ',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'DM Sans',
                    fontSize: 13,
                    fontWeight: FontWeight.normal,
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                        text: 'Terms of Service',
                        style: TextStyle(
                          color: Color.fromRGBO(6, 174, 213, 1),
                        )),
                    TextSpan(text: ' and '),
                    TextSpan(
                        text: 'Privacy Policy.',
                        style: TextStyle(
                          color: Color.fromRGBO(6, 174, 213, 1),
                        )),
                  ],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
