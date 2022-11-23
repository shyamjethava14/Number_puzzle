import 'dart:math';

import 'package:flutter/material.dart';

class puzzle extends StatefulWidget {
  const puzzle({Key? key}) : super(key: key);

  @override
  State<puzzle> createState() => _puzzleState();
}

class _puzzleState extends State<puzzle> {
  List<String> l = [];
  List<Color> c = List.filled(9, Colors.white70);
  String r = "Plz Start The Game.‍‍👨‍💻";
  bool t = false;
  int i = 1;

  @override
  void initState() {
    ran();
  }

  void ran() {
    List<int> a = [];
    for (int i = 0; i < 9;) {
      int min = 0, max = 8;
      int num = min + Random().nextInt(max - min + 1);
      if (!a.contains(num)) {
        a.add(num);
        i++;
      }
    }
    for (int i = 0; i < 9; i++) {
      if (a[i] == 0) {
        l.add("");
      } else {
        l.add("${a[i]}");
      }
    }
  }

  Widget cont(int j) {
    return Container(
      decoration: BoxDecoration(

        color: Colors.indigo,
        borderRadius: BorderRadius.circular(5),
      ),
      margin: EdgeInsets.all(10),
      alignment: Alignment.center,
      child: Text("${l[j]}",  style: TextStyle(fontSize: 30, color: c[j])),
    );
  }

  abc() {
    if (i == 1) {
      r = "Game Is Running. 🤹‍🤹‍";
    }
  }

  void win() {
    if (l[0] == "1" &&
        l[1] == "2" &&
        l[2] == "3" &&
        l[3] == "4" &&
        l[4] == "5" &&
        l[5] == "6" &&
        l[6] == "7" &&
        l[7] == "8" &&
        l[8] == "") {
      r = "you are winner.👍";
      t = true;
      color(0, 1, 2, 3, 4, 5, 6, 7, "${r}");
    }
  }

  color(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8,
      String a9) {
    c[a1] = Colors.black38;
    c[a2] = Colors.black38;
    c[a3] = Colors.black38;
    c[a4] = Colors.black38;
    c[a5] = Colors.black38;
    c[a6] = Colors.black38;
    c[a7] = Colors.black38;
    c[a8] = Colors.black38;
    // r= Colors.black38;
  }

  void reset() {
    l.removeRange(0, 9);
    ran();
    // l.shuffle();
    c = List.filled(9, Colors.white70);
    r = "Plz Start The Game.👨‍💻";
    t = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "puzzle",
          style: TextStyle(fontSize: 20, color: Colors.white70),
        ),
        centerTitle: true,
      ),
      body: Column(children: [
        Expanded(
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                      onTap: t == false
                          ? () {
                        abc();
                        if (l[1] == "") {
                          l[1] = l[0];
                          l[0] = "";
                        } else if (l[3] == "") {
                          l[3] = l[0];
                          l[0] = "";
                        }
                        win();
                        setState(() {});
                      }
                          : null,
                      child: cont(0),
                    )),
                Expanded(
                    child: InkWell(
                      onTap: t == false
                          ? () {
                        abc();
                        if (l[0] == "") {
                          l[0] = l[1];
                          l[1] = "";
                        } else if (l[2] == "") {
                          l[2] = l[1];
                          l[1] = "";
                        } else if (l[4] == "") {
                          l[4] = l[1];
                          l[1] = "";
                        }
                        win();
                        setState(() {});
                      }
                          : null,
                      child: cont(1),
                    )),
                Expanded(
                    child: InkWell(
                      onTap: t == false
                          ? () {
                        abc();
                        if (l[1] == "") {
                          l[1] = l[2];
                          l[2] = "";
                        } else if (l[5] == "") {
                          l[5] = l[2];
                          l[2] = "";
                        }
                        win();
                        setState(() {});
                      }
                          : null,
                      child: cont(2),
                    )),
              ],
            )),
        Expanded(
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                      onTap: t == false
                          ? () {
                        abc();
                        if (l[0] == "") {
                          l[0] = l[3];
                          l[3] = "";
                        } else if (l[4] == "") {
                          l[4] = l[3];
                          l[3] = "";
                        } else if (l[6] == "") {
                          l[6] = l[3];
                          l[3] = "";
                        }
                        win();
                        setState(() {});
                      }
                          : null,
                      child: cont(3),
                    )),
                Expanded(
                    child: InkWell(
                      onTap: t == false
                          ? () {
                        abc();
                        if (l[1] == "") {
                          l[1] = l[4];
                          l[4] = "";
                        } else if (l[3] == "") {
                          l[3] = l[4];
                          l[4] = "";
                        } else if (l[5] == "") {
                          l[5] = l[4];
                          l[4] = "";
                        } else if (l[7] == "") {
                          l[7] = l[4];
                          l[4] = "";
                        }
                        win();
                        setState(() {});
                      }
                          : null,
                      child: cont(4),
                    )),
                Expanded(
                    child: InkWell(
                      onTap: t == false
                          ? () {
                        abc();
                        if (l[2] == "") {
                          l[2] = l[5];
                          l[5] = "";
                        } else if (l[4] == "") {
                          l[4] = l[5];
                          l[5] = "";
                        } else if (l[8] == "") {
                          l[8] = l[5];
                          l[5] = "";
                        }
                        win();
                        setState(() {});
                      }
                          : null,
                      child: cont(5),
                    )),
              ],
            )),
        Expanded(
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                      onTap: t == false
                          ? () {
                        abc();
                        if (l[3] == "") {
                          l[3] = l[6];
                          l[6] = "";
                        } else if (l[7] == "") {
                          l[7] = l[6];
                          l[6] = "";
                        }
                        win();
                        setState(() {});
                      }
                          : null,
                      child: cont(6),
                    )),
                Expanded(
                    child: InkWell(
                      onTap: t == false
                          ? () {
                        abc();
                        if (l[4] == "") {
                          l[4] = l[7];
                          l[7] = "";
                        } else if (l[6] == "") {
                          l[6] = l[7];
                          l[7] = "";
                        } else if (l[8] == "") {
                          l[8] = l[7];
                          l[7] = "";
                        }
                        win();
                        setState(() {});
                      }
                          : null,
                      child: cont(7),
                    )),
                Expanded(
                    child: InkWell(
                      onTap: t == false
                          ? () {
                        abc();
                        if (l[5] == "") {
                          l[5] = l[8];
                          l[8] = "";
                        } else if (l[7] == "") {
                          l[7] = l[8];
                          l[8] = "";
                        }
                        win();
                        setState(() {});
                      }
                          : null,
                      child: cont(8),
                    )),
              ],
            )),
        Expanded(
          child: Text(
            r,
            style: TextStyle(fontSize: 25, color: Colors.white70, height: 3),
          ),
        ),
        Expanded(
            child: Row(
              children: [
                Expanded(
                    child: InkWell(
                      onTap: () {
                        reset();
                        setState(() {});
                      },
                      child: Container(
                          decoration: BoxDecoration(
                            color: Colors.indigo,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: EdgeInsets.all(30),
                          alignment: Alignment.center,
                          child: Text(
                            "Reset",
                            style: TextStyle(fontSize: 25, color: Colors.white70),
                          )),
                    )),
              ],
            ))
      ]),
      backgroundColor: Colors.black,
    );
  }
}
