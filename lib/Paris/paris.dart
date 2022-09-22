import 'dart:convert';

import 'package:finalproject/json/ParisJson.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Paris extends StatefulWidget {

  const Paris({Key? key}) : super(key: key);

  @override
  State<Paris> createState() => _ParisState();
}

class _ParisState extends State<Paris> {
  ParisJson? myparis;

  bool isLoading = false;

  dynamic placeJson;

  String access_token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjM4MDE3MjMsIm5iZiI6MTY2MzgwMTcyMywianRpIjoiOFhEc1M1T3h5dG5EQmZLTiIsInN1YiI6MTgsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.rX3s6YRH7JVKt8CbHBBr1pXwfm1SA7yS7BeHTIQU0oc";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_back_ios,
                  size: 25,
                  color: Colors.grey,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "Back",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(
                  width: 65,
                ),
                Text(
                  "Paris",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 100,
                ),
                Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Image.asset("assets/images/parispage.png"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Text(
                "Disneyland Paris",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Departure",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "23rd oct 2017",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Duration",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "5 Days / 4 Nights",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Discover 7 World Heritage in this",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Tours.",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Flexible(
                child: Text(
                  "Fans of Mickey can visit Disenyland Paris Which is Located 32K from centre paris with connection to the suburbam RERA",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Flexible(
                child: Text(
                  "Disneyland Paris has two Theme Parks : Disneyland(with sleeping Brauty's Castle) and Walt Disney Stadios Top attractions areb space Mountain, it's a small World and Big Thunder Mountain",
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Image.asset("assets/images/screen15down.png"),
          ],
        ),
      ),
    );
  }
  Future getplist() async {
    setState(() {
      isLoading = true;
    });

    Response response =
    await get(Uri.parse("http://alcaptin.com/api/places"), headers: {
      "Authorization": "Bearer $access_token",
    });

    placeJson = jsonDecode(response.body);

    setState(() {
      myparis = ParisJson.fromJson(placeJson);
      if (response.statusCode == 200) {
        myparis = ParisJson.fromJson(placeJson);
        print(myparis);
      } else {
        print(placeJson["message"]);
      }
    });

    setState(() {
      isLoading = false;
    });
  }
}
