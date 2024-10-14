import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Classes/ClsMostviewed.dart';
import 'Classes/Clspopularlocation.dart';
import 'Classes/Clsrecommended.dart';

class Explorepage extends StatefulWidget {
  const Explorepage({super.key});
  @override
  State<Explorepage> createState() => _ExplorepageState();
}

class _ExplorepageState extends State<Explorepage> {
  List<Clspopularlocation> locationdetails=[];
  List<Clsrecommended> rec=[];
  List<Clsmostviewed> mviewed=[];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    locationdetails.add(Clspopularlocation("assets/images/ketharnath.jpeg", "India"));
    locationdetails.add(Clspopularlocation("assets/images/Moscow.jpeg", "Moscow"));
    locationdetails.add(Clspopularlocation("assets/images/USA.jpeg", "USA"));
    locationdetails.add(Clspopularlocation("assets/images/Franch.jpeg", "Franch"));
    locationdetails.add(Clspopularlocation("assets/images/Franch.jpeg", "Franch"));

    rec.add(Clsrecommended("assets/images/House2.jpg", "assets/images/fav.png", "\$120", "/ Night", "Carinthia Lake see Breakfast ", "4","Private Room/", "4beds"));
    rec.add(Clsrecommended("assets/images/Private room.jpeg", "assets/images/fav.png", "\$400", "/ Night", "Carinthia Lake see Breakfast", "5","Hotel Room/", "3beds"));
    rec.add(Clsrecommended("assets/images/Premimumguesthouse.jpeg", "assets/images/fav.png", "\$500", "/ Day", "Bright elegant Guest house in Italy", "5","Hotel Room/", "3beds"));
    rec.add(Clsrecommended("assets/images/Chalet in Motana.jpeg", "assets/images/fav.png", "\$500", "/ Night", "Bright elegant Guest house in Italy", "5","Hotel Room/", "3beds"));
    rec.add(Clsrecommended("assets/images/bamboo guest house.jpeg", "assets/images/fav.png", "\$500", "/ Night", "Bright elegant Guest house in Italy", "5","Hotel Room/", "3beds"));

