import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.bottomRight,
        end: Alignment.topLeft,
        colors: [
          getHexColor('#6ce8de'),
          Colors.blue,
        ],
      )),
      child: Padding(
        padding: const EdgeInsets.only(top: 60.0),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 25.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: const Row(
                          children: [
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Rewards",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.chevron_right,
                              color: Colors.white,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: 25.0,
                      ),
                      child: Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Balance",
                                style: TextStyle(color: Colors.white),
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 5),
                                    child: Text(
                                      "RM",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "197.02",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 35,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8, left: 8),
                                    child: Icon(
                                      Icons.add_circle_outline,
                                      color: Colors.white,
                                      size: 25,
                                    ),
                                  )
                                ],
                              ),
                              Text(
                                "Send money to",
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 25.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_none_outlined,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.qr_code_scanner_outlined,
                            color: Colors.white,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white,
                ),
              ],
            ),
            Positioned(
              top: 100,
              left: 25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 13.0),
                    child: Container(
                      height: 110,
                      width: 100,
                      color: Colors.red,
                      child: Text("Invite and get RM5.00"),
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    color: Colors.green,
                    height: 100,
                    width: double.infinity,
                  ),
                  Container(
                    color: Colors.red,
                    height: 200,
                    width: double.infinity,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

getHexColor(hexColor) {
  Color color =
      Color(int.parse(hexColor.substring(1, 7), radix: 16) + 0xFF000000);
  return color;
}
