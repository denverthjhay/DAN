import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import './createaccount.dart';
import './mainmenu.dart';

class loginscreenWidget extends StatefulWidget {
  @override
  _loginscreenWidgetState createState() => _loginscreenWidgetState();
}

class _loginscreenWidgetState extends State<loginscreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text(
                  "Hello!",
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'DM Sans',
                      fontSize: 34,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.bold,
                      height: 1),
                ),
                const Text(
                  'Welcome back',
                  style: TextStyle(
                      color: Color.fromRGBO(0, 0, 0, 1),
                      fontFamily: 'DM Sans',
                      fontSize: 26,
                      letterSpacing:
                          0 /*percentages not used in flutter. defaulting to zero*/,
                      fontWeight: FontWeight.normal,
                      height: 2),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: Color.fromARGB(235, 235, 235, 235),
                    filled: true,
                    labelText: "Enter username or email",
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    fillColor: Color.fromARGB(235, 235, 235, 235),
                    filled: true,
                    labelText: "Enter Password",
                    prefixIcon: Icon(Icons.lock_outline),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget Password?",
                          style: TextStyle(
                            fontFamily: 'DM Sans',
                            fontWeight: FontWeight.normal,
                          ),
                        ))
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
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
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        fontFamily: 'DM Sans',
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(children: <Widget>[
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                  Text(
                    "or continue with",
                    style: TextStyle(
                      fontFamily: 'DM Sans',
                      fontSize: 13,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  Expanded(
                    child: new Container(
                        margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                        child: Divider(
                          color: Colors.black,
                          height: 36,
                        )),
                  ),
                ]),
                const SizedBox(
                  height: 10,
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Color.fromRGBO(255, 217, 59, 1),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.twitter,
                            color: Color.fromRGBO(6, 174, 213, 1),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Color.fromRGBO(255, 217, 59, 1),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.google,
                            color: Color.fromRGBO(6, 174, 213, 1),
                          ),
                        ),
                      ),
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Color.fromRGBO(255, 217, 59, 1),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            FontAwesomeIcons.apple,
                            color: Color.fromRGBO(6, 174, 213, 1),
                          ),
                        ),
                      ),
                    ]),
                const SizedBox(
                  height: 100,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Not a member?",
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.7),
                      ),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    createaccountscreenWidget()),
                          );
                        },
                        child: const Text("Register Now"))
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
