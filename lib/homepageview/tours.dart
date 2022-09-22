import 'dart:convert';
import 'package:finalproject/customcolor/customcolor.dart';
import 'package:finalproject/homepageview/profile.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import '../json/Places.dart';

class Tours extends StatefulWidget {
  const Tours({Key? key}) : super(key: key);

  @override
  State<Tours> createState() => _ToursState();
}

class _ToursState extends State<Tours> {
  Places?myplace;
  bool isLoading=false;
  dynamic placeJson;
  String access_token =
      "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwOlwvXC9hbGNhcHRpbi5jb21cL2FwaVwvbG9naW4iLCJpYXQiOjE2NjM4MDE3MjMsIm5iZiI6MTY2MzgwMTcyMywianRpIjoiOFhEc1M1T3h5dG5EQmZLTiIsInN1YiI6MTgsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.rX3s6YRH7JVKt8CbHBBr1pXwfm1SA7yS7BeHTIQU0oc";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 50,
            ),
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Image.asset("assets/images/Menu.png"),
                SizedBox(
                  width: 100,
                ),
                Text(
                  "Tours",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                Icon(
                  Icons.search,
                  size: 25,
                  color: Colors.grey,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "Popular Destination",
                style: TextStyle(
                  color: CustomColor.darkmov,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                "10 Tours Analiable",
                style: TextStyle(
                  color: Colors.grey,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
            SizedBox(
              height: 700,
              child: Column(
                children: [
                  Expanded(
                    flex: 1,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: 1,
                      itemBuilder: (context, index) {
                        return Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                    "assets/images/smallparis.png",
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                    "assets/images/small india.png",
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                    "assets/images/smallnewyork.png",
                                    fit: BoxFit.fill),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Card(
                                child: Image.asset(
                                    "assets/images/smalllosanglos.png",
                                    fit: BoxFit.fill),
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 100),
                          child: Image.asset("assets/images/tourspoto.png"),
                        ),
                        ListView.builder(
                            scrollDirection: Axis.horizontal,
                            shrinkWrap: true,
                            itemCount: 1,
                            itemBuilder: (context, index) {
                              return Row(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 360,
                                      margin:
                                      EdgeInsets.only(top: 95, bottom: 180),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(25)),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30, left: 40),
                                            child: Text(
                                              "Holidays",
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 40),
                                            child: Text(
                                              "Say yes to iconic snow catamount,",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 40),
                                            child: Text(
                                              "Hillsdale,New York",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 40),
                                                child: Text(
                                                  "Book your holiday package today",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                      fontSize: 11),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue[500],
                                                  borderRadius:
                                                  BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 360,
                                      margin:
                                      EdgeInsets.only(top: 95, bottom: 180),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(25)),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30, left: 40),
                                            child: Text(
                                              "Holidays",
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 40),
                                            child: Text(
                                              "Say yes to iconic snow catamount,",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 40),
                                            child: Text(
                                              "Hillsdale,New York",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 40),
                                                child: Text(
                                                  "Book your holiday package today",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                      fontSize: 11),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue[500],
                                                  borderRadius:
                                                  BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Container(
                                      width: 360,
                                      margin:
                                      EdgeInsets.only(top: 95, bottom: 180),
                                      decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius:
                                          BorderRadius.circular(25)),
                                      child: Column(
                                        crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 30, left: 40),
                                            child: Text(
                                              "Holidays",
                                              style:
                                              TextStyle(color: Colors.grey),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 40),
                                            child: Text(
                                              "Say yes to iconic snow catamount,",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.only(
                                                top: 10, left: 40),
                                            child: Text(
                                              "Hillsdale,New York",
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 16,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    top: 20, left: 40),
                                                child: Text(
                                                  "Book your holiday package today",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontWeight:
                                                      FontWeight.w400,
                                                      fontSize: 11),
                                                ),
                                              ),
                                              SizedBox(
                                                width: 50,
                                              ),
                                              Container(
                                                width: 50,
                                                height: 50,
                                                decoration: BoxDecoration(
                                                  color: Colors.blue[500],
                                                  borderRadius:
                                                  BorderRadius.circular(50),
                                                ),
                                                child: Icon(
                                                  Icons.arrow_forward,
                                                  color: Colors.white,
                                                  size: 30,
                                                ),
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              );
                            })
                      ],
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemCount: myplace?.data?.data?.length,
                      itemBuilder: (context, index) {
                        InnerData? jsonitem=myplace?.data?.data?[index];
                        return Row(
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Image.network(jsonitem!.image??""),
                              ),
                            )
                          ],
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
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
      myplace = Places.fromJson(placeJson);
      if (response.statusCode == 200) {
        myplace = Places.fromJson(placeJson);
        print(myplace);
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Profile()));
      } else {
        print(placeJson["message"]);
      }
    });

    setState(() {
      isLoading = false;
    });
  }
}
