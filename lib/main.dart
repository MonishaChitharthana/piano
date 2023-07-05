import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        systemNavigationBarColor:
            Colors.grey[400], // Set the color of the status bar
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Piano(),
    );
  }
}

class Piano extends StatefulWidget {
  const Piano({Key? key}) : super(key: key);

  @override
  State<Piano> createState() => _PianoState();
}

class _PianoState extends State<Piano> {
  var player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Container(
        padding: EdgeInsets.only(top: 100, bottom: 60, right: 20, left: 20),
        child: Center(
          child: Container(
            padding: EdgeInsets.only(right: 30, left: 5),
            decoration: BoxDecoration(
                color: Colors.black, borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(clipBehavior: Clip.none, children: [
                  GestureDetector(
                    onTap: () {
                      player
                          .play(AssetSource('piano_notes/piano-c_C_major.wav'));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          color: Colors.white,
                        ),
                        height: 80,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ]),
                Stack(clipBehavior: Clip.none, children: [
                  GestureDetector(
                    onTap: () {
                      player
                          .play(AssetSource("piano_notes/piano-d_D_major.wav"));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          color: Colors.white,
                        ),
                        height: 80,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -25,
                    left: 77,
                    //not
                    child: GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource("piano_notes/piano-c_C1_major.wav"));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          border: Border.all(color: Colors.black, width: 8),
                        ),
                        child: Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                offset: Offset(-5, 2),
                                blurRadius: 10,
                              ),
                            ],
                            border: Border.all(color: Colors.white, width: 0),
                            color: Colors.black,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.black,
                                Colors.white,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                Stack(clipBehavior: Clip.none, children: [
                  GestureDetector(
                    onTap: () {
                      player
                          .play(AssetSource("piano_notes/piano-e_E_major.wav"));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          color: Colors.white,
                        ),
                        height: 80,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -25,
                    left: 77,
                    //not
                    child: GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource("piano_notes/piano-eb_D1_major.wav"));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          border: Border.all(color: Colors.black, width: 8),
                        ),
                        child: Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                offset: Offset(-5, 2),
                                blurRadius: 10,
                              ),
                            ],
                            border: Border.all(color: Colors.white, width: 0),
                            color: Colors.black,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.black,
                                Colors.white,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                Stack(clipBehavior: Clip.none, children: [
                  GestureDetector(
                    onTap: () {
                      player
                          .play(AssetSource("piano_notes/piano-f_F_major.wav"));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          color: Colors.white,
                        ),
                        height: 80,
                        width: double.infinity,
                      ),
                    ),
                  ),
                ]),
                Stack(clipBehavior: Clip.none, children: [
                  GestureDetector(
                    onTap: () {
                      player
                          .play(AssetSource("piano_notes/piano-g_G_major.wav"));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          color: Colors.white,
                        ),
                        height: 80,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -25,
                    left: 77,
                    child: GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource("piano_notes/piano-f_F1_major.wav"));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          border: Border.all(color: Colors.black, width: 8),
                        ),
                        child: Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                offset: Offset(-5, 2),
                                blurRadius: 10,
                              ),
                            ],
                            border: Border.all(color: Colors.white, width: 0),
                            color: Colors.black,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.black,
                                Colors.white,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                Stack(clipBehavior: Clip.none, children: [
                  GestureDetector(
                    onTap: () {
                      player
                          .play(AssetSource("piano_notes/piano-a_A_major.wav"));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          color: Colors.white,
                        ),
                        height: 80,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -25,
                    left: 77,
                    child: GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource("piano_notes/piano-g_G1_major.wav"));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          border: Border.all(color: Colors.black, width: 8),
                        ),
                        child: Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                offset: Offset(-5, 2),
                                blurRadius: 10,
                              ),
                            ],
                            border: Border.all(color: Colors.white, width: 0),
                            color: Colors.black,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.black,
                                Colors.white,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
                Stack(clipBehavior: Clip.none, children: [
                  GestureDetector(
                    onTap: () {
                      player
                          .play(AssetSource("piano_notes/piano-b_B_major.wav"));
                    },
                    child: Padding(
                      padding: EdgeInsets.only(top: 2, bottom: 2),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          color: Colors.white,
                        ),
                        height: 80,
                        width: double.infinity,
                      ),
                    ),
                  ),
                  Positioned(
                    top: -25,
                    left: 77,
                    child: GestureDetector(
                      onTap: () {
                        player.play(
                            AssetSource("piano_notes/piano-bb_A1_major.wav"));
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            bottomLeft: Radius.circular(10.0),
                          ),
                          border: Border.all(color: Colors.black, width: 8),
                        ),
                        child: Container(
                          width: 200,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.white.withOpacity(0.5),
                                offset: Offset(-5, 2),
                                blurRadius: 10,
                              ),
                            ],
                            border: Border.all(color: Colors.white, width: 0),
                            color: Colors.black,
                            gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomRight,
                              colors: [
                                Colors.black,
                                Colors.white,
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
