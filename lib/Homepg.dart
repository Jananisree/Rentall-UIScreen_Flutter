import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Classes/Clspopularlocation.dart';

class Homepg extends StatefulWidget {
  const Homepg({super.key});
  @override
  State<Homepg> createState() => _HomepgState();
}

class _HomepgState extends State<Homepg> {
  List<Clspopularlocation> locationdetails=[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    locationdetails.add(Clspopularlocation("assets/images/ketharnath.jpeg", "India"));
    locationdetails.add(Clspopularlocation("assets/images/Moscow.jpeg", "Moscow"));
    locationdetails.add(Clspopularlocation("assets/images/USA.jpeg", "USA"));
    locationdetails.add(Clspopularlocation("assets/images/Franch.jpeg", "Franch"));
  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffefeffb),
                ),
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.04),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore the world! By Travelling",
                        style: TextStyle(
                          fontSize: isLandscape ? 28 : 35,
                          fontWeight: FontWeight.bold,
                        ),
                        softWrap: true,
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 10), // Add space between text and TextFormField
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Image.asset("assets/images/searchi.png"),
                                hintText: "Where do you want to go?",
                                hintStyle: TextStyle(color: Colors.black),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(18),
                                  borderSide: BorderSide(
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 20,),
                          Container(
                            width: 50,
                            height: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                            ),
                            child: Image.asset("assets/images/menus.png"),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text("Popular locations",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20),
              Container(
                height: 200, //
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: locationdetails.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 130,
                        margin: EdgeInsets.symmetric(horizontal:5),
                        decoration: BoxDecoration(
                          color: Colors.blueAccent,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(
                            image: AssetImage(locationdetails[index].pic),
                            fit: BoxFit.cover
                          )
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Text(locationdetails[index].location, style: TextStyle(color: Colors.white)),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),



              SizedBox(height: 30,),
              Padding(
                padding: const EdgeInsets.only(left: 23),
                child: Text("Recommended",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20),
              Container(
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: locationdetails.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 260,
                        margin: EdgeInsets.symmetric(horizontal:5),
                        decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15),

                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 260,
                                height: 180,
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(16)
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 20),
                              child: Text(locationdetails[index].location, style: TextStyle(color: Colors.white)),

                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


