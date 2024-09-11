import 'package:flutter/material.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/widgets.dart';
import 'package:rentapp/data/data.dart';
import 'package:get/get.dart';
import 'InfoScreen.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

//Define the DataSet
  final List<HouseModel> _houses = [
    HouseModel(
      id: '1',
      name: 'Otchad House',
      location: 'JL Sultan Iskandar Muda',
      imageUrl: 'images/image3.jpg',
      bedrooms: 6,
      bathrooms: 4,
      price: 2500000000,
    ),
    HouseModel(
      id: '2',
      name: 'The Hollies House',
      location: 'JK Khoneh babat',
      imageUrl: 'images/image2.jpg',
      bedrooms: 5,
      bathrooms: 2,
      price: 200000000,
    ),
    HouseModel(
      id: '3',
      name: 'Dream House',
      location: 'To royat',
      imageUrl: 'images/image4.jpg',
      bedrooms: 5,
      bathrooms: 2,
      price: 2000000,
    ),
    HouseModel(
      id: '4',
      name: 'Dallaleh Arshad',
      location: 'Ye ja Khob..',
      imageUrl: 'images/image5.jpg',
      bedrooms: 5,
      bathrooms: 2,
      price: 200000000000,
    ),
    HouseModel(
      id: '5',
      name: 'Dallaleh TazehKar',
      location: 'Ah..Chi begam...',
      imageUrl: 'images/image1.jpg',
      bedrooms: 5,
      bathrooms: 2,
      price: 5000000000,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(18, 34, 0, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Location",
                style: TextStyle(
                  color: Colors.blueGrey.shade100,
                  fontSize: 12,
                  fontFamily: 'Raleway',
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(4, 0, 0, 0),
                child: SizedBox(
                  height: 40,
                  child: Row(
                    children: [
                      Text("Jakarta",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
                      Icon(Icons.arrow_drop_down_outlined),
                      SizedBox(
                        width: 310,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.notification_add_outlined,
                            size: 30,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 6,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(9, 20, 20, 20),
                child: Row(
                  children: [
                    SizedBox(
                      width: 365,
                      child: TextField(
                        decoration: InputDecoration(
                          labelText: "Search address or near you",
                          prefixIcon: Icon(
                            Icons.search_rounded,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 55,
                          width: 55,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.menu,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 8,
              ),
//Some buttons...ah..:)-----------------------------------------------------------------------------------------------------------------------------------------------
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                child: Container(
                  height: 44,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        height: 40,
                        width: 80,
                        decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'House',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Apartment',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        height: 40,
                        width: 70,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Hotel',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        height: 40,
                        width: 60,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Villa',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        height: 40,
                        width: 120,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Pent House',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        height: 40,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Hight End',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 18,
                      ),
                      Container(
                        height: 40,
                        width: 130,
                        decoration: BoxDecoration(
                          color: Colors.blueGrey.shade50,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Center(
                          child: Text(
                            'Room for living',
                            style: TextStyle(
                              color: Colors.black45,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
// Near From You--------------------------------------------------------------------------------------------------------------------------------------------------------
              Padding(
                padding: const EdgeInsets.fromLTRB(2, 40, 2, 25),
                child: Row(
                  children: [
                    Text(
                      "Near from you",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 230,
                    ),
                    Text(
                      "See more",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
CarouselSlider(
  options: CarouselOptions(
    height: 280.0,
    autoPlay: false,
    padEnds: false,
    enableInfiniteScroll: false,
    autoPlayAnimationDuration: Duration(milliseconds: 800),
    viewportFraction: 0.54,
  ),
  items: _houses.map((house) {
    return GestureDetector(
      onTap: () {
        Get.to(InfoScreen(house: house));
      },
      child: Container(
        width: 230,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            image: AssetImage(house.imageUrl),
            fit: BoxFit.cover,
          ),
          
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(140, 20, 10, 0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black26,
                    ),
                    width: 70,
                    height: 23,
                    child: Row(
                      children: [
                        SizedBox(width: 8,),
                        Icon(Icons.location_on_outlined, color: Colors.white, size: 16,),
                        Text(
                          "18 km",
                          style: TextStyle(color: Colors.white, fontSize: 11),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 180, 70, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' ${house.name}',
                    style: TextStyle(fontSize: 16.0, color: Colors.white),
                  ),
                  Text(
                    '  ${house.location.toString()}',
                    style: TextStyle(
                      color: Colors.white54,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }).toList(),
),
// Best For you--------------------------------------------------------------------------------------------------------------------------------------------------------
              Padding(
                padding: const EdgeInsets.fromLTRB(4, 25, 2, 0),
                child: Row(
                  children: [
                    Text(
                      "Best for you",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(
                      width: 250,
                    ),
                    Text(
                      "See more",
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.w200),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: _houses.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                        onTap: () {
                          Get.to(InfoScreen(house: _houses[index]));
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 80,
                                height: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(_houses[index].imageUrl),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(_houses[index].name),
                                    SizedBox(height: 8),
                                    Text(
                                      'USD ${_houses[index].price.toString()} / Year',
                                      style: TextStyle(
                                        color: Colors.blueAccent,
                                        fontSize: 10,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.bed,
                                          color: Colors.blueGrey,
                                          size: 19,
                                        ),
                                        Text(
                                          '      ${_houses[index].bedrooms} Bedroom',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                        SizedBox(width: 60),
                                        Icon(
                                          Icons.bathtub_rounded,
                                          color: Colors.blueGrey,
                                          size: 19,
                                        ),
                                        Text(
                                          '      ${_houses[index].bathrooms} Bathroom',
                                          style: TextStyle(
                                            fontSize: 10,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ));
                  })
            ],
          ),
        ),
      ),
    );
  }
}
