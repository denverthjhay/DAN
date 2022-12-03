import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class forumsWidget extends StatefulWidget {
  @override
  _forumsWidgetState createState() => _forumsWidgetState();
}

class _forumsWidgetState extends State<forumsWidget> {
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
                height: 140.0,
                width: 320.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(215, 232, 236, 1),
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.only(
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0)),
                ),
                child: Column(children: [
                  Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            color: Color.fromRGBO(6, 174, 213, 1),
                            fontFamily: 'DM Sans',
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        child:
                            const Text('COVID-19: Rebuilding for Resilience'),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => forumsWidget()),
                          );
                        },
                      )),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: RichText(
                      text: TextSpan(
                        text:
                            'Two years into the COVID-19 pandemic, we’ve learned a lot about resilience: what makes us stronger, safer and more adaptable and what doesn’t. Now, we need to foc..',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'DM Sans',
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                              text: ' Read More',
                              style: TextStyle(
                                color: Color.fromRGBO(6, 174, 213, 1),
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              )),
                        ],
                      ),
                    ),
                  ),
                  const Divider(
                    color: Colors.grey,
                    thickness: 0.08, //thicknes
                  ),
                  Row(children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image: AssetImage('assets/images/someone.png'),
                                fit: BoxFit.fill),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Luigi Canoy",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "Posted on October 25, 2022",
                          style: TextStyle(
                            color: Colors.grey,
                            fontFamily: 'DM Sans',
                            fontSize: 8,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      width: 26,
                    ),
                    Icon(
                      Icons.arrow_upward_rounded,
                      color: Colors.black,
                      size: 20,
                    ),
                    Text(
                      "3452",
                      style: TextStyle(
                        color: Colors.black,
                        fontFamily: 'DM Sans',
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Icon(
                      Icons.arrow_downward_rounded,
                      color: Colors.black,
                      size: 20,
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Icon(
                      FontAwesomeIcons.ellipsisVertical,
                      color: Colors.black,
                      size: 20,
                    ),
                  ]),
                ]),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 420.0,
                width: 320.0,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(215, 232, 236, 1),
                  border: Border.all(color: Colors.grey, width: 1),
                  borderRadius: BorderRadius.only(
                      topRight: const Radius.circular(10.0),
                      topLeft: const Radius.circular(10.0),
                      bottomLeft: const Radius.circular(10.0),
                      bottomRight: const Radius.circular(10.0)),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                        child: Text(
                          "Comments",
                          style: TextStyle(
                            color: Color.fromRGBO(6, 174, 213, 1),
                            fontFamily: 'DM Sans',
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/someone.png'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Asheya",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'DM Sans',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 55,
                          ),
                          Text(
                            "Replied on 7:23 PM October 25, 2022",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'DM Sans',
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                        child: Text(
                          "I wonder if humanity will evolve to become naturally immune to covid in the future.",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.arrow_upward_rounded,
                            color: Color.fromRGBO(6, 174, 213, 1),
                            size: 20,
                          ),
                          Text(
                            "215",
                            style: TextStyle(
                              color: Color.fromRGBO(6, 174, 213, 1),
                              fontFamily: 'DM Sans',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.arrow_downward_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            FontAwesomeIcons.share,
                            color: Colors.black,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            FontAwesomeIcons.ellipsisVertical,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/someone.png'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Jerome",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'DM Sans',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 55,
                          ),
                          Text(
                            "Replied on 8:37 PM October 25, 2022",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'DM Sans',
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                        child: Text(
                          "That would be great. It would be comforting to know my grandchildren will be immune to Covid...",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.arrow_upward_rounded,
                            color: Color.fromRGBO(6, 174, 213, 1),
                            size: 20,
                          ),
                          Text(
                            "274",
                            style: TextStyle(
                              color: Color.fromRGBO(6, 174, 213, 1),
                              fontFamily: 'DM Sans',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.arrow_downward_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            FontAwesomeIcons.share,
                            color: Colors.black,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            FontAwesomeIcons.ellipsisVertical,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.fromLTRB(15, 0, 0, 0),
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/someone.png'),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(
                            "Ruby Mae",
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'DM Sans',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 55,
                          ),
                          Text(
                            "Replied on 8:37 PM October 25, 2022",
                            style: TextStyle(
                              color: Colors.grey,
                              fontFamily: 'DM Sans',
                              fontSize: 8,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                        child: Text(
                          "Thank you and God bless to every researcher and scientists <3",
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.black,
                            fontFamily: 'DM Sans',
                            fontSize: 10,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.arrow_upward_rounded,
                            color: Color.fromRGBO(6, 174, 213, 1),
                            size: 20,
                          ),
                          Text(
                            "455",
                            style: TextStyle(
                              color: Color.fromRGBO(6, 174, 213, 1),
                              fontFamily: 'DM Sans',
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            Icons.arrow_downward_rounded,
                            color: Colors.black,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            FontAwesomeIcons.share,
                            color: Colors.black,
                            size: 20,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Icon(
                            FontAwesomeIcons.ellipsisVertical,
                            color: Colors.black,
                            size: 20,
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      addComment(),
                    ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Widget addComment() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 15),
    decoration: BoxDecoration(
      color: Color.fromARGB(235, 235, 235, 235),
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      // onChanged: (value) => searchYourToDo(value),
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(width: 2, color: Colors.grey),
        ),
        contentPadding: EdgeInsets.all(10),
        prefixIconConstraints: BoxConstraints(
          maxHeight: 30,
          minWidth: 30,
        ),
        border: InputBorder.none,
        hintText: 'Add Comment',
        hintStyle: TextStyle(color: Colors.grey),
      ),
    ),
  );
}

AppBar toBuildAppBar() {
  return AppBar(
    leading: BackButton(color: Colors.black),
    backgroundColor: Colors.white,
    automaticallyImplyLeading: true,
    title: const Text("Forums",
        style: TextStyle(
            color: Colors.black,
            fontFamily: 'DM Sans',
            fontSize: 23,
            letterSpacing: 0,
            fontWeight: FontWeight.normal,
            height: 1)),
  );
}
