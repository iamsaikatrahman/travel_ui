import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:travel_ui/model/data.dart';
import 'package:travel_ui/model/tavel_model.dart';
import 'package:travel_ui/views/responsive_helper.dart';
import 'package:travel_ui/views/travelsDetails.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          leading: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        body: SafeArea(
          child: ResponsiveWidget(
            mobile: Container(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    HiTextCard(
                      istab: false,
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                    buildCarouselSlider(screenHeight, screenHeight * 0.35),
                    SizedBox(height: screenHeight * 0.02),
                    ExploreCard(
                      istab: false,
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                    ),
                  ],
                ),
              ),
            ),
            tab: Container(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    HiTextCard(
                      istab: true,
                      screenWidth: screenWidth,
                      screenHeight: screenHeight,
                    ),
                    buildCarouselSlider(screenHeight, screenHeight * 0.55),
                    SizedBox(height: screenHeight * 0.02),
                    ExploreCard(
                      istab: true,
                      screenHeight: screenHeight,
                      screenWidth: screenWidth,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  CarouselSlider buildCarouselSlider(
    double screenHeight,
    double carouselHeight,
  ) {
    return CarouselSlider(
      items: allCarousel
          .map(
            (carouseldata) => Stack(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage(carouseldata.imgUrl!),
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.4),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          carouseldata.title!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.01),
                        Text(
                          carouseldata.subtitle!,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(height: screenHeight * 0.02),
                        ElevatedButton(
                          onPressed: () {},
                          child: Text("Lest\'s Visit"),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
          .toList(),
      options: CarouselOptions(
        autoPlay: true,
        height: carouselHeight,
        enlargeCenterPage: true,
      ),
    );
  }
}

class HiTextCard extends StatelessWidget {
  const HiTextCard({
    Key? key,
    required this.screenWidth,
    required this.screenHeight,
    required this.istab,
  }) : super(key: key);

  final double screenWidth;
  final double screenHeight;
  final bool istab;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hi, Saikat',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "There are many variations of passages have suffered alteration in some form.",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: screenWidth * 0.02),
          Container(
            height: (istab) ? screenHeight * 0.2 : screenHeight * 0.1,
            width: screenWidth * 0.2,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                    "https://images.unsplash.com/photo-1574509412912-6676aedfc8dd?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=667&q=80"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ExploreCard extends StatelessWidget {
  const ExploreCard({
    Key? key,
    required this.screenHeight,
    required this.screenWidth,
    required this.istab,
  }) : super(key: key);

  final double screenHeight;
  final double screenWidth;
  final bool istab;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: (istab)
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Text(
                        'Explore all corners\nof the world with us',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Expanded(
                      child: Text(
                        'It is a long established its layout. The point of using it has a more-or-less normal distribution of letters.',
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                )
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Explore all corners\nof the world with us',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'It is a long established its layout. The point of using it has a more-or-less normal distribution of letters.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
        ),
        (istab)
            ? Container(
                height: screenHeight * 0.9,
                child: ListView.builder(
                  itemCount: alltravelList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    TravelModel travelModel = alltravelList[index];
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: screenHeight * 0.9,
                      width: screenWidth * 0.45,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenHeight * 0.5,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(travelModel.imgUrl!),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  travelModel.placeName!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Text(
                                  "\$${travelModel.price}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                      width: 2,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                  ),
                                  child: Text(
                                    "View Details",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => TravelDetails(
                                          travelModel: travelModel,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              )
            : Container(
                height: screenHeight * 0.55,
                child: ListView.builder(
                  itemCount: alltravelList.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    TravelModel travelModel = alltravelList[index];
                    return Container(
                      margin: EdgeInsets.all(10),
                      height: screenHeight * 0.55,
                      width: screenWidth * 0.6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: screenHeight * 0.3,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: NetworkImage(travelModel.imgUrl!),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  travelModel.placeName!,
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                Text(
                                  "\$${travelModel.price}",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                SizedBox(height: screenHeight * 0.01),
                                OutlinedButton(
                                  style: OutlinedButton.styleFrom(
                                    side: BorderSide(
                                      width: 2,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                  ),
                                  child: Text(
                                    "View Details",
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (_) => TravelDetails(
                                          travelModel: travelModel,
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
      ],
    );
  }
}
