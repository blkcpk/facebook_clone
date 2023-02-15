import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class home_page extends StatefulWidget {
  const home_page({super.key});

  @override
  State<home_page> createState() => _home_pageState();
}

class _home_pageState extends State<home_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              CircleAvatar(
                  radius: 21,
                  backgroundImage: AssetImage("assets/images/eli.jpg")),

              // TextField(
              //   controller: postTextController,
              //   decoration: const InputDecoration(
              //       border: OutlineInputBorder(),
              //       hintText: "What's on your mind?",
              //       filled: true
              //   ),
              // )
            ],
          ),
          Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Icon(Icons.construction, size: 90, color: Colors.grey),
                    Text("This Page Isn't Available Right Now\n",
                        style: TextStyle(
                            color: Colors.grey, fontWeight: FontWeight.bold)),
                    Text("Work in progress...\n",
                        style: TextStyle(color: Colors.grey)),
                    ElevatedButton(
                      onPressed: () {
                        Fluttertoast.showToast(
                            msg:
                                'Something went wrong.\nPlease try again later.',
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.BOTTOM,
                            timeInSecForIosWeb: 2,
                            backgroundColor: Colors.grey,
                            textColor: Colors.white,
                            fontSize: 12);
                      },
                      child: Text("Reload Page"),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          foregroundColor: Colors.white),
                    ),
                    Text("\nFacebook Clone By Eli Bautista\n",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontWeight: FontWeight.bold)),
                    Text("DISCLAIMER:",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 10,
                            fontWeight: FontWeight.bold)),
                    Text("This project was made for educational purposes only.",
                        style: TextStyle(color: Colors.grey, fontSize: 10))
                  ],
                )
              ]),
        ],
      ),
    );
  }
}
