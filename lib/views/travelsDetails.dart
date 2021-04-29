import 'package:flutter/material.dart';
import 'package:travel_ui/model/tavel_model.dart';
import 'package:travel_ui/views/responsive_helper.dart';

class TravelDetails extends StatefulWidget {
  final TravelModel travelModel;

  const TravelDetails({Key? key, required this.travelModel}) : super(key: key);
  @override
  _TravelDetailsState createState() => _TravelDetailsState();
}

class _TravelDetailsState extends State<TravelDetails> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: ResponsiveWidget(
          mobile: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  coverImage(screenHeight, false),
                  pageDetailsInfo(screenHeight, screenWidth, false),
                ],
              ),
            ),
          ),
          tab: Container(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  coverImage(screenHeight, true),
                  pageDetailsInfo(screenHeight, screenWidth, true),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Padding pageDetailsInfo(double screenHeight, double screenWidth, bool istab) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: (istab)
          ? Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.travelModel.placeName!,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        widget.travelModel.shortdes!,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: '⭐ ' + '${widget.travelModel.rating}',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextSpan(
                              text: ' (56 Reviews)',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Text(
                        "Descriptions",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        widget.travelModel.description!,
                        textAlign: TextAlign.justify,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: screenWidth * 0.1),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: screenHeight * 0.1,
                        width: screenWidth,
                        color: Colors.blueAccent,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Book The Place",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Date',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "25/04/2025",
                          prefixIcon: Icon(Icons.calendar_today_outlined),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Name',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Saikat Rahman",
                          prefixIcon: Icon(Icons.person),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      Text(
                        'Phone Number',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.01),
                      TextField(
                        decoration: InputDecoration(
                          hintText: "+880125******",
                          prefixIcon: Icon(Icons.call),
                          border: OutlineInputBorder(),
                        ),
                      ),
                      SizedBox(height: screenHeight * 0.02),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 10),
                        height: screenHeight * 0.1,
                        width: screenWidth,
                        color: Colors.deepOrangeAccent,
                        child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Book Now",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          : Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.travelModel.placeName!,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      widget.travelModel.shortdes!,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: '⭐ ' + '${widget.travelModel.rating}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ' (56 Reviews)',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Text(
                      "Descriptions",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      widget.travelModel.description!,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: screenHeight * 0.02),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: screenHeight * 0.07,
                      width: screenWidth,
                      color: Colors.blueAccent,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Book The Place",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Date',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "25/04/2025",
                        prefixIcon: Icon(Icons.calendar_today_outlined),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Saikat Rahman",
                        prefixIcon: Icon(Icons.person),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    Text(
                      'Phone Number',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    TextField(
                      decoration: InputDecoration(
                        hintText: "+880125******",
                        prefixIcon: Icon(Icons.call),
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.02),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: screenHeight * 0.07,
                      width: screenWidth,
                      color: Colors.deepOrangeAccent,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          "Book Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
    );
  }

  Container coverImage(double screenHeight, bool istab) {
    return Container(
      height: (istab) ? screenHeight * 0.7 : screenHeight * 0.35,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: NetworkImage(widget.travelModel.imgUrl!),
        ),
      ),
    );
  }
}