    mviewed.add(Clsmostviewed("assets/images/Premimumguesthouse.jpeg", "assets/images/fav.png", "\$90", "/ Night", "Carinthia Lake see Breakfast ", "4","Private Room/", "4beds"));
    mviewed.add(Clsmostviewed("assets/images/Chalet in Motana.jpeg", "assets/images/fav.png", "\$300", "/ Night", "Carinthia Lake see Breakfast ", "4","Private Room/", "4beds"));
    mviewed.add(Clsmostviewed("assets/images/Private room.jpeg", "assets/images/fav.png", "\$240", "/ Night", "Carinthia Lake see Breakfast ", "4","Private Room/", "4beds"));
    mviewed.add(Clsmostviewed("assets/images/House2.jpg", "assets/images/fav.png", "\$120", "/ Night", "Carinthia Lake see Breakfast ", "4","Private Room/", "4beds"));
    mviewed.add(Clsmostviewed("assets/images/bamboo guest house.jpeg", "assets/images/fav.png", "\$120", "/ Night", "Carinthia Lake see Breakfast ", "4","Private Room/", "4beds"));

  }
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
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
                        fontSize: isLandscape ? 28 : 33,
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
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                Padding(
                padding: const EdgeInsets.only(left: 23,top: 30),
                child: Text("Popular locations",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 30),
              Container(
                height: 175, //
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: locationdetails.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 140,
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
                child: Text("Recommended",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 30),
              Container(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: rec.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Container(
                        width: 260,
                        margin: EdgeInsets.symmetric(horizontal:2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),

                        ),
                        child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 260,
                                height: 180,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(16),
                                    image: DecorationImage(
                                      image: AssetImage(rec[index].PicR),
                                      fit: BoxFit.cover
                                    )
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Align(alignment: Alignment.topRight,
                                      child: Image.asset(rec[index].PicL,scale: 3,)),
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                SizedBox(width: 13,),
                               Container(
                                 width: 100,
                                  child: Row(
                                    children: [
                                      Text(rec[index].Cost, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)),
                                      Text(rec[index].time, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13)),
                                      Image.asset("assets/images/power.png",scale: 3,)
                                    ],
                                  ),
                               ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.only(right: 20),
                                  child: Container(
                                    width: 20,
                                    child: Row(
                                      children: [
                                        Image.asset("assets/images/starx.png",scale: 3,),
                                        Text(rec[index].Rating)
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13),
                              child: Text(
                                rec[index].locationname,
                                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                overflow: TextOverflow.ellipsis, // This clips the overflowed text without showing dots
                                maxLines: 1, // Optional: restricts to one line, change this as needed
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 13),
                              child: Row(
                                children: [
                                  Text(rec[index].Roomtype,style: TextStyle(color: Colors.grey)),
                                  Text(rec[index].beds,style: TextStyle(color: Colors.grey),),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),



                 Container(
                   margin: EdgeInsets.all(18),
                   width: double.infinity,
                   height: isLandscape?300:299,
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(18),
                     color: Colors.white,
                     image: DecorationImage(
                       image: AssetImage("assets/images/cafe.png"),
                       fit: BoxFit.fill,
                     )
                   ),
                   child: Column(
                     crossAxisAlignment: CrossAxisAlignment.start,
                     children: [
                       Padding(
                         padding: const EdgeInsets.only(left: 20,top: 20),
                         child: Text("Hosting Fee for " ,style: TextStyle(
                                              fontSize: 33,
                                              fontWeight: FontWeight.bold,
                           color: Colors.white
                         ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20,),
                         child: Text("as low as 1%" ,style: TextStyle(
                             fontSize: 33,
                             fontWeight: FontWeight.bold,
                             color: Colors.white
                         ),
                         ),
                       ),
                       Padding(
                         padding: const EdgeInsets.only(left: 20,top: 15),
                         child: Container(
                           width: 155,
                           height: 32,
                           decoration: BoxDecoration(
                             borderRadius: BorderRadius.circular(25),
                             color: Color(0xffff6666),
                           ),
                           child: Align(alignment: Alignment.center,
                               child: Text("Become a Host",style: TextStyle(fontSize: 18,color: Colors.white),)),
                         ),
                       )
                     ],
                   ),
                 ),
                    SizedBox(height: 30,),
                    Padding(
                      padding: const EdgeInsets.only(left: 23),
                      child: Text("Most viewed",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    ),
                    SizedBox(height: 30),
                    ListView.builder(
                      physics: ScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: mviewed.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10,bottom: 20,right: 10),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Container(
                                    width: double.infinity,
                                    height: 160,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(16),
                                        image: DecorationImage(
                                            image: AssetImage(mviewed[index].PicM),
                                            fit: BoxFit.fill
                                        )
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: Align(alignment: Alignment.topRight,
                                          child: Image.asset(mviewed[index].PicLM,scale: 3,)),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    SizedBox(width: 13,),
                                    Container(
                                      width: 100,
                                      child: Row(
                                        children: [
                                          Text(mviewed[index].CostM, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 22)),
                                          Text(mviewed[index].timeM, style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 13)),
                                          Image.asset("assets/images/power.png",scale: 3,)
                                        ],
                                      ),
                                    ),
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 20),
                                      child: Container(
                                        width: 20,
                                        child: Row(
                                          children: [
                                            Image.asset("assets/images/starx.png",scale: 3,),
                                            Text(mviewed[index].RatingM)
                                          ],
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: Text(
                                    mviewed[index].locationnameM,
                                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 13),
                                  child: Row(
                                    children: [
                                      Text(mviewed[index].RoomtypeM,style: TextStyle(color: Colors.grey)),
                                      Text(mviewed[index].bedsM,style: TextStyle(color: Colors.grey),),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    ),
              ],
                ),
              ),
            ),
          ],
        ),
        ),
    );
  }
}


