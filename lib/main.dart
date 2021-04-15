import 'package:fitness_ui/data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xffeff3ff),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              SizedBox(height: 30),
              Row(
                children: [
                  Text(
                    "Find A",
                    style: GoogleFonts.montserrat(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Workout",
                    style: GoogleFonts.montserrat(
                      fontSize: 30,
                      color: Color(0xff5563de),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Icon(Icons.search_rounded)
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Stack(
                children: [
                  Image.network(
                      'https://i.postimg.cc/bNpcZDW5/Rectangle-2217-1-X.png'),
                  Positioned(
                    top: 30,
                    right: 25,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Legs and \nGlutes Workout',
                          style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w700,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Advanced',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '45 Min',
                          style: GoogleFonts.montserrat(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: EdgeInsets.all(5),
                          child: Center(
                            child: Text(
                              "Start Workout",
                              style: GoogleFonts.montserrat(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(5),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                children: [
                  Text(
                    "Today's Activity",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    "Details",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff5563de),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_sharp,
                    color: Color(0xff5563de),
                  )
                ],
              ),
              Container(
                height: size.height * 0.15,
                child: ListView.builder(
                  itemCount: ta.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => taActivityButton(index)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Daily Activity",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  Expanded(child: SizedBox()),
                  Text(
                    "Details",
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff5563de),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_sharp,
                    color: Color(0xff5563de),
                  )
                ],
              ),
              Container(
                height: size.height * 0.2,
                child: ListView.builder(
                  itemCount: da.length,
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: ((context, index) => daActivityButton(index)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget daActivityButton(index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      width: 90,
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              da[index].day,
              style: GoogleFonts.montserrat(
                color: Colors.grey.shade600,
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              da[index].date,
              style: GoogleFonts.montserrat(
                color: Color(0xff5563de),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
      decoration: BoxDecoration(
          color: Color(0xffeff3ff),
          borderRadius: BorderRadius.circular(20),
          boxShadow: genShadow),
    );
  }

  Widget taActivityButton(index) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              ta[index].imgUrl,
              color: Color(0xff5563de),
            ),
            SizedBox(width: 10),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  ta[index].param,
                  style: GoogleFonts.montserrat(
                    color: Colors.grey.shade600,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  ta[index].value,
                  style: GoogleFonts.montserrat(
                    color: Color(0xff5563de),
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      width: 150,
      decoration: BoxDecoration(
          color: Color(0xffeff3ff),
          borderRadius: BorderRadius.all(Radius.circular(20)),
          boxShadow: genShadow),
    );
  }
}
