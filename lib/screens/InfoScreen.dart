import 'package:flutter/material.dart';
import 'package:rentapp/data/data.dart';

class InfoScreen extends StatelessWidget {
  final HouseModel house;

  InfoScreen({required this.house});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(10, 40, 10, 10),
                child: Container(
                    width: 420,
                    height: 360,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                        image: AssetImage(house.imageUrl),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Row(
                      children: [
                        Column(children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(25, 20, 10, 0),
                            child: Row(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.black26,
                                  ),
                                  width: 45,
                                  height: 45,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.arrow_back_ios_sharp,
                                        color: Colors.white,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  width: 280,
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Colors.black26,
                                  ),
                                  width: 45,
                                  height: 45,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.bookmark_border,
                                        color: Colors.white,
                                        size: 26,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 160, 200, 0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("${house.name}",
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18)),
                                Text("${house.location}",
                                    style: TextStyle(
                                        color: Colors.white38, fontSize: 14))
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.white24,
                                ),
                                width: 45,
                                height: 45,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.bed,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                "${house.bedrooms}",
                                style: TextStyle(color: Colors.white24),
                              ),
                              SizedBox(
                                width: 40,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.black26,
                                ),
                                width: 45,
                                height: 45,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.bathtub_rounded,
                                      color: Colors.white,
                                      size: 20,
                                    ),
                                    SizedBox(
                                      width: 30,
                                    ),
                                    Text(
                                      "${house.bedrooms}",
                                      style: TextStyle(color: Colors.white24),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ]),
                      ],
                    )
                    ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,20,20,.0),
                      child: Row(children: [
                        Text("Description",style: TextStyle(fontSize: 16),)
                      ],),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(15,20,0,0),
                      child: Wrap(
                        children: [
                          Text("Are khodaee karesh sakhte, taze kojasho..... kardenagam barat",style: TextStyle(fontWeight: FontWeight.w200),),
                          Text("Show more.",style: TextStyle(color: Colors.blueAccent, fontWeight: FontWeight.w200),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(5,5,5,5),
                      child: Row(
                        children: [
                         // Image.asset(""),
                         Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Garry Allen"),
                            Text("Owner",style: TextStyle(fontWeight: FontWeight.w200),),
                          
                          ],
                         ),
                         SizedBox(width: 180,),
                          Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue.shade200,
                                ),
                                width: 30,
                                height: 30,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.call_sharp,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                         SizedBox(width: 20,),
                               Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: Colors.blue.shade200,
                                ),
                                width: 30,
                                height: 30,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.message,
                                      color: Colors.white,
                                      size: 15,
                                    ),
                                  ],
                                ),
                              ),
                        ],
                      ),
                    ),
// Gallery Section--------------------------------------------------------------------------                   
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20,20,0,0),
                      child: Row(
                        children: [
                          Text("Galery"),
                        ],
                      ),
                    ),
                    

//Location Section--------------------------------------------------------------------------------
                                         
          ],
        )
                );
  }
}
