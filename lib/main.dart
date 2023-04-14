import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List _isHovering = [false, false, false, false];
  final List<String> assets = [
    "images/IEEE_SB_brand_small.png",
    "images/IMG_20220523_162425.jpg",
    "images/unknown.png",
  ];
  final List<String> title = [
    "Activity",
    "Schedule",
    "Lectures",
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 1000),
        child: Container(
          color: Colors.black,
          child: Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[0] = true
                                : _isHovering[0] = false;
                          });
                        },
                        onTap: () {},
                        child: Text(
                          'IEEE TUAT SB',
                          style: TextStyle(
                            color: _isHovering[0]
                                ? Color.fromARGB(255, 9, 67, 97)
                                : Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                          ),
                        ),
                      ),
                      SizedBox(width: screenSize.width / 20),
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[1] = true
                                : _isHovering[1] = false;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Activities',
                              style: TextStyle(
                                color: _isHovering[1]
                                    ? Colors.blue[200]
                                    : Colors.white,
                              ),
                            ),
                            SizedBox(height: 5),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[1],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[2] = true
                                : _isHovering[2] = false;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Events',
                              style: TextStyle(
                                color: _isHovering[2]
                                    ? Colors.blue[200]
                                    : Colors.white,
                              ),
                            ),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[2],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      InkWell(
                        onHover: (value) {
                          setState(() {
                            value
                                ? _isHovering[3] = true
                                : _isHovering[3] = false;
                          });
                        },
                        onTap: () {},
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              'Members',
                              style: TextStyle(
                                color: _isHovering[3]
                                    ? Colors.blue[200]
                                    : Colors.white,
                              ),
                            ),
                            Visibility(
                              maintainAnimation: true,
                              maintainState: true,
                              maintainSize: true,
                              visible: _isHovering[3],
                              child: Container(
                                height: 2,
                                width: 20,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // image below the top bar
              child: SizedBox(
                height: screenSize.height,
                width: screenSize.width,
                child: Image.asset(
                  "images/IMG_20221031_115447_085.jpeg",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: screenSize.height / 10),
            const Text(
              "Welcome to TUAT IEEE SB Home Page",
              style: TextStyle(
                fontSize: 60,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: screenSize.height / 10),
            Row(
              children: [
                SizedBox(
                  height: screenSize.height / 2,
                  width: screenSize.width / 2,
                  child: Column(
                    children: [
                      const Text(
                        "IEEE Student Branch とは",
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'NotoSansJP'),
                      ),
                      SizedBox(height: screenSize.height / 20),
                      Container(
                        padding: const EdgeInsets.all(20),
                        child: const Text(
                          "IEEEの活動組織の一つであり、サークル活動に近い意味合いがあります。学生自ら様々な企画運営ができる他、 他大学のBranchの学生や教職員、社会で活躍している専門家等と会い、学び、また交流することによって、色々なプロジェクト、 会議、見学、旅行等の活動を通して、多くの教育的、技術的、専門的な刺激を得ることができます。",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontFamily: 'NotoSansJP'),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: screenSize.height * 0.45,
                  width: screenSize.width * 0.45,
                  child: Image.asset(
                    "images/IMG_20221031_115447_085.jpeg",
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Card(
                    child: SizedBox(
                      height: screenSize.height / 2,
                      width: screenSize.width / 4,
                      child: Column(
                        children: [
                          Container(
                            height: 2,
                            width: screenSize.width / 4,
                            color: Color.fromARGB(255, 219, 218, 218),
                          ),
                          Text(
                            "ミーティング",
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: screenSize.height / 20),
                          Text(
                            "週に1度のペースで役員を中心にメンバーが集まり活動予定やイベントの計画を行っています。",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'NotoSansJP'),
                          ),
                          Expanded(
                            child: Image.asset(
                              "images/Meeting.png",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ],
                      ),
                    ),
                    color: Colors.white,
                    margin: const EdgeInsets.all(10),
                    elevation: 0, // 影の離れ具合
                    shadowColor: Colors.white,
                  ),
                  Card(
                    child: SizedBox(
                      height: screenSize.height / 2,
                      width: screenSize.width / 4,
                      child: Column(
                        children: [
                          Container(
                            height: 2,
                            width: screenSize.width / 4,
                            color: Color.fromARGB(255, 219, 218, 218),
                          ),
                          Text(
                            "勉強会",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'NotoSansJP'),
                          ),
                          SizedBox(height: screenSize.height / 20),
                          Text(
                            "月に1度のペースでメンバーが各自で興味を持った議題を持ち寄り議論しています。",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'NotoSansJP'),
                          ),
                          Expanded(
                            child: Image.asset("images/benkyokai.jpg"),
                          ),
                        ],
                      ),
                    ),
                    color: Colors.white,
                    margin: const EdgeInsets.all(30),
                    elevation: 0, // 影の離れ具合
                    shadowColor: Colors.white,
                  ),
                  Card(
                    child: SizedBox(
                      height: screenSize.height / 2,
                      width: screenSize.width / 4,
                      child: Column(
                        children: [
                          Container(
                            height: 2,
                            width: screenSize.width / 4,
                            color: Color.fromARGB(255, 219, 218, 218),
                          ),
                          Text(
                            "イベント",
                            style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'NotoSansJP'),
                          ),
                          SizedBox(height: screenSize.height / 20),
                          Text(
                            "不定期でイベントを開催したり、外部のイベントに参加しています。",
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.normal,
                                fontFamily: 'NotoSansJP'),
                          ),
                          Expanded(
                            child: Image.asset("images/group.png"),
                          ),
                        ],
                      ),
                    ),
                    color: Colors.white,
                    margin: const EdgeInsets.all(30),
                    elevation: 0, // 影の離れ具合
                    shadowColor: Colors.white,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
