import 'package:flutter/material.dart';
import 'package:secrete_garden/courses/courses.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Secrete Garden',
      theme: ThemeData(
          primarySwatch: Colors.lightGreen,
          scaffoldBackgroundColor: Colors.white,
      ),

      home: const MyHomePage(title: 'Secret Garden'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Container(
            height: 200,
            width: 200,
            decoration:const  BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/logo.jpg'))),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 3, 20, 3),
             child: const Text(
              "The Secret Garden is a not-for-profit ‘Community Hub’ situated on 15 acres at the Western Sydney University campus in Richmond",
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal,
                  ),
                textAlign: TextAlign.center,

            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(30, 3, 20, 20),
            child: const Text(
              "The focus of our garden is to provide a space that draws community groups," +
                  "organisations and individuals from all walks of life together in a welcoming" +
                  "environment that enables them to flourish and grow",
              style: const TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                  fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
            height: 200,
            width: 200,
            decoration: BoxDecoration(
                image:
                DecorationImage(image: AssetImage('assets/atumfail.jpg'))),
          ),
          //OUR PROJECTS
          Container(
            margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                image:
                DecorationImage(image: AssetImage('assets/ourProject.jpg'))),
            child: TextButton(
              child: Text("Our Projects"),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Courses()),
                );
              },

            ),
          ),
          //courses
          Container(
            margin: EdgeInsets.fromLTRB(0, 3, 0, 3),
            height: 200,
            width: 200,
            decoration: const BoxDecoration(
                image:
                DecorationImage(image: AssetImage('assets/courses.jpg'))),
            child: TextButton(
              child: Text("Courses"),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Courses()),
                );
              },

            ),
          ),
          //CAFE
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
            decoration: BoxDecoration(
                image:
                    DecorationImage(image: AssetImage('assets/ourcafe.jpg'))),
            child: TextButton(
              child: Text("our cafe"),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Courses()),
                );
              },

            ),
          ),
          //VOLUNTERRING
          Container(
            height: 200,
            width: 200,
            margin: EdgeInsets.fromLTRB(0, 4, 0, 4),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/volunterring.jpg'))),
            child: TextButton(
              child: Text("volunteering"),

              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Courses()),
                );
              },

            ),
          ),

          //Details
          Container(
            height: 70,
            alignment: Alignment.center,
            child: ColoredBox(color: Colors.lightGreen,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Opening Hour",
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,

                      ),
                      Text(
                        "Monday: 9am – 3pm",
                        style: const TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,

                      ),
                      Text(
                        "Tuesday – Saturday: 9am – 4pm",
                        style: const TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,

                      )
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Location",
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,

                      ),
                      Text(
                        "Clydesdale Lane, Richmond NSW 2753",
                        style: const TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,

                      ),
                      Text(
                        "On the Western Sydney University campus",
                        style: const TextStyle(
                          fontSize: 8,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                        textAlign: TextAlign.center,

                      )
                    ],
                  ),
                ]
            ),
          ) ,),
          //FInal final
          Container(
            height: 150,
            alignment: Alignment.center,
            child: ColoredBox(color: Colors.lightGreen.shade50,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/abc.png'))),
                          child: TextButton(
                            child: Text("volunteering"),

                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Courses()),
                              );
                            },

                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "North West Disability Services",
                          style: const TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,

                        ),
                                             Text(
                          "Tuesday – Saturday: 9am – 4pm",
                          style: const TextStyle(
                            fontSize: 8,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          ),
                          textAlign: TextAlign.center,

                        )
                      ],
                    ),
                  ]
              ),
            ) ,)
         
        ],
      ),

      drawer: Drawer(
        child: Text('Secrete Garden'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.umbrella), label: 'The Garden'),
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Contact')
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
